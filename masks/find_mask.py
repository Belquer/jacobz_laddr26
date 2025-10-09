# find_mask.py (version-proof for Bleak >=1.0)
import asyncio
from bleak import BleakScanner

# Adjust hints if you know the exact advertised name (e.g. "MASK-E4B434")
NAME_HINTS = ["MASK", "Shining", "LED", "QHM"]

def looks_like_mask(name: str | None) -> bool:
    if not name:
        return False
    low = name.lower()
    return any(h.lower() in low for h in NAME_HINTS)

async def main():
    print("Scanning for 6 seconds… (make sure phone app is force-quit)")
    devices = await BleakScanner.discover(timeout=6.0)
    found_any = False
    for d in devices:
        nm = d.name or ""
        if looks_like_mask(nm):
            found_any = True
            # Some Bleak builds expose rssi via d.rssi, others via d.details/metadata.
            # We’ll print only the stable bits:
            print(f"[CANDIDATE] name='{nm}' address='{d.address}'")
    if not found_any:
        print("No candidates matched NAME_HINTS. Here are all devices:")
        for d in devices:
            print(f" - name='{d.name}' address='{d.address}'")

asyncio.run(main())