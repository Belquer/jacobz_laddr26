#!/usr/bin/env python3
"""
MASK BRIDGE v4 – Shining/MEGOO BLE Mask <-> OSC (macOS)
- Background asyncio loop thread (correct persistence)
- Persistent BLE connection on AE01 (AA55 dialect) by default
- D44B/AES path retained if you ever need it
- Clean logs; graceful shutdown on Ctrl-C

OSC (udp/9001 or $MASK_OSC_PORT):
  /mask/brightness <0..100>
  /mask/color <r 0..255> <g 0..255> <b 0..255>
  /mask/pattern <id 0..255>
  /mask/text <string>
  /mask/rawhex <hexstring>
  /mask/rawbytes <b0> <b1> ...
  /mask/char <0|1>                 (0=D44B AES, 1=AE01 AA55)
  /mask/response <auto|yes|no>     (AE01 uses 'no' always)
  /mask/info
"""

import os
import sys
import time
import asyncio
import threading
from typing import Optional, Sequence
from bleak import BleakClient, BleakScanner
from pythonosc import dispatcher, osc_server
from Crypto.Cipher import AES

# ---------- Your device (from scan) ----------
MASK_NAME    = os.environ.get("MASK_NAME", "MASK-E4B434")
MASK_ADDRESS = os.environ.get("MASK_MAC",  "E3A6086B-E8F1-3774-C548-A25330A61C56")  # CoreBluetooth UUID (macOS)

# Characteristics
PRIMARY_CHAR_UUID    = os.environ.get("MASK_CHAR_PRIMARY",  "D44BC439-ABFD-45A2-B575-925416129600")
FALLBACK_CHAR_UUID   = os.environ.get("MASK_CHAR_FALLBACK", "AE01")
NOTIFY_PRIMARY_UUID  = "D44BC439-ABFD-45A2-B575-925416129601"
NOTIFY_FALLBACK_UUID = "AE02"

# AES key for D44B... path (kept for completeness)
AES_KEY = bytes([0x32,0x67,0x2f,0x79,0x74,0xad,0x43,0x45,0x1d,0x9c,0x6c,0x89,0x4a,0x0e,0x87,0x64])

# Defaults
DEFAULT_CHAR_SELECT   = 1         # 1 = AE01 (your working path)
DEFAULT_RESPONSE_MODE = "no"      # AE01: write-without-response
OSC_PORT              = int(os.environ.get("MASK_OSC_PORT", "9001"))

# ---------- Helpers ----------
def hexdump(b: bytes) -> str:
    return " ".join(f"{x:02X}" for x in b)

def build_aa55(cmd: int, data: bytes) -> bytes:
    """
    AA 55 <len> <cmd> <data...> <chk>
    chk = (len + cmd + sum(data)) & 0xFF
    len counts CMD + CHK (so = len(data) + 2)
    """
    ln  = len(data) + 2
    chk = (ln + cmd + sum(data)) & 0xFF
    return bytes([0xAA, 0x55, ln, cmd]) + data + bytes([chk])

def build_aes_packet(cmd_ascii: str, args: bytes = b"") -> bytes:
    body  = cmd_ascii.encode("ascii") + args
    total = bytes([len(body)]) + body
    if len(total) % 16 != 0:
        total += bytes(16 - (len(total) % 16))
    cipher = AES.new(AES_KEY, AES.MODE_ECB)
    return b"".join(cipher.encrypt(total[i:i+16]) for i in range(0, len(total), 16))

# ---------- Dedicated asyncio loop (background thread) ----------
class LoopThread:
    def __init__(self):
        self.loop = asyncio.new_event_loop()
        self.thread = threading.Thread(target=self.loop.run_forever, daemon=True)
        self.thread.start()

    def run_coro(self, coro: asyncio.Future):
        """Schedule coroutine on the background loop and wait for result (non-blocking for BLE writes)."""
        return asyncio.run_coroutine_threadsafe(coro, self.loop)

    def stop(self):
        self.loop.call_soon_threadsafe(self.loop.stop)
        self.thread.join(timeout=1.0)

loop_thread = LoopThread()

