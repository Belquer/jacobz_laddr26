#!/usr/bin/env python3
"""
detect_led_rows.py — detect visible LEDs from a clean mask image (PNG/JPEG) or PDF,
overlay detections for visual confirmation, and print per-row LED counts.
"""

import os, sys, argparse
import numpy as np
from PIL import Image
import matplotlib.pyplot as plt
from sklearn.cluster import DBSCAN

def load_image_any(path, dpi=300):
    """
    Load first page of PDF (via PyMuPDF) or a raster image.
    Returns a Pillow L-mode (grayscale) image.
    """
    ext = os.path.splitext(path)[1].lower()
    if ext == ".pdf":
        try:
            import fitz  # PyMuPDF
        except Exception as e:
            raise RuntimeError(
                "PyMuPDF is required to open PDFs. Install with: pip install pymupdf"
            ) from e
        doc = fitz.open(path)
        page = doc[0]
        zoom = dpi / 72.0
        mat = fitz.Matrix(zoom, zoom)
        pix = page.get_pixmap(matrix=mat, alpha=False)
        img = Image.frombytes("RGB", [pix.width, pix.height], pix.samples)
        return img.convert("L")
    else:
        return Image.open(path).convert("L")

def detect_led_centers(gray_img, thr=220, eps=5, min_samples=6):
    """
    Threshold bright dots and cluster to get LED centers.
    thr: intensity threshold (0..255) — 220 works well for clean white LEDs.
    eps/min_samples: DBSCAN parameters (in pixels).
    Returns Nx2 array of centers [y,x].
    """
    arr = np.array(gray_img)
    ys, xs = np.where(arr >= thr)
    pts = np.column_stack([ys, xs])
    if pts.size == 0:
        return np.empty((0,2))
    clustering = DBSCAN(eps=eps, min_samples=min_samples).fit(pts)
    centers = []
    for lbl in sorted(set(clustering.labels_)):
        if lbl == -1:  # noise
            continue
        p = pts[clustering.labels_ == lbl]
        cy, cx = p.mean(axis=0)
        centers.append((cy, cx))
    return np.array(centers)

def group_rows(centers, row_tol=6):
    """
    Group LED centers into rows by Y proximity.
    Returns list of arrays; each row array is Nx2 [y,x] and sorted by x.
    """
    if centers.size == 0:
        return []
    ordered = centers[np.argsort(centers[:,0])]
    rows = []
    current = [ordered[0]]
    for p in ordered[1:]:
        if abs(p[0] - np.mean([q[0] for q in current])) <= row_tol:
            current.append(p)
        else:
            row = np.array(current)
            rows.append(row[row[:,1].argsort()])
            current = [p]
    row = np.array(current)
    rows.append(row[row[:,1].argsort()])
    return rows

def split_gaps(x_positions, gap_factor=1.8):
    """
    Split a sorted list of x positions into groups based on large gaps.
    gap is considered 'large' if > gap_factor * (20th percentile of diffs).
    Returns list of numpy arrays (groups).
    """
    xs = np.array(x_positions, dtype=float)
    if xs.size <= 1:
        return [xs] if xs.size == 1 else []
    diffs = np.diff(xs)
    small = np.percentile(diffs, 20)
    if small <= 0: small = max(1.0, diffs.min())
    threshold = max(3.0, small * gap_factor)
    groups, cur = [], [xs[0]]
    for a, b in zip(xs[:-1], xs[1:]):
        if (b - a) > threshold:
            groups.append(np.array(cur))
            cur = [b]
        else:
            cur.append(b)
    groups.append(np.array(cur))
    return groups

def summarize_rows(rows):
    """
    Produce human-readable per-row counts.
    Eye gaps appear as a-b-c when multiple groups exist in a row.
    """
    lines = []
    for i, row in enumerate(rows, 1):
        xs = row[:,1]
        groups = split_gaps(xs)
        if len(groups) <= 1:
            lines.append(f"{i}: {len(xs)}")
        else:
            counts = "-".join(str(len(g)) for g in groups)
            lines.append(f"{i}: {counts}")
    return lines

def plot_overlays(gray_img, centers, rows, title_suffix=""):
    arr = np.array(gray_img)
    # All centers
    plt.figure(figsize=(6,8))
    plt.imshow(arr, cmap="gray")
    if centers.size:
        plt.scatter(centers[:,1], centers[:,0], s=10, c='red')
    plt.title(f"Detected LED centers {title_suffix}")
    plt.axis('off')

    # Row-colored
    plt.figure(figsize=(6,8))
    plt.imshow(arr, cmap="gray")
    colors = plt.cm.tab20(np.linspace(0,1,max(1,len(rows))))
    for i, row in enumerate(rows):
        if row.size:
            plt.scatter(row[:,1], row[:,0], s=10, c=[colors[i%20]], label=f"{i+1}")
    plt.title(f"Row-grouped LED centers {title_suffix}")
    plt.axis('off')
    # legend can be huge; omit to keep clear
    # plt.legend(loc='best', fontsize=6, ncol=2)
    plt.show()

def main():
    ap = argparse.ArgumentParser(description="Detect LED dots from a mask image/PDF and show overlays + counts.")
    ap.add_argument("--in", dest="inp", required=True, help="Input PDF/PNG/JPG (your cleaned PDF)")
    ap.add_argument("--thr", type=int, default=220, help="Brightness threshold (0..255, default 220)")
    ap.add_argument("--eps", type=float, default=5.0, help="DBSCAN eps (pixels)")
    ap.add_argument("--min-samples", type=int, default=6, help="DBSCAN min_samples")
    ap.add_argument("--row-tol", type=float, default=6.0, help="Row grouping tolerance in Y (pixels)")
    ap.add_argument("--gap-factor", type=float, default=1.8, help="Gap factor for eye splits")
    args = ap.parse_args()

    imgL = load_image_any(args.inp)
    centers = detect_led_centers(imgL, thr=args.thr, eps=args.eps, min_samples=args.min_samples)
    rows = group_rows(centers, row_tol=args.row_tol)

    # Visual confirmation
    plot_overlays(imgL, centers, rows, title_suffix=f"(thr={args.thr})")

    # Numeric summary
    summary = summarize_rows(rows)
    print("\nRow-by-row LED counts (only visible LEDs):")
    for line in summary:
        print(line)
    print(f"\nTotal rows detected: {len(rows)}  |  Total LEDs detected: {sum(int(s.split(':')[1].replace('-','+')) for s in summary)}")

if __name__ == "__main__":
    main()