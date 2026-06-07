#!/bin/bash
# ESP32-CAM Detector.command v1.1.0
# Double-click launcher for the AprilTag detector (ESP32Cam_Detector.py).
cd "$(dirname "$0")"

clear
echo "🚀 ESP32-CAM AprilTag Detector  (launcher v1.1.0)"
echo "====================================="
echo "📡 Connect to 'ESP32-CAM-AP' WiFi first"
echo "🎯 Hold AprilTags in front of the camera"
echo "====================================="
echo ""

# Display vs headless. Headless = lowest latency/CPU for the live show;
# the preview window is only useful for aiming/setup.
echo "Run mode:"
echo "  1) Preview window (setup / aiming)"
echo "  2) Headless --no-display (show / lowest latency)"
read -p "Enter 1 or 2 [default 1]: " mode
EXTRA_ARGS=""
if [ "$mode" = "2" ]; then
  EXTRA_ARGS="--no-display"
fi
echo ""

# Activate virtual environment and ensure the AprilTag module is installed.
source "$(dirname "$0")/esp32-cam-env/bin/activate"
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

# Run the detector. $EXTRA_ARGS stays unquoted so it expands to a real flag
# (or to nothing in preview mode).
python3 ESP32Cam_Detector.py $EXTRA_ARGS

echo ""
read -p "Press Enter to close..."
