#!/usr/bin/env python3
"""
MASK BRIDGE v7 — BLE <-> OSC (macOS)
------------------------------------
✓ AA55 (AE01) working for brightness, color, text.
✓ AES (D44B) working for brightness (LIGHT) and animation switching (SCEN).
✓ Fixed OSC argument errors and BLE lag.
✓ Clean console logs.

OSC Commands:
  /mask/brightness <0..100>         Brightness
  /mask/anim <index>                Animation (AES: SCEN)
  /mask/color <r g b>               Color (AA55 only)
  /mask/text <string>               Text (AA55 only)
  /mask/char <0|1>                  0 = AES (PRIMARY), 1 = AA55 (FALLBACK)
  /mask/response <yes|no>           Write-with-response mode
  /mask/info                        Print info
  /mask/rawhex "<AA55 ...>"         Send manual hex
  /mask/rawbytes <b0> <b1> ...      Send raw bytes
"""

import os, sys, asyncio, threading
from typing import Optional, Sequence
from bleak import BleakClient, BleakScanner
from pythonosc import dispatcher, osc_server
from Crypto.Cipher import AES

# === Device Info ===
MASK_NAME    = os.environ.get("MASK_NAME", "MASK-E4B434")
MASK_ADDRESS = os.environ.get("MASK_MAC",  "E3A6086B-E8F1-3774-C548-A25330A61C56")

PRIMARY_CHAR_UUID    = os.environ.get("MASK_CHAR_PRIMARY",  "D44BC439-ABFD-45A2-B575-925416129600")  # AES
FALLBACK_CHAR_UUID   = os.environ.get("MASK_CHAR_FALLBACK", "AE01")                                   # AA55
NOTIFY_PRIMARY_UUID  = "D44BC439-ABFD-45A2-B575-925416129601"
NOTIFY_FALLBACK_UUID = "AE02"

AES_KEY = bytes([0x32,0x67,0x2f,0x79,0x74,0xad,0x43,0x45,0x1d,0x9c,0x6c,0x89,0x4a,0x0e,0x87,0x64])

DEFAULT_CHAR_SELECT   = 0   # 0 = AES, 1 = AA55
DEFAULT_RESPONSE_MODE = "yes"
OSC_PORT              = int(os.environ.get("MASK_OSC_PORT", "9001"))

# === Helpers ===
def hexdump(b: bytes) -> str:
    return " ".join(f"{x:02X}" for x in b)

def build_aa55(cmd: int, data: bytes) -> bytes:
    ln  = len(data) + 2
    chk = (ln + cmd + sum(data)) & 0xFF
    return bytes([0xAA, 0x55, ln, cmd]) + data + bytes([chk])

def build_aes(cmd_ascii: str, args: bytes = b"") -> bytes:
    body  = cmd_ascii.encode("ascii") + args
    total = bytes([len(body)]) + body
    if len(total) % 16 != 0:
        total += bytes(16 - (len(total) % 16))
    cipher = AES.new(AES_KEY, AES.MODE_ECB)
    return b"".join(cipher.encrypt(total[i:i+16]) for i in range(0, len(total), 16))

# === Background Event Loop ===
class LoopThread:
    def __init__(self):
        self.loop = asyncio.new_event_loop()
        self.thread = threading.Thread(target=self.loop.run_forever, daemon=True)
        self.thread.start()
    def run(self, coro):
        return asyncio.run_coroutine_threadsafe(coro, self.loop)
    def stop(self):
        self.loop.call_soon_threadsafe(self.loop.stop)
        self.thread.join(timeout=1)

loop_thread = LoopThread()

