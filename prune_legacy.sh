#!/bin/zsh
# Move deprecated or experimental files into legacy/ to declutter root.
set -euo pipefail
# Allow missing globs (zsh) to expand to nothing instead of raising errors.
setopt NULL_GLOB 2>/dev/null || true
# Bash fallback (if someone runs under bash).
shopt -s nullglob 2>/dev/null || true
LEGACY_DIR="legacy"
mkdir -p "$LEGACY_DIR"

move_if_exists() {
  local f="$1"
  if [ -e "$f" ]; then
    echo "[LEGACY] Moving $f -> $LEGACY_DIR/"
    git mv "$f" "$LEGACY_DIR/" 2>/dev/null || mv "$f" "$LEGACY_DIR/"
  fi
}

# Deprecated GUI attempts or superseded variants
move_if_exists tag_app_gui.py
move_if_exists tag_app_cocoa.py

# Any accidental text artifacts
move_if_exists apriltag2max.txt

# Potential leftover exploratory scripts (add more patterns as needed)
for f in test_*.py scratch_*.py temp_*.py; do
  [ -e "$f" ] || continue
  move_if_exists "$f"
done

echo "[DONE] Legacy pruning complete. Review contents of $LEGACY_DIR/ and commit if acceptable."