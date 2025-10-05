#!/bin/zsh
# List large files (>50MB) that are tracked or untracked (excluding ignored patterns).
# Helps diagnose GitHub push rejections due to file size.
set -euo pipefail
THRESHOLD_MB=${1:-50}
THRESHOLD=$((THRESHOLD_MB * 1024 * 1024))

echo "[INFO] Scanning working tree for files larger than ${THRESHOLD_MB}MB (excluding .git directory)"

# Find large files (not in .git) regardless of git tracking status
find . -type f -not -path "./.git/*" -size +${THRESHOLD_MB}M -print0 | while IFS= read -r -d '' f; do
  size=$(stat -f%z "$f")
  echo "$size $f"
done | sort -nr | awk '{ sz=$1; file=$2; mb=sz/1024/1024; printf("%7.2f MB  %s\n", mb, file); }'

echo "\n[INFO] Top 10 largest tracked blobs (may include history)."
# Requires git installed
if git rev-parse --git-dir > /dev/null 2>&1; then
  git rev-list --objects --all | \
    git cat-file --batch-check='%(objecttype) %(objectname) %(objectsize) %(rest)' | \
    awk '$1=="blob" {print $3" "$2" "$4}' | sort -nr | head -n 10 | \
    awk '{ mb=$1/1024/1024; printf("%7.2f MB  %s (%s)\n", mb, $3, $2); }'
else
  echo "[WARN] Not a git repository?"
fi

cat <<NOTE

Next Steps if Oversized Files Are Tracked:
1. Remove from index (keep locally): git rm --cached path/to/file
2. Commit the removal: git commit -m "chore: remove large artifact"
3. If already pushed & needs purge: use git filter-repo (preferred) or BFG:
   git filter-repo --path path/to/file --invert-paths
4. Force push (only if acceptable): git push origin --force

Avoid committing dist/ or DMG artifacts; rely on build scripts & releases.
NOTE
