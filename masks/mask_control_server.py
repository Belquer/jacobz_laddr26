#!/usr/bin/env python3
# Shining Mask — OSC control server (macOS / Python 3.10+)
# Controls:
#   /brightness <0..255>
#   /image <index>      (built-in stills)
#   /anim  <index>      (built-in animations)
#   /diy   <index>      (DIY gallery item)
#
# Run:
#   python3 mask_control_server.py --name-hint MASK --initial 120

import asyncio
import argparse
from typing import Optional, Deque, Tuple
from collections import deque

from bleak import BleakScanner, BleakClient
from Crypto.Cipher import AES

from pythonosc.osc_server import AsyncIOOSCUDPServer
from pythonosc.dispatcher import Dispatcher

# ---- Device constants (these are the ones you've been using successfully) ----
UUID_CMD   = "d44bc439-abfd-45a2-b575-925416129600"
UUID_NTFY  = "d44bc439-abfd-45a2-b575-925416129601"
AES_KEY    = bytes.fromhex("32672f7974ad43451d9c6c894a0e8764")  # 128-bit

# ---- AES helpers ----
def enc_cmd(cmd_ascii: str, *args: bytes) -> bytes:
    """
    Build + encrypt a single 16-byte command frame:
    [len][ASCII cmd + args...] padded with zeros to 16, AES-128-ECB
    """
    payload = cmd_ascii.encode("ascii") + b"".join(args)
    if len(payload) > 15:
        raise ValueError("Command too long for one frame")
    frame = bytes([len(payload)]) + payload
    return AES.new(AES_KEY, AES.MODE_ECB).encrypt(frame.ljust(16, b"\x00"))

# ---- BLE controller ----
class MaskController:
    def __init__(self, name_hint: str, address: Optional[str] = None):
        self.name_hint = name_hint
        self.address   = address
        self.client: Optional[BleakClient] = None
        self._lock = asyncio.Lock()
        self.last_brightness: Optional[int] = None

    async def _scan(self):
        devs = await BleakScanner.discover(timeout=5.0)
        target = None
        for d in devs:
            n = d.name or ""
            print(f"{d.address} : {n}")
            if self.address and d.address and d.address.lower() == self.address.lower():
                target = d
            elif self.name_hint and self.name_hint.lower() in n.lower():
                target = d
        return target

    async def connect(self):
        async with self._lock:
            if self.client and self.client.is_connected:
                return
            if self.client:
                try:
                    await self.client.__aexit__(None, None, None)
                except Exception:
                    pass
                self.client = None

            dev = None
            if self.address:
                print(f"🔗 Connecting to {self.address} …")
                self.client = BleakClient(self.address)
            else:
                print(f"🔍 Scanning for device with hint '{self.name_hint}'…")
                dev = await self._scan()
                if not dev:
                    raise ConnectionError("Device not found")
                print(f"🔗 Connecting to: {dev.name} ({dev.address})")
                self.client = BleakClient(dev)

            await self.client.__aenter__()
            print("✅ Connected:", self.client.is_connected)
            try:
                # Notifications optional; helpful for acks/logging if needed
                await self.client.start_notify(UUID_NTFY, lambda *_: None)
            except Exception:
                pass

            # Restore brightness after reconnect
            if self.last_brightness is not None:
                await self.set_brightness(self.last_brightness, announce=False)

    async def ensure(self):
        if not (self.client and self.client.is_connected):
            await self.connect()

    async def send(self, cmd: str, *args: bytes, log: Optional[str] = None):
        await self.ensure()
        if log:
            print(log)
        await self.client.write_gatt_char(UUID_CMD, enc_cmd(cmd, *args), response=True)

    # ---- Controls ----
    async def set_brightness(self, value: int, announce: bool = True):
        v = max(0, min(255, int(value)))
        await self.send("LIGHT", bytes([v]), log=f"→ LIGHT {v}" if announce else None)
        self.last_brightness = v

    async def set_image(self, idx: int):
        v = max(0, min(255, int(idx)))
        await self.send("IMAG", bytes([v]), log=f"→ IMAG {v}")

    async def set_anim(self, idx: int):
        v = max(0, min(255, int(idx)))
        await self.send("ANIM", bytes([v]), log=f"→ ANIM {v}")

    async def set_diy(self, idx: int):
        """
        Switch to DIY gallery item 'idx' (pre-uploaded in the app).
        DIY uses PLAY with a list: [count, i0, i1, ...]. For single item: count=1.
        """
        v = max(0, min(255, int(idx)))
        payload = bytes([1, v])
        await self.send("PLAY", payload, log=f"→ DIY {v}")