# === BLE Bridge ===
class MaskBridge:
    def __init__(self):
        self.mac: str = MASK_ADDRESS
        self.name_hint: str = MASK_NAME
        self.char_select: int = DEFAULT_CHAR_SELECT
        self.response_mode: str = DEFAULT_RESPONSE_MODE
        self._client: Optional[BleakClient] = None
        self._lock = asyncio.Lock()

    def write_uuid(self) -> str:
        return PRIMARY_CHAR_UUID if self.char_select == 0 else FALLBACK_CHAR_UUID
    def notify_uuid(self) -> str:
        return NOTIFY_PRIMARY_UUID if self.char_select == 0 else NOTIFY_FALLBACK_UUID

    async def ensure_address(self):
        if self.mac:
            return
        devs = await BleakScanner.discover(timeout=6.0)
        for d in devs:
            if d.name and (d.name == self.name_hint or d.name.startswith(self.name_hint)):
                self.mac = d.address
                print(f"[DISCOVER] {d.name} @ {self.mac}")
                return
        raise RuntimeError(f"Device '{self.name_hint}' not found")

    async def _ensure_client(self):
        await self.ensure_address()
        if self._client and self._client.is_connected:
            return
        self._client = BleakClient(self.mac, timeout=12.0)

        def _on_notify(_h, data: bytes):
            print(f"[BLE NOTIFY] {hexdump(data)}")

        await self._client.connect()
        try:
            await self._client.start_notify(self.notify_uuid(), _on_notify)
            print(f"[BLE] notify enabled on {self.notify_uuid()}")
        except Exception:
            pass
        print(f"[BLE] connected -> write char {self.write_uuid()}")

    async def _write(self, payload: bytes):
        async with self._lock:
            await self._ensure_client()
            want_resp = (self.char_select == 0 and self.response_mode == "yes")
            print(f"[BLE] -> {self.write_uuid()} ({len(payload)} bytes) resp={'yes' if want_resp else 'no'} :: {hexdump(payload)}")
            await self._client.write_gatt_char(self.write_uuid(), payload, response=want_resp)
            await asyncio.sleep(0.05)  # prevent laggy BLE flood

    # === Commands ===
    async def cmd_brightness(self, v: int):
        v = max(0, min(int(v), 100))
        if self.char_select == 0:
            pkt = build_aes("LIGHT", bytes([v]))   # AES brightness
            print(f"[CMD] AES LIGHT {v}")
        else:
            pkt = build_aa55(0x04, bytes([v]))     # AA55 brightness
            print(f"[CMD] AA55 Brightness {v}")
        await self._write(pkt)

    async def cmd_anim(self, idx: int):
        i = max(0, min(int(idx), 255))
        if self.char_select == 0:
            pkt = build_aes("SCEN", bytes([i]))    # AES animation/scene
            print(f"[CMD] AES SCEN {i}")
        else:
            pkt = build_aa55(0x02, bytes([i]))     # AA55 pattern
            print(f"[CMD] AA55 Pattern {i}")
        await self._write(pkt)

    async def cmd_color(self, r: int, g: int, b: int):
        r,g,b = [max(0, min(int(x),255)) for x in (r,g,b)]
        if self.char_select == 1:
            pkt = build_aa55(0x06, bytes([r,g,b]))
            print(f"[CMD] AA55 Color {r} {g} {b}")
            await self._write(pkt)
        else:
            print("[CMD] AES Color not supported yet (no opcode). Use AA55 mode.")

    async def cmd_text(self, text: str):
        data = text.encode("utf-8")[:20]
        if self.char_select == 1:
            pkt = build_aa55(0x07, data)
            print(f"[CMD] AA55 Text '{text}'")
            await self._write(pkt)
        else:
            print("[CMD] AES Text not supported yet. Use AA55 mode.")

    async def send_rawhex(self, s: str):
        s = str(s).replace(" ", "").replace(",", "").replace("0x","").replace("“","").replace("”","")
        try:
            data = bytes.fromhex(s)
        except Exception:
            print(f"[RAWHEX] invalid: {s}")
            return
        print(f"[RAW-HEX] {hexdump(data)}")
        await self._write(data)

    async def send_rawbytes(self, seq: Sequence[int]):
        data = bytes(int(x)&0xFF for x in seq)
        print(f"[RAW] {hexdump(data)}")
        await self._write(data)

    async def close(self):
        try:
            if self._client and self._client.is_connected:
                try:
                    await self._client.stop_notify(self.notify_uuid())
                except Exception:
                    pass
                await self._client.disconnect()
        finally:
            print("[BLE] disconnected")

    def print_info(self):
        print("==== MaskBridge Info ====")
        print(f"Name hint:          {self.name_hint}")
        print(f"MAC/UUID:           {self.mac or '(will scan)'}")
        print(f"Char select:        {self.char_select} ({'AES/PRIMARY' if self.char_select==0 else 'AA55/FALLBACK'})")
        print(f"PRIMARY UUID:       {PRIMARY_CHAR_UUID}")
        print(f"FALLBACK UUID:      {FALLBACK_CHAR_UUID}")
        print(f"Response mode:      {self.response_mode}")
        print(f"OSC port:           {OSC_PORT}")
        print("=========================")

bridge = MaskBridge()

# === OSC Handlers ===
def submit(coro): loop_thread.run(coro)

def osc_brightness(a, v):         submit(bridge.cmd_brightness(int(v)))
def osc_anim(a, idx):             submit(bridge.cmd_anim(int(idx)))
def osc_color(a, r,g,b):          submit(bridge.cmd_color(int(r),int(g),int(b)))
def osc_text(a, *chars):          submit(bridge.cmd_text(" ".join(map(str,chars))))
def osc_rawhex(a, hexs):          submit(bridge.send_rawhex(str(hexs)))
def osc_rawbytes(a, *bs):         submit(bridge.send_rawbytes(bs))

def osc_char(a, *sel):
    if not sel: return
    bridge.char_select = 0 if int(sel[0]) == 0 else 1
    bridge.print_info()

def osc_response(a, mode):
    bridge.response_mode = str(mode).lower()
    bridge.print_info()

def osc_info(a, *x): bridge.print_info()

def main():
    bridge.print_info()
    disp = dispatcher.Dispatcher()
    disp.map("/mask/brightness",  osc_brightness)
    disp.map("/mask/anim",        osc_anim)
    disp.map("/mask/color",       osc_color)
    disp.map("/mask/text",        osc_text)
    disp.map("/mask/rawhex",      osc_rawhex)
    disp.map("/mask/rawbytes",    osc_rawbytes)
    disp.map("/mask/char",        osc_char)
    disp.map("/mask/response",    osc_response)
    disp.map("/mask/info",        osc_info)

    server = osc_server.ThreadingOSCUDPServer(("0.0.0.0", OSC_PORT), disp)
    print(f"[OSC] Listening on udp/{OSC_PORT}")
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        print("\n[OSC] Shutting down…")
        fut = loop_thread.run(bridge.close())
        try: fut.result(timeout=2.0)
        except Exception: pass
        loop_thread.stop()
        sys.exit(0)

if __name__ == "__main__":
    main()