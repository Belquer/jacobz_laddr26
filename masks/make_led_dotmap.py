#!/usr/bin/env python3
"""
make_led_dotmap.py — generate a dot map image with one white circle per LED.

Defaults:
  cols=72, rows=64, black background, white circles.
  Circles are arranged in straight lines (no curvature), evenly spaced.

Examples:
  python3 make_led_dotmap.py
  python3 make_led_dotmap.py --cols 72 --rows 64 --scale 12 --radius 4 --margin 10 \
      --out "/Users/danielbelquer/Documents/GitHub/jacobz_laddr25/masks/led_dotmap_72x64.png"
"""

import argparse
from PIL import Image, ImageDraw

def build_dotmap(cols=72, rows=64, scale=12, radius=None, margin=12):
    """
    cols, rows: LED grid counts
    scale: pixel pitch (distance between LED centers) in output image
    radius: circle radius in pixels (default: round(scale*0.35))
    margin: border margin in pixels
    """
    if radius is None:
        radius = max(1, round(scale * 0.35))

    # Compute image size: centers on a (cols x rows) grid with margins
    width  = margin*2 + (cols-1)*scale + radius*2
    height = margin*2 + (rows-1)*scale + radius*2

    img = Image.new("RGB", (width, height), (0, 0, 0))
    draw = ImageDraw.Draw(img)

    # Draw circles
    for y in range(rows):
        cy = margin + radius + y*scale
        for x in range(cols):
            cx = margin + radius + x*scale
            draw.ellipse(
                (cx - radius, cy - radius, cx + radius, cy + radius),
                fill=(255, 255, 255),
                outline=None
            )
    return img

def main():
    ap = argparse.ArgumentParser(description="Generate a white-dot LED map image.")
    ap.add_argument("--cols", type=int, default=72, help="number of LEDs horizontally")
    ap.add_argument("--rows", type=int, default=64, help="number of LEDs vertically")
    ap.add_argument("--scale", type=int, default=12, help="pixels between LED centers")
    ap.add_argument("--radius", type=int, default=-1, help="circle radius in pixels (default: ~0.35*scale)")
    ap.add_argument("--margin", type=int, default=12, help="margin around the grid in pixels")
    ap.add_argument("--out", type=str,
                    default="/Users/danielbelquer/Documents/GitHub/jacobz_laddr25/masks/led_dotmap_72x64.png",
                    help="output PNG path")
    args = ap.parse_args()

    radius = None if args.radius < 0 else args.radius
    img = build_dotmap(cols=args.cols, rows=args.rows, scale=args.scale, radius=radius, margin=args.margin)
    img.save(args.out, "PNG")
    print(f"✅ Saved {args.out}  ({args.cols}×{args.rows} dots)")

if __name__ == "__main__":
    main()