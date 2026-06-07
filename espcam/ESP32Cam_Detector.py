#!/usr/bin/env python3
"""
ESP32-CAM AprilTag Detector  v2.0.0

Connects to an ESP32-CAM MJPEG stream and runs AprilTag detection on each
frame, sending detections via OSC. The camera is used ONLY for AprilTag
fiducials, so the whole pipeline is tuned for LOW LATENCY ("immediate
reaction when a card is flipped") rather than image quality:

  * A background thread reads the MJPEG stream and keeps only the LATEST
    frame. The detector always works on the freshest frame and silently
    drops anything that piled up while it was busy. This is the single
    most important fix: with plain cv2.VideoCapture.read() in the main
    loop, frames buffer up and you detect on stale frames, so the lag
    grows the longer it runs.
  * Detection runs on the native low-res grayscale frame (no upscaling).
  * Optional headless mode (--no-display) removes all GUI overhead.

OSC output (all to --osc-ip:--osc-port, default 127.0.0.1:5001):
  /apriltag        <id>   per visible tag, EVERY frame   (back-compat)
  /apriltag/enter  <id>   the frame a tag first appears  (edge)
  /apriltag/exit   <id>   the frame a tag disappears     (edge)
  /apriltag/none   1      when the last tag leaves view  (edge)
  /cam_status      "connected" | "disconnected"          (edge)
  /cam/heartbeat   <seq> <fps> <connected>               (liveness, periodic)

The heartbeat is emitted from INSIDE the processing loop on a fixed
cadence (--heartbeat seconds), so it doubles as a watchdog: if the loop
hangs or the process dies, the beats stop and Max can alarm. Its payload
also tells fresh-frames-flowing apart from process-alive:
  seq        increments each beat (spot dropped/late beats)
  fps        frames processed since the last beat / interval
             (0 while connected=1 means the stream stalled)
  connected  1 = stream open, 0 = camera lost

The /enter, /exit and /none edges are what make a card flip feel instant
on the Max side — you don't wait for a timeout to know a tag is gone.
They use new OSC addresses, so an existing patch listening only on
/apriltag is unaffected.
"""

__version__ = "2.1.0"

import argparse
import sys
import threading
import time

try:
    import cv2  # OpenCV for capturing and displaying
except ImportError:
    sys.exit("Error: OpenCV (cv2) is not installed. Run 'pip install opencv-python'.")

try:
    from pupil_apriltags import Detector as AprilTagDetector
except ImportError:
    sys.exit("Error: The 'pupil-apriltags' package is not installed. Run 'pip install pupil-apriltags'.")

try:
    from pythonosc import udp_client
except ImportError:
    sys.exit("Error: The 'python-osc' package is not installed. Run 'pip install python-osc'.")


def parse_args():
    parser = argparse.ArgumentParser(description="Low-latency AprilTag detector for an ESP32-CAM stream.")
    parser.add_argument("--ip", default="192.168.4.1",
                        help="IP address of the ESP32-CAM (default: 192.168.4.1).")
    parser.add_argument("--port", default="81",
                        help="Stream port (default: 81).")
    parser.add_argument("--camera-url",
                        help="Full MJPEG stream URL; overrides --ip and --port.")
    parser.add_argument("--osc-port", type=int, default=5001,
                        help="OSC output port (default: 5001).")
    parser.add_argument("--osc-ip", default="127.0.0.1",
                        help="OSC output IP (default: 127.0.0.1).")
    parser.add_argument("--no-display", action="store_true",
                        help="Headless: skip the preview window for minimum latency/CPU (use in the show).")
    parser.add_argument("--width", type=int, default=640,
                        help="Preview window width only; detection always uses the native frame (default: 640).")
    parser.add_argument("--quad-decimate", type=float, default=1.0,
                        help="AprilTag quad_decimate. 1.0 = full res (best at low cam res); raise to 2.0 to "
                             "speed up detection at the cost of range (default: 1.0).")
    parser.add_argument("--nthreads", type=int, default=4,
                        help="AprilTag detector threads (default: 4).")
    parser.add_argument("--no-edges", action="store_true",
                        help="Disable /apriltag/enter, /exit and /none edge messages (send only /apriltag).")
    parser.add_argument("--no-continuous", action="store_true",
                        help="Don't send /apriltag every frame; rely on the /enter and /exit edges only.")
    parser.add_argument("--stats", action="store_true",
                        help="Print fps / detection-latency once per second.")
    parser.add_argument("--heartbeat", type=float, default=1.0,
                        help="Seconds between /cam/heartbeat liveness messages (0 disables). "
                             "Default: 1.0.")
    return parser.parse_args()


