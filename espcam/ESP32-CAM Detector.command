#!/bin/bash

# Get the directory where this script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR"

clear
echo "🚀 ESP32-CAM AprilTag Detector"
echo "====================================="
echo "📡 Connect to 'ESP32-CAM-AP' WiFi first"
echo "🎯 Hold AprilTags in front of the camera"
echo "====================================="
echo ""

# Activate virtual environment and ensure AprilTag module is installed
source "$SCRIPT_DIR/esp32-cam-env/bin/activate"
python3 - <<'PYEOF'
import importlib, subprocess, sys

def ensure_apriltag():
    try:
        importlib.import_module('apriltag')
        return 'apriltag'
    except ImportError:
        try:
            importlib.import_module('pupil_apriltags')
            return 'pupil_apriltags'
        except ImportError:
            # Install pupil-apriltags for current user; works on macOS with PEP 668
            print("Installing pupil-apriltags…")
            subprocess.check_call([
                sys.executable, "-m", "pip", "install",
                "--user", "--break-system-packages", "pupil-apriltags"
            ])
            return 'pupil_apriltags'

ensure_apriltag()
PYEOF

# Run your detector script
python3 ESP32Cam_Detector.py

echo ""
echo "Press Enter to close this window..."
read