# ---- OSC server / event loop ----
async def osc_server(ctrl: MaskController, host: str, port: int, initial: Optional[int]):
    latest_bright: Optional[int] = None
    bright_ping = asyncio.Event()
    cmd_q: Deque[Tuple[str, Tuple[int, ...]]] = deque()

    # handlers
    def h_brightness(_addr, *args):
        nonlocal latest_bright
        if not args:
            return
        try:
            v = int(args[0])
        except Exception:
            return
        latest_bright = max(0, min(255, v))
        bright_ping.set()

    def one_int(queue_name, *args):
        if not args:
            return
        try:
            v = int(args[0])
        except Exception:
            return
        cmd_q.append((queue_name, (v,)))

    # map OSC
    disp = Dispatcher()
    disp.map("/brightness", h_brightness)
    disp.map("/light",      h_brightness)

    disp.map("/image",  lambda a,*x: one_int("image", *x))
    disp.map("/anim",   lambda a,*x: one_int("anim", *x))
    disp.map("/diy",    lambda a,*x: one_int("diy", *x))

    srv = AsyncIOOSCUDPServer((host, port), disp, asyncio.get_running_loop())
    transport, _ = await srv.create_serve_endpoint()
    print(f"🎛️  OSC ready on udp://{host}:{port}  (/brightness,/image,/anim,/diy)")

    if initial is not None:
        await ctrl.set_brightness(initial)

    try:
        while True:
            # coalesced brightness (smooth slider without BLE spam)
            if bright_ping.is_set():
                bright_ping.clear()
                if latest_bright is not None:
                    try:
                        await ctrl.set_brightness(latest_bright)
                    except Exception as e:
                        print("⚠️ brightness error:", e)

            # run queued commands
            while cmd_q:
                cmd, args = cmd_q.popleft()
                try:
                    if cmd == "image":
                        await ctrl.set_image(*args)
                    elif cmd == "anim":
                        await ctrl.set_anim(*args)
                    elif cmd == "diy":
                        await ctrl.set_diy(*args)
                except Exception as e:
                    print("⚠️ command error:", e)

            await asyncio.sleep(0.03)
    finally:
        transport.close()

async def autoreconnect(ctrl: MaskController):
    # keep connection healthy / auto-reconnect
    while True:
        try:
            await ctrl.ensure()
        except Exception:
            await asyncio.sleep(2.0)
        await asyncio.sleep(1.0)

async def main_async(args):
    ctrl = MaskController(args.name_hint, args.address)
    try:
        await ctrl.connect()
    except Exception:
        print("⏳ Mask not found yet; will keep trying…")
    await asyncio.gather(
        osc_server(ctrl, args.host, args.port, args.initial),
        autoreconnect(ctrl),
    )

def main():
    ap = argparse.ArgumentParser(description="Shining Mask OSC control")
    ap.add_argument("--name-hint", default="MASK")
    ap.add_argument("--address")
    ap.add_argument("--host", default="127.0.0.1")
    ap.add_argument("--port", type=int, default=9000)
    ap.add_argument("--initial", type=int)
    args = ap.parse_args()
    asyncio.run(main_async(args))

if __name__ == "__main__":
    main()