class LatestFrameReader:
    """Background MJPEG reader that always exposes only the most recent
    frame. Reading happens as fast as the stream delivers; the consumer
    grabs whatever is newest and ignores the rest, so latency never
    accumulates."""

    def __init__(self, url):
        self.url = url
        self._cap = None
        self._lock = threading.Lock()
        self._frame = None
        self._seq = 0          # increments on every new frame
        self._connected = False
        self._running = True
        self._thread = threading.Thread(target=self._loop, daemon=True)

    def start(self):
        self._thread.start()
        return self

    def _open(self):
        cap = cv2.VideoCapture(self.url)
        # Ask the backend to keep only the newest frame. Not all backends
        # honor this for MJPEG-over-HTTP, which is why the thread below
        # also drains by always reading the latest.
        try:
            cap.set(cv2.CAP_PROP_BUFFERSIZE, 1)
        except Exception:
            pass
        if cap.isOpened():
            return cap
        cap.release()
        return None

    def _loop(self):
        while self._running:
            if self._cap is None:
                self._cap = self._open()
                if self._cap is None:
                    with self._lock:
                        self._connected = False
                    time.sleep(0.5)
                    continue
                with self._lock:
                    self._connected = True
            ret, frame = self._cap.read()
            if not ret or frame is None:
                self._cap.release()
                self._cap = None
                with self._lock:
                    self._connected = False
                continue
            with self._lock:
                self._frame = frame
                self._seq += 1
                self._connected = True

    def latest(self):
        """Return (frame, seq, connected). frame is None until the first
        frame arrives."""
        with self._lock:
            return self._frame, self._seq, self._connected

    def stop(self):
        self._running = False
        if self._cap is not None:
            self._cap.release()


