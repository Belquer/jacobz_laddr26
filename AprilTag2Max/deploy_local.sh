#!/bin/zsh
# Deploy freshly built app bundle to /Applications with verification.
set -euo pipefail
APP_NAME="AprilTag2MaxApp.app"
SRC="dist/${APP_NAME}"
DEST="/Applications/${APP_NAME}"
if [ ! -d "$SRC" ]; then
  echo "[ERROR] Built app not found at $SRC. Run ./build_app.sh first." >&2
  exit 1
fi
if [ -d "$DEST" ]; then
  echo "[INFO] Removing existing $DEST";
  rm -rf "$DEST"
fi
cp -R "$SRC" "$DEST"
xattr -cr "$DEST"
PLIST="$DEST/Contents/Info.plist"
if [ -f VERSION ]; then VERSION=$(tr -d '\n' < VERSION); else VERSION="(missing)"; fi
BID=$(/usr/libexec/PlistBuddy -c 'Print :CFBundleIdentifier' "$PLIST" 2>/dev/null || echo '<missing>')
VER=$(/usr/libexec/PlistBuddy -c 'Print :CFBundleShortVersionString' "$PLIST" 2>/dev/null || echo '<missing>')
CAM=$(/usr/libexec/PlistBuddy -c 'Print :NSCameraUsageDescription' "$PLIST" 2>/dev/null || echo '<missing>')
cat <<EOF
[DEPLOY] Installed -> $DEST
[DEPLOY] CFBundleIdentifier: $BID
[DEPLOY] CFBundleShortVersionString: $VER (expected $VERSION)
[DEPLOY] NSCameraUsageDescription: ${CAM:0:70}...
EOF
if [ "$CAM" = '<missing>' ]; then
  echo "[ERROR] Camera usage description missing post-deploy" >&2
  exit 2
fi
exit 0
