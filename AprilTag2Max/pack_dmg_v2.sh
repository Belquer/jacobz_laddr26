#!/bin/zsh
# Package AprilTag2Max2App.app into a DMG (version 2.0.0).
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"
APP_DIR="dist/AprilTag2Max2App.app"
VOL_NAME="AprilTag2Max2"
DMG_PATH="dist/${VOL_NAME}.dmg"
STAGING=".dmg_staging_v2"

if [ ! -d "$APP_DIR" ]; then
  echo "[ERROR] $APP_DIR not found. Build first." >&2
  exit 1
fi

rm -rf "$STAGING"
mkdir -p "$STAGING/$VOL_NAME"
cp -R "$APP_DIR" "$STAGING/$VOL_NAME/"
ln -s /Applications "$STAGING/$VOL_NAME/Applications"
[ -f README.md ] && cp README.md "$STAGING/$VOL_NAME/README.md"

SIZE_MB=$(du -sm "$STAGING/$VOL_NAME" | awk '{print $1 + 20}')
TMP_DMG="$STAGING/${VOL_NAME}-temp.dmg"

echo "[INFO] Creating temp DMG ($SIZE_MB MB)..."
hdiutil create -size ${SIZE_MB}m -fs HFS+ -volname "$VOL_NAME" -ov "$TMP_DMG" >/dev/null
MOUNT_POINT="$STAGING/mount"
mkdir -p "$MOUNT_POINT"
hdiutil attach "$TMP_DMG" -mountpoint "$MOUNT_POINT" -nobrowse -quiet

cp -R "$STAGING/$VOL_NAME"/* "$MOUNT_POINT"/

sync
hdiutil detach "$MOUNT_POINT" -quiet || { sleep 2; hdiutil detach "$MOUNT_POINT" -quiet || true; }

echo "[INFO] Converting to compressed DMG..."
hdiutil convert "$TMP_DMG" -format UDZO -imagekey zlib-level=9 -o "$DMG_PATH" >/dev/null

echo "[INFO] DMG ready: $DMG_PATH"

echo "[NEXT] To sign and notarize (optional):"
cat <<EOF
codesign --force --deep --timestamp \
  --sign "Developer ID Application: YOUR NAME (TEAMID)" \
  "$APP_DIR"

xcrun notarytool submit "$DMG_PATH" \
  --apple-id YOUR_APPLE_ID --team-id TEAMID --password APP_SPECIFIC_PASSWORD --wait
xcrun stapler staple "$DMG_PATH"
EOF
