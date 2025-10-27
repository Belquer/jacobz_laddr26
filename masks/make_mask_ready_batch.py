#!/usr/bin/env python3
# Generate diagnostic column test images for a 72x64 grid.
# Outputs three folders:
#   columns_A/ : exact one-column images (col_00.png .. col_71.png)
#   columns_B/ : one-column with y=0 and y=63 duplicated from neighbors (edge-safe)
#   columns_C/ : one white column with black guard columns on both sides (anti-duplication)
#
# Also emits extreme-left.png in each set (column 0).
#
# Usage:
#   source ~/venv/bin/activate
#   python3 make_column_maps.py --out "/Users/danielbelquer/Documents/GitHub/jacobz_laddr25/masks/col_tests"

import os
import argparse
from PIL import Image

W, H = 72, 64

def mk_blank():
    return Image.new("RGB", (W, H), (0, 0, 0))

def draw_column(img, x):
    px = img.load()
    if 0 <= x < W:
        for y in range(H):
            px[x, y] = (255, 255, 255)

def duplicate_edge_rows(img):
    """Copy row 1 into row 0 and row 62 into row 63 (protect against 1px crop)."""
    px = img.load()
    for x in range(W):
        px[x, 0]  = px[x, 1]
        px[x, H-1] = px[x, H-2]

def add_black_guards(img, x):
    """Force black on x-1 and x+1 to discourage column duplication by scalers."""
    px = img.load()
    for y in range(H):
        if x-1 >= 0:   px[x-1, y] = (0, 0, 0)
        if x+1 < W:    px[x+1, y] = (0, 0, 0)

def export_set(folder, post_fn=None, guard=False):
    os.makedirs(folder, exist_ok=True)
    # extreme-left
    img = mk_blank()
    draw_column(img, 0)
    if guard: add_black_guards(img, 0)
    if post_fn: post_fn(img)
    img.save(os.path.join(folder, "extreme-left.png"))
    # all columns
    for x in range(W):
        img = mk_blank()
        draw_column(img, x)
        if guard: add_black_guards(img, x)
        if post_fn: post_fn(img)
        img.save(os.path.join(folder, f"col_{x:02d}.png"))

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--out", required=True, help="Output base folder")
    args = ap.parse_args()

    base = args.out
    export_set(os.path.join(base, "columns_A"), post_fn=None, guard=False)
    export_set(os.path.join(base, "columns_B"), post_fn=duplicate_edge_rows, guard=False)
    export_set(os.path.join(base, "columns_C"), post_fn=duplicate_edge_rows, guard=True)

    print("✅ Made column sets:")
    print("  - columns_A (exact)")
    print("  - columns_B (edge-safe)")
    print("  - columns_C (edge-safe + black guards)")

if __name__ == "__main__":
    main()