#!/usr/bin/env python3
# Shining Mask — OSC control (brightness, image, anim) — macOS / Python 3.14
# OSC (udp://127.0.0.1:9000):
#   /brightness <0..255>
#   /image <int>
#   /anim <int>

import asyncio, argparse, signal
from typing import Optional, Deque, Tuple
from collections import deque
from bleak import BleakScanner, BleakClient
from Crypto.Cipher import AES
from pythonosc.osc_server import AsyncIOOSCUDPServer
from pythonosc.dispatcher import Dispatcher

UUID_CMD   = "d44bc439-abfd-45a2-b575-925416129600"
UUID_NTFY  = "d44bc439-abfd-45a2-b575-925416129601"
AES_KEY    = bytes.fromhex("32672f7974ad43451d9c6c894a0e8764")

def enc_cmd(cmd_ascii: str, *args: bytes) -> bytes:
    content = cmd_ascii.encode("ascii") + b"".join(args)
    if len(content) > 15:
        raise ValueError("Command too long for one 16B block")
    frame = bytes([len(content)]) + content
    return AES.new(AES_KEY, AES.MODE_ECB).encrypt(frame.ljust(16, b"\x00"))

class MaskController:
    def __init__(self, name_hint: str, address: Optional[str] = None):
        self.name_hint = name_hint
        self.address   = address
        self.client: Optional[BleakClient] = None
        self._lock = asyncio.Lock()
        self.last_brightness: Optional[int] = None

    async def _scan(self):
        devs = await BleakScanner.discover(timeout=5.0)
        for d in devs:
            if self.address and d.address and d.address.lower() == self.address.lower():
                return d
            if self.name_hint and (d.name or "").lower().find(self.name_hint.lower()) != -1:
                return d
        return None

    async def connect(self):
        async with self._lock:
            if self.client and self.client.is_connected:
                return
            if self.client:
                try: await self.client.__aexit__(None,None,None)
                except Exception: pass
                self.client = None

            if self.address:
                print(f"🔗 Connecting to {self.address} …")
                self.client = BleakClient(self.address)
            else:
                dev = await self._scan()
                if not dev:
                    raise ConnectionError("Device not found")
                print(f"🔗 Connecting to {dev.name} ({dev.address})")
                self.client = BleakClient(dev)

            await self.client.__aenter__()
            print("✅ Connected:", self.client.is_connected)
            try:
                await self.client.start_notify(UUID_NTFY, lambda *_: None)
            except Exception:
                pass

            if self.last_brightness is not None:
                await self.set_brightness(self.last_brightness, announce=False)

    async def ensure(self):
        if not (self.client and self.client.is_connected):
            await self.connect()

    async def _send(self, cmd: str, *args: bytes, announce: Optional[str] = None):
        await self.ensure()
        if announce:
            print(announce)
        pkt = enc_cmd(cmd, *args)
        await self.client.write_gatt_char(UUID_CMD, pkt, response=True)

    async def set_brightness(self, value: int, announce: bool = True):
        v = max(0, min(255, int(value)))
        await self._send("LIGHT", bytes([v]), announce=f"→ LIGHT {v}" if announce else None)
        self.last_brightness = v

    async def set_image(self, idx: int):
        v = max(0, min(255, int(idx)))
        await self._send("IMAG", bytes([v]), announce=f"→ IMAG {v}")

    async def set_anim(self, idx: int):
        v = max(0, min(255, int(idx)))
        await self._send("ANIM", bytes([v]), announce=f"→ ANIM {v}")

async def osc_server_task(ctrl: MaskController, host: str, port: int, initial: Optional[int]):
    # brightness: coalesced ~33 Hz; image/anim: immediate FIFO
    latest_bright: Optional[int] = None
    bright_ping = asyncio.Event()
    cmd_q: Deque[Tuple[str,int]] = deque()

    def h_brightness(_addr, *args):
        nonlocal latest_bright
        if not args: return
        try: v = int(args[0])
        except Exception: return
        latest_bright = max(0, min(255, v))
        bright_ping.set()

    def h_image(_addr, *args):
        if not args: return
        try: v = int(args[0])
        except Exception: return
        cmd_q.append(("image", v))

    def h_anim(_addr, *args):
        if not args: return
        try: v = int(args[0])
        except Exception: return
        cmd_q.append(("anim", v))

    disp = Dispatcher()
    disp.map("/brightness", h_brightness)
    disp.map("/light",      h_brightness)  # alias
    disp.map("/image",      h_image)
    disp.map("/anim",       h_anim)

    server = AsyncIOOSCUDPServer((host, port), disp, asyncio.get_running_loop())
    transport, _ = await server.create_serve_endpoint()
    print(f"🎛️  OSC ready on udp://{host}:{port}  (/brightness,/image,/anim)")

    if initial is not None:
        await ctrl.set_brightness(initial)

    try:
        while True:
            # run queued commands
            while cmd_q:
                cmd, val = cmd_q.popleft()
                try:
                    if cmd == "image": await ctrl.set_image(val)
                    elif cmd == "anim": await ctrl.set_anim(val)
                except Exception as e:
                    print("⚠️ command error:", e)

            # coalesced brightness
            if bright_ping.is_set():
                bright_ping.clear()
                if latest_bright is not None:
                    try:
                        await ctrl.set_brightness(latest_bright)
                    except Exception as e:
                        print("⚠️ brightness error:", e)

            await asyncio.sleep(0.03)  # ~33 Hz
    finally:
        transport.close()

async def autoreconnect_task(ctrl: MaskController):
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
        print("⏳ Mask not found yet; will keep trying in background…")

    osc = asyncio.create_task(osc_server_task(ctrl, args.host, args.port, args.initial))
    reco = asyncio.create_task(autoreconnect_task(ctrl))

    stop = asyncio.Event()
    loop = asyncio.get_running_loop()
    for s in (signal.SIGINT, signal.SIGTERM):
        try: loop.add_signal_handler(s, stop.set)
        except NotImplementedError: pass
    await stop.wait()

    for t in (osc, reco): t.cancel()
    await asyncio.gather(osc, reco, return_exceptions=True)

def main():
    ap = argparse.ArgumentParser(description="Shining Mask OSC control (brightness, image, anim)")
    ap.add_argument("--name-hint", default="MASK")
    ap.add_argument("--address", help="Optional BLE MAC/UUID")
    ap.add_argument("--host", default="127.0.0.1")
    ap.add_argument("--port", type=int, default=9000)
    ap.add_argument("--initial", type=int, help="Initial brightness 0..255")
    args = ap.parse_args()
    asyncio.run(main_async(args))

if __name__ == "__main__":
    main()