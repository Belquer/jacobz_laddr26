#!/usr/bin/env python3
# Shining Mask — persistent brightness server (bleak + python-osc), Py 3.14-safe
# Send OSC: /brightness <0..255>  to udp://127.0.0.1:9000

import asyncio, argparse, signal
from typing import Optional
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
        self.last_value: Optional[int] = None

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
                self.client = BleakClient(self.address)
                print(f"🔗 Connecting to {self.address} …")
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

            if self.last_value is not None:
                await self.set_brightness(self.last_value, announce=False)

    async def ensure(self):
        if not (self.client and self.client.is_connected):
            await self.connect()

    async def set_brightness(self, value: int, announce: bool = True):
        await self.ensure()
        value = max(0, min(255, int(value)))
        if announce:
            print(f"→ LIGHT {value}")
        pkt = enc_cmd("LIGHT", bytes([value]))
        await self.client.write_gatt_char(UUID_CMD, pkt, response=True)
        self.last_value = value

async def osc_server_task(ctrl: MaskController, host: str, port: int, initial: Optional[int]):
    """
    Build OSC server on the *running* loop (Py 3.14), and coalesce slider spam:
    - Handler is sync; just stores latest value and sets an Event.
    - Worker sends at most ~33 Hz for smooth UI without BLE spam.
    """
    latest_val: Optional[int] = None
    ping = asyncio.Event()

    def on_brightness(_addr, *args):
        nonlocal latest_val
        if not args: return
        try:
            v = int(args[0])
        except Exception:
            return
        v = max(0, min(255, v))
        latest_val = v
        ping.set()

    disp = Dispatcher()
    disp.map("/brightness", on_brightness)
    disp.map("/light",      on_brightness)

    loop = asyncio.get_running_loop()
    server = AsyncIOOSCUDPServer((host, port), disp, loop)
    transport, _ = await server.create_serve_endpoint()
    print(f"🎛️  OSC ready on udp://{host}:{port}  (send /brightness <0..255>)")

    # optional initial value
    if initial is not None:
        await ctrl.set_brightness(initial)

    try:
        while True:
            await ping.wait()
            ping.clear()
            val = latest_val
            if val is not None:
                try:
                    await ctrl.set_brightness(val)
                except Exception as e:
                    print("⚠️ write error:", e)
            await asyncio.sleep(0.03)  # ~33 Hz max update rate
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
    # try once; background loop will keep it alive anyway
    try:
        await ctrl.connect()
    except Exception:
        print("⏳ Mask not found yet; will keep trying…")

    osc = asyncio.create_task(osc_server_task(ctrl, args.host, args.port, args.initial))
    reco = asyncio.create_task(autoreconnect_task(ctrl))

    # Clean shutdown on SIGINT/SIGTERM
    loop = asyncio.get_running_loop()
    stop = asyncio.Event()
    for s in (signal.SIGINT, signal.SIGTERM):
        try:
            loop.add_signal_handler(s, stop.set)
        except NotImplementedError:
            pass
    await stop.wait()

    for t in (osc, reco):
        t.cancel()
    await asyncio.gather(*[t for t in (osc, reco)], return_exceptions=True)

def main():
    ap = argparse.ArgumentParser(description="Shining Mask brightness OSC server")
    ap.add_argument("--name-hint", default="MASK")
    ap.add_argument("--address", help="Optional BLE MAC/UUID")
    ap.add_argument("--host", default="127.0.0.1")
    ap.add_argument("--port", type=int, default=9000)
    ap.add_argument("--initial", type=int, help="Initial brightness 0..255")
    args = ap.parse_args()
    asyncio.run(main_async(args))

if __name__ == "__main__":
    main()