def main():
    args = parse_args()
    stream_url = args.camera_url or f"http://{args.ip}:{args.port}/stream"

    print(f"ESP32Cam_Detector v{__version__}")
    print(f"  stream: {stream_url}")
    print(f"  OSC -> {args.osc_ip}:{args.osc_port}")
    print(f"  display: {'off (headless)' if args.no_display else 'on'}  "
          f"quad_decimate: {args.quad_decimate}  edges: {not args.no_edges}  "
          f"heartbeat: {('%.1fs' % args.heartbeat) if args.heartbeat > 0 else 'off'}")

    detector = AprilTagDetector(
        families='tag36h11',
        nthreads=max(1, args.nthreads),
        quad_decimate=args.quad_decimate,
        refine_edges=1,
    )
    osc_client = udp_client.SimpleUDPClient(args.osc_ip, args.osc_port)

    reader = LatestFrameReader(stream_url).start()

    prev_ids = set()            # tags visible on the previous processed frame
    last_seq = -1               # last frame seq we actually processed
    last_connected = None       # to emit /cam_status only on change

    # Stats
    proc_frames = 0
    sum_detect_ms = 0.0
    last_stat = time.time()

    # Liveness heartbeat (emitted from this loop; see below).
    hb_interval = max(0.0, args.heartbeat)
    last_hb = time.time()
    hb_seq = 0
    hb_frames = 0          # frames processed since the last beat

    print("running — Ctrl-C to stop")
    try:
        while True:
            frame, seq, connected = reader.latest()

            # Surface connect/disconnect transitions to Max.
            if connected != last_connected:
                osc_client.send_message("/cam_status",
                                        "connected" if connected else "disconnected")
                print("camera connected" if connected else
                      "camera disconnected — reconnecting...")
                last_connected = connected

            # --- Liveness heartbeat ------------------------------------
            # Runs EVERY iteration (before the "skip stale frame" check),
            # so it keeps beating even while idle or reconnecting. Because
            # it lives in the main loop, a hang/crash stops the beats and
            # Max's watchdog fires. fps==0 while connected==1 means the
            # stream stalled even though the process is fine.
            if hb_interval > 0:
                hb_now = time.time()
                if hb_now - last_hb >= hb_interval:
                    fps = hb_frames / (hb_now - last_hb)
                    osc_client.send_message(
                        "/cam/heartbeat",
                        [hb_seq, round(fps, 1), 1 if connected else 0])
                    if args.no_display:
                        print(f"♥ heartbeat {hb_seq}  {fps:4.1f} fps  "
                              f"{'connected' if connected else 'DISCONNECTED'}")
                    hb_seq += 1
                    hb_frames = 0
                    last_hb = hb_now

            # Nothing new since we last processed? Don't burn CPU on a
            # stale frame; sleep a hair and poll again. (This is the
            # opposite of buffering: we never fall behind the stream.)
            if frame is None or seq == last_seq:
                # Pump the GUI event loop even when idle so the window
                # stays responsive.
                if not args.no_display:
                    if cv2.waitKey(1) & 0xFF == ord('q'):
                        break
                else:
                    time.sleep(0.002)
                continue
            last_seq = seq

            # Detect on the native low-res grayscale frame — no resize.
            t0 = time.perf_counter()
            gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
            detections = detector.detect(gray)
            detect_ms = (time.perf_counter() - t0) * 1000.0

            cur_ids = set(int(d.tag_id) for d in detections)

            # Per-frame presence (back-compat contract).
            if not args.no_continuous:
                for tid in cur_ids:
                    osc_client.send_message("/apriltag", tid)

            # Edge events: the instant a card appears / disappears.
            if not args.no_edges:
                for tid in (cur_ids - prev_ids):
                    osc_client.send_message("/apriltag/enter", tid)
                for tid in (prev_ids - cur_ids):
                    osc_client.send_message("/apriltag/exit", tid)
                if prev_ids and not cur_ids:
                    osc_client.send_message("/apriltag/none", 1)
            prev_ids = cur_ids

            # Optional preview.
            if not args.no_display:
                if args.width > 0:
                    h, w = frame.shape[:2]
                    scale = args.width / float(w)
                    disp = cv2.resize(frame, (args.width, int(h * scale)))
                    sx = sy = scale
                else:
                    disp = frame.copy()
                    sx = sy = 1.0
                for det in detections:
                    corners = (det.corners * [sx, sy]).astype(int)
                    cv2.polylines(disp, [corners], True, (0, 255, 0), 2)
                    cx, cy = int(det.center[0] * sx), int(det.center[1] * sy)
                    cv2.circle(disp, (cx, cy), 5, (0, 0, 255), -1)
                    cv2.putText(disp, str(det.tag_id), (cx + 6, cy - 6),
                                cv2.FONT_HERSHEY_SIMPLEX, 0.6, (255, 0, 0), 2)
                cv2.imshow("ESP32-CAM AprilTag Detector", disp)
                if cv2.waitKey(1) & 0xFF == ord('q'):
                    break

            # Stats.
            proc_frames += 1
            hb_frames += 1
            sum_detect_ms += detect_ms
            if args.stats:
                now = time.time()
                if now - last_stat >= 1.0:
                    avg = sum_detect_ms / proc_frames if proc_frames else 0.0
                    print(f"{proc_frames} fps  detect {avg:.1f} ms/frame  "
                          f"tags: {sorted(cur_ids)}")
                    proc_frames = 0
                    sum_detect_ms = 0.0
                    last_stat = now
    except KeyboardInterrupt:
        pass
    finally:
        reader.stop()
        cv2.destroyAllWindows()
        print("\nstopped.")


if __name__ == "__main__":
    main()
