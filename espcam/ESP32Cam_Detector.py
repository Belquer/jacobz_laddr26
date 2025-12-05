#!/usr/bin/env python3
"""
ESP32‑CAM AprilTag Detector

Connects to an ESP32‑CAM MJPEG stream and runs AprilTag detection on each frame.
"""

import argparse
import sys

try:
    import cv2  # OpenCV for capturing and displaying
except ImportError:
    sys.exit("Error: OpenCV (cv2) is not installed. Run 'pip install opencv-python'.")

try:
    from pupil_apriltags import Detector as AprilTagDetector
except ImportError:
    sys.exit("Error: The 'pupil-apriltags' package is not installed. Run 'pip install pupil-apriltags'.")

def parse_args():
    parser = argparse.ArgumentParser(description="Detect AprilTags from an ESP32‑CAM stream.")
    parser.add_argument("--ip", default="192.168.4.1",
                        help="IP address of the ESP32‑CAM (default: 192.168.4.1).")
    parser.add_argument("--port", default="81",
                        help="Stream port (default: 81).")
    parser.add_argument("--camera-url",
                        help="Full MJPEG stream URL; overrides --ip and --port.")
    parser.add_argument("--width", type=int, default=640,
                        help="Display width (height is scaled automatically).")
    return parser.parse_args()

def main():
    args = parse_args()
    # Build the streaming URL
    stream_url = args.camera_url or f"http://{args.ip}:{args.port}/stream"
    print(f"Connecting to stream at {stream_url}...")
    cap = cv2.VideoCapture(stream_url)
    if not cap.isOpened():
        sys.exit(f"Could not open video stream at {stream_url}")

    detector = AprilTagDetector(families='tag36h11')
    print("Stream open.")

    try:
        while True:
            ret, frame = cap.read()
            if not ret or frame is None:
                print("Frame retrieval failed, retrying...")
                continue

            # Optionally resize for display
            if args.width > 0:
                h, w = frame.shape[:2]
                scale = args.width / float(w)
                frame_display = cv2.resize(frame, (args.width, int(h * scale)))
            else:
                frame_display = frame.copy()

            gray = cv2.cvtColor(frame_display, cv2.COLOR_BGR2GRAY)
            detections = detector.detect(gray)

            for det in detections:
                # Draw bounding box
                corners = det.corners.astype(int)
                cv2.polylines(frame_display, [corners], True, (0, 255, 0), 2)
                # Mark centre and tag ID
                centre = (int(det.center[0]), int(det.center[1]))
                cv2.circle(frame_display, centre, 5, (0, 0, 255), -1)
                cv2.putText(frame_display, str(det.tag_id),
                            (centre[0] + 6, centre[1] - 6),
                            cv2.FONT_HERSHEY_SIMPLEX, 0.6, (255, 0, 0), 2)

            cv2.imshow("ESP32‑CAM AprilTag Detector", frame_display)
            cv2.waitKey(1)
    finally:
        cap.release()
        cv2.destroyAllWindows()

if __name__ == "__main__":
    main()