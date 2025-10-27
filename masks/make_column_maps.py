#!/usr/bin/env python3
# Generate column test images for a 72x64 Shining Mask.
# - extreme-left.png : only column 0 is white
# - col_00.png ... col_71.png : exactly one column per image
#
# Usage:
#   python3 make_column_maps.py --out /path/to/output
#
# Then upload any of these PNGs to a DIY slot and observe which physical column lights.
# Tip: If "left" appears on the right side physically, you know the X axis is flipped.

import os
import argparse
from PIL import Image

W, H = 72, 64  # mask grid

def make_col_image(x: int) -> Image.Image:
    """Return an RGB 72x64 image with only column x set to white."""
    img = Image.new("RGB", (W, H), (0, 0, 0))
    px = img.load()
    if 0 <= x < W:
        for y in range(H):
            px[x, y] = (255, 255, 255)
    return img

def main():
    ap = argparse.ArgumentParser(description="Generate single-column test images for Shining Mask.")
    ap.add_argument("--out", required=True, help="Output folder for PNGs")
    args = ap.parse_args()

    os.makedirs(args.out, exist_ok=True)

    # 1) Extreme left column image
    left_path = os.path.join(args.out, "extreme-left.png")
    make_col_image(0).save(left_path, "PNG")
    print(f"✅ {left_path}")

    # 2) One image per column
    for x in range(W):
        out_path = os.path.join(args.out, f"col_{x:02d}.png")
        make_col_image(x).save(out_path, "PNG")
        print(f"✅ {out_path}")

    print("\n🎉 Done. Upload these to DIY slots to map columns accurately.")

if __name__ == "__main__":
    main()