#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# Shining Mask (macOS / bleak)
# - Device brightness (firmware) still supported via --brightness (0..255, but device clamps ~0..100)
# - NEW: --soft-bright (0.0..1.0) scales pixel data before upload for true dimmer output
# - NEW: --blackout sends an all-black frame (useful because firmware "0" isn't fully off)

import sys, asyncio, argparse, math
from bleak import BleakScanner, BleakClient
from Crypto.Cipher import AES

UUID_CMD   = "d44bc439-abfd-45a2-b575-925416129600"
UUID_NTFY  = "d44bc439-abfd-45a2-b575-925416129601"
UUID_DATAA = "d44bc439-abfd-45a2-b575-92541612960a"
UUID_DATAB = "d44bc439-abfd-45a2-b575-92541612960b"

AES_KEY = bytes.fromhex("32672f7974ad43451d9c6c894a0e8764")

W, H = 44, 58
BPP = 3
PAYLOAD_MAX = 98
FRAME_WIRE  = 100

def enc_cmd(cmd_ascii: str, *args: bytes) -> bytes:
    content = cmd_ascii.encode("ascii") + b"".join(args)
    if len(content) > 15: raise ValueError("Command too long")
    return AES.new(AES_KEY, AES.MODE_ECB).encrypt((bytes([len(content)]) + content).ljust(16, b"\x00"))

def rot270(buf: bytes, w=W, h=H) -> bytes:
    out = bytearray(len(buf))
    for y in range(h):
        for x in range(w):
            si = (y*w + x)*3
            nx, ny = y, (w-1-x)
            di = (ny*h + nx)*3
            out[di:di+3] = buf[si:si+3]
    return bytes(out)

def frame_clear() -> bytes:
    return bytes(W*H*BPP)

def frame_center_square(size=12) -> bytes:
    buf = bytearray(W*H*BPP)
    sx = max(0, (W - size)//2); sy = max(0, (H - size)//2)
    ex = min(W-1, sx + size - 1); ey = min(H-1, sy + size - 1)
    for y in range(sy, ey+1):
        for x in range(sx, ex+1):
            i = (y*W + x)*3
            buf[i:i+3] = b"\xff\xff\xff"
    return rot270(bytes(buf))

def apply_soft_brightness(buf: bytes, scale: float, gamma: float = 2.2) -> bytes:
    """Scale RGB888 pixel data by 'scale' with gamma compensation."""
    scale = max(0.0, min(1.0, float(scale)))
    if scale == 1.0: return buf
    # perceptual scaling: output = input * (scale^gamma)
    g = scale ** gamma
    out = bytearray(len(buf))
    for i, v in enumerate(buf):
        out[i] = int(v * g + 0.5)
    return bytes(out)

async def find_device(hint: str, timeout=6.0):
    print(f"🔍 Scanning for device with hint '{hint}'...")
    devs = await BleakScanner.discover(timeout=timeout)
    target = None
    for d in devs:
        print(f"{d.address} : {d.name or ''}")
        if hint.lower() in (d.name or "").lower(): target = d
    if not target:
        print("❌ Not found"); sys.exit(1)
    print(f"✅ Found {target.name} ({target.address})")
    return target

async def connect(hint: str) -> BleakClient:
    dev = await find_device(hint)
    client = BleakClient(dev)
    await client.__aenter__()
    print("✅ Connected:", client.is_connected)
    try:
        await client.start_notify(UUID_NTFY, lambda *_: None)
    except Exception:
        pass
    return client

async def set_brightness(client: BleakClient, value: int, ack=True):
    # Device clamps ~0..100. We'll send min(value,100) for consistency.
    hw = max(0, min(255, int(value)))
    print(f"→ LIGHT {hw} (device likely clamps to 0..100)")
    await client.write_gatt_char(UUID_CMD, enc_cmd("LIGHT", bytes([hw])), response=ack)

async def upload_and_play(client: BleakClient, raw: bytes,
                          slot=1, flag=1, size_le=False, slot_le=False,
                          data_chan="a", chunk_delay=0.004, chunk_size=98, ack=True):
    total = len(raw)
    data_uuid = UUID_DATAA if data_chan=="a" else UUID_DATAB
    size_b = total.to_bytes(2, "little" if size_le else "big")
    slot_b = int(slot).to_bytes(2, "little" if slot_le else "big")
    flag_b = bytes([flag & 0xFF])

    print(f"→ DATS size={int.from_bytes(size_b,'little' if size_le else 'big')} "
          f"slot={int.from_bytes(slot_b,'little' if slot_le else 'big')} flag={flag}")
    await client.write_gatt_char(UUID_CMD, enc_cmd("DATS", size_b, slot_b, flag_b), response=ack)
    await asyncio.sleep(0.3)

    m = min(int(chunk_size), PAYLOAD_MAX)
    off = 0; cid = 0
    print(f"→ Sending {total} bytes via {data_uuid} (payload {m}B, delay {chunk_delay}s)…")
    while off < total:
        payload = raw[off:off+m]; off += len(payload)
        frame = bytes([1 + len(payload), cid & 0xFF]) + payload
        if len(frame) < FRAME_WIRE: frame += b"\x00" * (FRAME_WIRE - len(frame))
        elif len(frame) > FRAME_WIRE: frame = frame[:FRAME_WIRE]
        await client.write_gatt_char(data_uuid, frame, response=False)
        cid = (cid + 1) & 0xFF
        if chunk_delay > 0: await asyncio.sleep(chunk_delay)
    print(f"Chunks sent: {cid}")

    print("→ DATCP")
    await client.write_gatt_char(UUID_CMD, enc_cmd("DATCP"), response=ack)
    await asyncio.sleep(0.3)

    print("→ PLAY [1]")
    await client.write_gatt_char(UUID_CMD, enc_cmd("PLAY", bytes([1, 1])), response=ack)

async def run(args):
    client = await connect(args.name_hint)
    try:
        if args.brightness is not None:
            await set_brightness(client, args.brightness, ack=True)
            print("✅ Brightness set.")
            # Optionally also send all-black so the effect is obvious at low values:
            # await upload_and_play(client, frame_clear())
            return

        if args.blackout:
            await upload_and_play(client, frame_clear())
            print("✅ Blackout frame sent.")
            return

        # Simple demo frame (center square) with optional software dim
        buf = frame_center_square(size=12)
        if args.soft_bright is not None:
            buf = apply_soft_brightness(buf, args.soft_bright)
            print(f"🟡 Applied software brightness scale {args.soft_bright:.3f}")

        await upload_and_play(client, frame_clear())
        await upload_and_play(client, buf)
        print("✅ Pattern sent.")
    finally:
        try: await client.stop_notify(UUID_NTFY)
        except Exception: pass
        await client.__aexit__(None,None,None)

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--name-hint", default="MASK")
    ap.add_argument("--brightness", type=int, help="Device brightness 0..255 (firmware clamps ~0..100).")
    ap.add_argument("--soft-bright", type=float, help="Software brightness 0.0..1.0 (gamma-correct).")
    ap.add_argument("--blackout", action="store_true", help="Push an all-black frame (true off).")
    args = ap.parse_args()
    asyncio.run(run(args))

if __name__ == "__main__":
    main()
