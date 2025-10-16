#!/bin/zsh
# To run: chmod +x build_app.sh && ./build_app.sh
set -euo pipefail

# Always operate relative to this script's directory
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

APP_NAME="AprilTag2Max"
ENTRY="apriltag2max.py"
DIST_DIR="dist"
PYTHON_BIN="${PYTHON_BIN:-python3}"
VENV_DIR=".buildenv"

echo "[INFO] Using python: $(command -v $PYTHON_BIN || echo 'not found in PATH')"

if ! command -v $PYTHON_BIN >/dev/null 2>&1; then
  echo "[ERROR] $PYTHON_BIN not found. Install Python 3 and re-run." >&2
  exit 127
fi

# Create isolated build venv (optional but helps ensure pyinstaller available)
if [ ! -d "$VENV_DIR" ]; then
  echo "[INFO] Creating virtual environment $VENV_DIR";
  $PYTHON_BIN -m venv "$VENV_DIR"
fi
source "$VENV_DIR/bin/activate"

echo "[INFO] Upgrading pip"
python -m pip install --upgrade pip >/dev/null

echo "[INFO] Installing requirements"
python -m pip install -r requirements.txt

# Auto-generate placeholder icon if not present
ICON_ICNS="build/icon/AprilTag2Max.icns"
if [ ! -f "$ICON_ICNS" ]; then
  echo "[INFO] No icon found at $ICON_ICNS. Generating placeholder icon."
  python - <<'PYICON'
import os, pathlib
from math import sin, cos, pi
try:
  from PIL import Image, ImageDraw, ImageFont
except ImportError:
  print('[WARN] Pillow not installed; installing now...')
  import subprocess, sys
  subprocess.check_call([sys.executable, '-m', 'pip', 'install', 'Pillow'])
  from PIL import Image, ImageDraw, ImageFont

sizes = [1024]
out_iconset = pathlib.Path('build/icon/AprilTag2Max.iconset')
out_icns = pathlib.Path('build/icon/AprilTag2Max.icns')
out_iconset.mkdir(parents=True, exist_ok=True)

base = Image.new('RGBA', (1024,1024), (18,18,22,255))
draw = ImageDraw.Draw(base)

# Draw a simple stylized AprilTag-like square pattern
margin = 140
draw.rectangle([margin, margin, 1024-margin, 1024-margin], outline=(230,230,240,255), width=28)
draw.rectangle([margin+70, margin+70, 1024-(margin+70), 1024-(margin+70)], fill=(250,250,255,8), outline=(120,120,130,255), width=10)

text = 'AT'
try:
  font = ImageFont.truetype('Helvetica.ttc', 420)
except Exception:
  font = ImageFont.load_default()
try:
  bbox = font.getbbox(text)
  tw, th = bbox[2]-bbox[0], bbox[3]-bbox[1]
except Exception:
  tw, th = 400, 400
draw.text(((1024-tw)/2, (1024-th)/2-40), text, font=font, fill=(255,255,255,245))

# Subtle arcs / decoration
for i, r in enumerate(range(180, 500, 70)):
  draw.arc([512-r,512-r,512+r,512+r], start=20, end=320, fill=(80,80,90,120), width=6)

base_png = pathlib.Path('build/icon/base_generated.png')
base_png.parent.mkdir(parents=True, exist_ok=True)
base.save(base_png)

target_sizes = [16,32,64,128,256,512,1024]
for s in target_sizes:
  img = base.resize((s,s), Image.LANCZOS)
  p = out_iconset / f'icon_{s}x{s}.png'
  img.save(p)
  # @2x variants
  s2 = s*2
  if s2 <= 1024:
    img2 = base.resize((s2,s2), Image.LANCZOS)
    p2 = out_iconset / f'icon_{s}x{s}@2x.png'
    img2.save(p2)

# Use iconutil if available
import shutil, subprocess
if shutil.which('iconutil'):
  subprocess.check_call(['iconutil','-c','icns',str(out_iconset),'-o',str(out_icns)])
else:
  # Fallback: just duplicate largest PNG as .icns placeholder
  out_icns.write_bytes(base_png.read_bytes())
print('[INFO] Placeholder icon generated at', out_icns)
PYICON
fi

echo "[INFO] Building one-file CLI (spec)"
python -m PyInstaller --noconfirm AprilTag2Max.spec

echo "[INFO] Building v2 Cocoa GUI app (spec)"
python -m PyInstaller --noconfirm AprilTag2Max2App.spec

VERSION_FILE="VERSION"
if [ -f "$VERSION_FILE" ]; then
  VERSION=$(cat "$VERSION_FILE" | tr -d '\n')
else
  VERSION="0.0.0"
fi

PLIST2="dist/AprilTag2Max2App.app/Contents/Info.plist"
if [ -f "$PLIST2" ]; then
  BID2=$(/usr/libexec/PlistBuddy -c 'Print :CFBundleIdentifier' "$PLIST2" 2>/dev/null || echo "<missing>")
  CAM2=$(/usr/libexec/PlistBuddy -c 'Print :NSCameraUsageDescription' "$PLIST2" 2>/dev/null || echo "<missing>")
  VER2=$(/usr/libexec/PlistBuddy -c 'Print :CFBundleShortVersionString' "$PLIST2" 2>/dev/null || echo "<missing>")
  echo "[VERIFY] Bundle Identifier: $BID2"
  echo "[VERIFY] Version: $VER2 (expected $VERSION)"
  if [ "$CAM2" = "<missing>" ]; then
    echo "[ERROR] NSCameraUsageDescription missing in v2 Info.plist" >&2
    exit 2
  fi
  if [ "$VER2" != "$VERSION" ]; then
    echo "[WARN] Version mismatch: v2 plist=$VER2 expected=$VERSION" >&2
  fi
else
  echo "[ERROR] v2 Info.plist not found at $PLIST2" >&2
  exit 3
fi

echo "[INFO] Build complete (v2) version $VERSION. See dist/ and build/"