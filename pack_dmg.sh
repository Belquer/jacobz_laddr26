#!/bin/zsh
# Build a DMG from the already-built AprilTag2MaxApp.app bundle.
# Usage: chmod +x pack_dmg.sh && ./pack_dmg.sh
set -euo pipefail

APP_NAME="AprilTag2MaxApp"
VOL_NAME="AprilTag2Max"
DIST_DIR="dist"
APP_PATH="$DIST_DIR/${APP_NAME}.app"
DMG_PATH="$DIST_DIR/${VOL_NAME}.dmg"
STAGING=".dmg_staging"
BACKGROUND_IMG=""

if [ ! -d "$APP_PATH" ]; then
  echo "[ERROR] App bundle $APP_PATH not found. Run ./build_app.sh first." >&2
  exit 1
fi

rm -rf "$STAGING"
mkdir -p "$STAGING/$VOL_NAME"

# Copy the .app into staging volume
cp -R "$APP_PATH" "$STAGING/$VOL_NAME/"

# Optional: create an Applications symlink so users can drag-drop
ln -s /Applications "$STAGING/$VOL_NAME/Applications"

# (Optional) Add README or license
if [ -f README.md ]; then
  cp README.md "$STAGING/$VOL_NAME/README.md"
fi

# Build temporary read-write DMG
TMP_DMG="$STAGING/${VOL_NAME}-temp.dmg"

# Calculate size (in MiB) with padding
SIZE_MB=$(du -sm "$STAGING/$VOL_NAME" | awk '{print $1 + 20}')

echo "[INFO] Creating temp DMG ($SIZE_MB MB)..."
hdiutil create -size ${SIZE_MB}m -fs HFS+ -volname "$VOL_NAME" -ov "$TMP_DMG"

# Mount it
MOUNT_DIR=$(hdiutil attach "$TMP_DMG" -mountpoint "$STAGING/mount" -nobrowse -quiet | awk '{print $3}' | head -n1 || true)
if [ ! -d "$MOUNT_DIR" ]; then
  # Fallback read output parsing if above fails
  MOUNT_DIR="$STAGING/mount"
fi

echo "[INFO] Copying files into mounted DMG..."
cp -R "$STAGING/$VOL_NAME"/* "$MOUNT_DIR"/

# Optional: set custom icon / background (skipped for now)

sync
hdiutil detach "$MOUNT_DIR" -quiet || {
  echo "[WARN] First detach attempt failed, retrying..."; sleep 2; hdiutil detach "$MOUNT_DIR" -quiet; }

echo "[INFO] Converting to compressed (UDZO) DMG..."
hdiutil convert "$TMP_DMG" -format UDZO -imagekey zlib-level=9 -o "$DMG_PATH" -quiet

echo "[INFO] DMG created: $DMG_PATH"

echo "[NEXT] To (optionally) sign DMG:"
echo "codesign --force --sign 'Developer ID Application: YOUR NAME (TEAMID)' --deep --timestamp '$APP_PATH'"
echo "[NEXT] Notarize (after signing) with notarytool (macOS 10.15+):" 
cat <<EOF
xcrun notarytool submit dist/${VOL_NAME}.dmg \
  --apple-id YOUR_APPLE_ID \
  --team-id TEAMID \
  --password APP_SPECIFIC_PASSWORD \
  --wait
xcrun stapler staple dist/${VOL_NAME}.dmg
EOF
