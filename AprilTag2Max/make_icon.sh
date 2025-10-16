#!/bin/zsh
# Generate an .icns icon from a source PNG (default: icon_src/base.png)
# Usage: chmod +x make_icon.sh && ./make_icon.sh
set -euo pipefail
SRC=icon_src/base.png
OUT_DIR=build/icon
ICONSET=$OUT_DIR/AprilTag2Max.iconset
ICNS=$OUT_DIR/AprilTag2Max.icns

if [ ! -f "$SRC" ]; then
  echo "[ERROR] Source $SRC not found. Place a square PNG there (e.g. 1024x1024)." >&2
  exit 1
fi

rm -rf "$ICONSET" "$OUT_DIR"
mkdir -p "$ICONSET"

# Required macOS icon sizes
sizes=(16 32 64 128 256 512 1024)
for s in $sizes; do
  dest="$ICONSET/icon_${s}x${s}.png"
  s2=$((s*2))
  dest2="$ICONSET/icon_${s}x${s}@2x.png"
  # Use sips to resize
  sips -z $s $s "$SRC" --out "$dest" >/dev/null
  sips -z $s2 $s2 "$SRC" --out "$dest2" >/dev/null || true
 done

mkdir -p "$OUT_DIR"
iconutil -c icns "$ICONSET" -o "$ICNS"

if [ -f "$ICNS" ]; then
  echo "[INFO] Created $ICNS"
else
  echo "[ERROR] Failed to create .icns" >&2
  exit 1
fi
