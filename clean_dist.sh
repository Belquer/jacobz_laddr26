#!/bin/zsh
# Clean up the dist directory to avoid confusion.
# Keeps:
#   - dist/AprilTag2Max (CLI binary) if present
#   - dist/AprilTag2Max2App.app (Cocoa GUI bundle)
#   - dist/AprilTag2Max2.dmg (DMG)
# Removes:
#   - Duplicate build folders (dist/AprilTag2MaxApp, nested variants)
#   - Temporary staging directories (.dmg_staging, internal PyInstaller leftovers)
#   - Orphaned underscore-prefixed internal dirs
#   - .DS_Store files
# Optional flag: --all (also removes binary & dmg for a fresh rebuild)
set -euo pipefail

# Ensure globs that don't match expand to nothing instead of literal pattern (zsh nullglob equivalent)
setopt NULL_GLOB 2>/dev/null || true

DIST_DIR="dist"
KEEP_BIN="AprilTag2Max"
KEEP_APP_V2="AprilTag2Max2App.app"
KEEP_DMG_V2="AprilTag2Max2.dmg"

REMOVE_ALL=false
for arg in "$@"; do
  case "$arg" in
    --all) REMOVE_ALL=true ;;
    --help)
      echo "Usage: ./clean_dist.sh [--all]"
      echo "  --all  Remove even primary binary/app/dmg for fresh rebuild"
      exit 0 ;;
  esac
done

if [ ! -d "$DIST_DIR" ]; then
  echo "[INFO] No dist directory; nothing to clean."; exit 0
fi

pushd "$DIST_DIR" >/dev/null

# Remove duplicate build folders (PyInstaller sometimes leaves a raw folder version of the app name)
for d in AprilTag2Max2App AprilTag2Max2App*/_internal*; do
  [ -e "$d" ] || continue
  echo "[CLEAN] Removing $d"; rm -rf "$d" || true
done

# Purge any legacy original app folders that might still exist (one-time cleanup)
for legacy in AprilTag2MaxApp AprilTag2MaxApp.app AprilTag2MaxApp*/_internal* AprilTag2MaxApp.app*/_internal*; do
  [ -e "$legacy" ] || continue
  echo "[LEGACY-PURGE] Removing $legacy"; rm -rf "$legacy" || true
done

# Remove stray internal dirs at top level
for d in _internal*; do
  [ -e "$d" ] || continue
  echo "[CLEAN] Removing $d"; rm -rf "$d" || true
done

# Remove .DS_Store
find . -name '.DS_Store' -delete 2>/dev/null || true

if $REMOVE_ALL; then
  for f in "$KEEP_BIN" "$KEEP_APP_V2" "$KEEP_DMG_V2"; do
    [ -e "$f" ] || continue
    echo "[CLEAN-ALL] Removing $f"; rm -rf "$f" || true
  done
fi

popd >/dev/null

# Remove global staging dir if present
for staging in .dmg_staging_v2 .dmg_staging; do
  if [ -d "$staging" ]; then
    echo "[CLEAN] Removing $staging"; rm -rf "$staging"
  fi
done

echo "[DONE] dist cleanup complete. Remaining contents:";
ls -1 "$DIST_DIR" || true

echo "\nUsage: ./clean_dist.sh [--all]";
echo "  --all : also remove primary binary, app bundle, and dmg (fresh slate)";
