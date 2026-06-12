#!/bin/zsh
# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"
source venv/bin/activate
# Connect to MASK-E4B434 - the real mask!
python3 mask_control_server.py --address E3A6086B-E8F1-3774-C548-A25330A61C56 --initial 120