# ---------- Bridge ----------
class MaskBridge:
    def __init__(self):
        self.mac: str = MASK_ADDRESS
        self.name_hint: str = MASK_NAME
        self.char_select: int = DEFAULT_CHAR_SELECT   # 0=D44B (AES), 1=AE01 (AA55)
        self.response_mode: str = DEFAULT_RESPONSE_MODE

        # Persistent connection state (lives in background loop)
        self._client: Optional[BleakClient] = None
        self._lock = asyncio.Lock()

    def current_write_uuid(self) -> str:
        return PRIMARY_CHAR_UUID if self.char_select == 0 else FALLBACK_CHAR_UUID

    def current_notify_uuid(self) -> str:
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
            await self._client.start_notify(self.current_notify_uuid(), _on_notify)
        except Exception:
            pass
        print("[BLE] connected (persistent)")

    async def _write(self, payload: bytes):
        """Write once under persistent connection."""
        async with self._lock:
            await self._ensure_client()
            # AE01 is write-without-response; D44B can use response mode
            want_resp = False if self.char_select == 1 else (self.response_mode == "yes")
            print(f"[BLE] -> {self.current_write_uuid()} ({len(payload)} bytes) resp={want_resp}")
            await self._client.write_gatt_char(self.current_write_uuid(), payload, response=want_resp)
            # tiny delay so we don't flood
            await asyncio.sleep(0.01)

    # ----- High-level command builders -----
    async def cmd_brightness(self, value: int):
        v = max(0, min(int(value), 100))
        if self.char_select == 1:
            pkt = build_aa55(0x04, bytes([v]))     # AA55 brightness
            print(f"[CMD] Brightness {v} via AE01 (AA55)")
            await self._write(pkt)
        else:
            payload = build_aes_packet("LIGHT", bytes([v]))
            print(f"[CMD] LIGHT {v} via D44B (AES)")
            await self._write(payload)

    async def cmd_color(self, r: int, g: int, b: int):
        r,g,b = [max(0, min(int(x),255)) for x in (r,g,b)]
        if self.char_select == 1:
            pkt = build_aa55(0x06, bytes([r,g,b])) # AA55 color
            print(f"[CMD] Color {r} {g} {b} via AE01 (AA55)")
            await self._write(pkt)
        else:
            payload = build_aes_packet("COLR", bytes([r,g,b]))
            print(f"[CMD] Color {r} {g} {b} via D44B (AES)")
            await self._write(payload)

    async def cmd_pattern(self, pid: int):
        p = max(0, min(int(pid), 255))
        if self.char_select == 1:
            pkt = build_aa55(0x02, bytes([p]))     # AA55 pattern
            print(f"[CMD] Pattern {p} via AE01 (AA55)")
            await self._write(pkt)
        else:
            payload = build_aes_packet("PATT", bytes([p]))
            print(f"[CMD] Pattern {p} via D44B (AES)")
            await self._write(payload)

    async def cmd_text(self, text: str):
        data = text.encode("utf-8")[:20]          # keep short
        if self.char_select == 1:
            pkt = build_aa55(0x07, data)          # AA55 text
            print(f"[CMD] Text '{text}' via AE01 (AA55)")
            await self._write(pkt)
        else:
            payload = build_aes_packet("TEXT", data)
            print(f"[CMD] Text '{text}' via D44B (AES)")
            await self._write(payload)

    async def send_rawhex(self, s: str):
        s = str(s).replace(" ", "").replace(",", "").replace("0x","")
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
                    await self._client.stop_notify(self.current_notify_uuid())
                except Exception:
                    pass
                await self._client.disconnect()
        finally:
            print("[BLE] disconnected")

    def print_info(self):
        print("==== MaskBridge Info ====")
        print(f"Name hint:          {self.name_hint}")
        print(f"MAC/UUID:           {self.mac or '(will scan)'}")
        print(f"Char select:        {self.char_select} ({'PRIMARY' if self.char_select==0 else 'FALLBACK'})")
        print(f"PRIMARY UUID:       {PRIMARY_CHAR_UUID}")
        print(f"FALLBACK UUID:      {FALLBACK_CHAR_UUID}")
        print(f"Response mode:      {self.response_mode}")
        print(f"OSC port:           {OSC_PORT}")
        print("=========================")

bridge = MaskBridge()

# ---------- OSC handlers (schedule on background loop) ----------
def _submit(coro):
    loop_thread.run_coro(coro)  # fire-and-forget; logs will show results

def osc_brightness(addr, v):      _submit(bridge.cmd_brightness(int(v)))
def osc_color(addr, r, g, b):     _submit(bridge.cmd_color(int(r),int(g),int(b)))
def osc_pattern(addr, pid):       _submit(bridge.cmd_pattern(int(pid)))
def osc_text(addr, *chars):       _submit(bridge.cmd_text(" ".join(map(str,chars))))
def osc_rawhex(addr, hexs):       _submit(bridge.send_rawhex(str(hexs)))
def osc_rawbytes(addr, *bs):      _submit(bridge.send_rawbytes(bs))
def osc_char(addr, sel):
    bridge.char_select = 0 if int(sel)==0 else 1
    bridge.print_info()
def osc_response(addr, mode):
    bridge.response_mode = str(mode).lower()
    bridge.print_info()
def osc_info(addr, *a):           bridge.print_info()

def main():
    bridge.print_info()
    # spin up OSC server (blocking in main thread; BLE runs in loop_thread)
    disp = dispatcher.Dispatcher()
    disp.map("/mask/brightness", osc_brightness)
    disp.map("/mask/color",      osc_color)
    disp.map("/mask/pattern",    osc_pattern)
    disp.map("/mask/text",       osc_text)
    disp.map("/mask/rawhex",     osc_rawhex)
    disp.map("/mask/rawbytes",   osc_rawbytes)
    disp.map("/mask/char",       osc_char)
    disp.map("/mask/response",   osc_response)
    disp.map("/mask/info",       osc_info)

    server = osc_server.ThreadingOSCUDPServer(("0.0.0.0", OSC_PORT), disp)
    print(f"[OSC] Listening on udp/{OSC_PORT}")
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        print("\n[OSC] Shutting down…")
        # Close BLE client on the background loop, then stop the loop thread
        fut = loop_thread.run_coro(bridge.close())
        try:
            fut.result(timeout=2.0)
        except Exception:
            pass
        loop_thread.stop()
        sys.exit(0)

if __name__ == "__main__":
    main()