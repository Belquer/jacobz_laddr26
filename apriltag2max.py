"""
AprilTag to Max/MSP OSC bridge (Python .py version)
(Original source was apriltag2max.txt)
"""

# NOTE: See usage examples and documentation inside apriltag2max.txt for full comments.
# This file replicates the functionality for conventional Python invocation.

import cv2, math, time, argparse, sys, platform, subprocess, json, os
from pupil_apriltags import Detector
from pythonosc import udp_client

MAX_IP, MAX_PORT = "127.0.0.1", 8000
client = udp_client.SimpleUDPClient(MAX_IP, MAX_PORT)

# ---- Helper discovery functions (copied from txt version) ----

def probe_cameras(limit=4):
    found = []
    for idx in range(limit):
        cap = cv2.VideoCapture(idx)
        if cap.isOpened():
            ok, frame = cap.read()
            if ok:
                found.append(idx)
            cap.release()
    return found

def get_macos_camera_names():
    if platform.system() != 'Darwin':
        return []
    try:
        out = subprocess.check_output(['system_profiler', 'SPCameraDataType', '-json'], stderr=subprocess.DEVNULL, timeout=5)
        data = json.loads(out.decode('utf-8', errors='ignore'))
        cams = data.get('SPCameraDataType', [])
        names = []
        for cam in cams:
            name = cam.get('_name') or cam.get('name')
            if name:
                names.append(name)
        return names
    except Exception:
        try:
            out = subprocess.check_output(['system_profiler', 'SPCameraDataType'], stderr=subprocess.DEVNULL, timeout=5).decode('utf-8', errors='ignore')
            names = []
            for line in out.splitlines():
                line=line.strip()
                if line.endswith('Camera:') and not line.startswith('System'):
                    names.append(line[:-1])
                elif 'iPhone Camera' in line:
                    names.append('iPhone Camera')
            return names
        except Exception:
            return []

def annotate_indices_with_names(indices, names):
    annotated = []
    for i, idx in enumerate(indices):
        label = names[i] if i < len(names) else 'Unknown Device'
        annotated.append((idx, label))
    return annotated

def heuristic_align_names(opencv_indices, mac_names, ffmpeg_pairs):
    """Attempt to produce a better mapping between OpenCV indices and reported names.

    Strategy:
    1. If ffmpeg pairs length matches number of opencv indices, use their order (ffmpeg indices ignored, just names).
    2. Otherwise, fall back to mac_names but try to reorder if a Continuity/iPhone camera is detected (look for 'iPhone' or unusual lower FPS ~15).
    3. If mismatch, return mac_names unchanged.
    """
    if ffmpeg_pairs and len(ffmpeg_pairs) >= len(opencv_indices):
        # Use ffmpeg ordering as it usually reflects UI ordering; slice to needed length.
        return [p[1] for p in ffmpeg_pairs[:len(opencv_indices)]]

    if not mac_names:
        return mac_names

    # If there are exactly two cameras, and one looks like an iPhone/Continuity, place MacBook first.
    if len(mac_names) == 2 and len(opencv_indices) == 2:
        mac_like = [n for n in mac_names if 'macbook' in n.lower() or 'facetime' in n.lower()]
        iphone_like = [n for n in mac_names if 'iphone' in n.lower()]
        if mac_like and iphone_like:
            # Ensure mac-like name is first
            ordered = mac_like + [n for n in mac_names if n not in mac_like]
            return ordered
    return mac_names

def get_ffmpeg_avfoundation_names():
    if platform.system() != 'Darwin':
        return []
    cmd = ['ffmpeg', '-f', 'avfoundation', '-list_devices', 'true', '-i', '']
    try:
        proc = subprocess.run(cmd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, timeout=6)
        text = proc.stdout.decode('utf-8', errors='ignore')
        capture = False
        lines = []
        for line in text.splitlines():
            if 'AVFoundation video devices' in line:
                capture = True
                continue
            if 'AVFoundation audio devices' in line:
                break
            if capture:
                lines.append(line.strip())
        results = []
        for l in lines:
            if l.startswith('[') and ']' in l:
                try:
                    idx_part = l.split(']',1)[0][1:]
                    name_part = l.split(']',1)[1].strip().strip('"')
                    results.append((idx_part, name_part))
                except Exception:
                    continue
        return results
    except Exception:
        return []

def open_camera(index, width, height, fps):
    cap = cv2.VideoCapture(index)
    if not cap.isOpened():
        return None
    cap.set(cv2.CAP_PROP_FRAME_WIDTH, width)
    cap.set(cv2.CAP_PROP_FRAME_HEIGHT, height)
    if fps:
        cap.set(cv2.CAP_PROP_FPS, fps)
    return cap

def parse_args():
    ap = argparse.ArgumentParser()
    ap.add_argument('--cam', type=int, default=None, help='(Deprecated) numeric OpenCV camera index')
    ap.add_argument('--source', type=str, default=None, help='Unified source: camera index (e.g. 0), video file path, or stream URL (e.g. http://HOST:81/stream)')
    ap.add_argument('--esp', type=str, default=None, help='ESP32-CAM host/IP (builds http://<host>:81/stream)')
    ap.add_argument('--width', type=int, default=640)
    ap.add_argument('--height', type=int, default=480)
    ap.add_argument('--fps', type=int, default=30)
    ap.add_argument('--show', action='store_true')
    ap.add_argument('--family', default='tag36h11')
    ap.add_argument('--list', action='store_true')
    ap.add_argument('--probe-max', type=int, default=6)
    # interactive deprecated
    ap.add_argument('--ffmpeg-names', action='store_true')
    ap.add_argument('--reconnect', action='store_true')
    ap.add_argument('--reconnect-tries', type=int, default=5)
    ap.add_argument('--reconnect-delay', type=float, default=2.0)
    ap.add_argument('--preview-cycle', action='store_true', help='(Deprecated) retained for backward compatibility (no effect if --source provided)')
    ap.add_argument('--preview-seconds', type=float, default=2.0, help='(Deprecated) seconds to show each camera in cycle')
    return ap.parse_args()

CONFIG_FILENAME = 'camera_config.json'

def load_config():
    if os.path.isfile(CONFIG_FILENAME):
        try:
            with open(CONFIG_FILENAME,'r') as f:
                return json.load(f)
        except Exception:
            return {}
    return {}

def save_config(cfg):
    try:
        with open(CONFIG_FILENAME,'w') as f:
            json.dump(cfg,f, indent=2)
    except Exception as e:
        print(f'WARN: Could not save config: {e}')

# ----------------- Reusable detection loop for GUI integration -----------------
def run_detection(stop_event, source, host='127.0.0.1', port=8000, width=640, height=480, fps=30,
                  family='tag36h11', reconnect=False, reconnect_tries=5, reconnect_delay=2.0,
                  status_callback=None):
    """Run AprilTag detection until stop_event is set.

    Parameters:
      stop_event (threading.Event): Signal to terminate loop.
      source (str|int): Camera index (int) or stream path/URL.
      host (str), port (int): OSC destination.
      width, height, fps: Capture settings (best-effort for local cameras).
      family (str): AprilTag family.
      reconnect (bool), reconnect_tries (int), reconnect_delay (float): Reconnect policy.
      status_callback (callable): Optional function(message:str) for UI updates.
    """
    try:
        src_str = str(source)
        is_index = src_str.isdigit()
        cam_index = int(src_str) if is_index else -1
        if is_index:
            cap = open_camera(cam_index, width, height, fps)
        else:
            cap = cv2.VideoCapture(src_str)
        if cap is None or not cap.isOpened():
            if status_callback:
                status_callback(f'ERROR opening source {source}')
            return
        det = Detector(families=family, nthreads=2, refine_edges=True)
        osc_client = udp_client.SimpleUDPClient(host, port)
        frames = 0
        t0 = time.time()
        fail_streak = 0

        def emit_status(msg):
            if status_callback:
                status_callback(msg)

        def attempt_reconnect_local():
            nonlocal cap, fail_streak
            if not reconnect:
                return
            emit_status('Reconnecting...')
            try:
                cap.release()
            except Exception:
                pass
            time.sleep(reconnect_delay)
            cap_new = open_camera(cam_index, width, height, fps) if is_index else cv2.VideoCapture(src_str)
            if cap_new and cap_new.isOpened():
                cap = cap_new
                fail_streak = 0
                emit_status('Reconnect successful')
            else:
                emit_status('Reconnect failed')

        emit_status(f'Source open ({width}x{height}) sending OSC to {host}:{port}')
        while not stop_event.is_set():
            ok, frame = cap.read()
            if not ok:
                fail_streak += 1
                if reconnect and fail_streak >= reconnect_tries:
                    attempt_reconnect_local()
                else:
                    if fail_streak == 1 or fail_streak % 25 == 0:
                        emit_status(f'Read fail streak={fail_streak}')
                time.sleep(0.02)
                continue
            if fail_streak:
                fail_streak = 0
            gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
            results = det.detect(gray, estimate_tag_pose=False)
            for r in results:
                cx, cy = float(r.center[0]), float(r.center[1])
                (x0,y0),(x1,y1) = r.corners[0], r.corners[1]
                ang = math.degrees(math.atan2(y1-y0, x1-x0))
                osc_client.send_message('/card', [int(r.tag_id), cx, cy, ang])
            frames += 1
            if frames % 60 == 0:
                elapsed = time.time() - t0
                fps_calc = frames / elapsed if elapsed > 0 else 0
                emit_status(f'Frames {frames}  Tags {len(results)}  AvgFPS {fps_calc:.1f}')
        emit_status('Stopping...')
    except Exception as e:
        if status_callback:
            status_callback(f'Loop error: {e}')
    finally:
        try:
            cap.release()
        except Exception:
            pass
        if status_callback:
            status_callback('Stopped')

def main():
    args = parse_args()

    if args.list:
        limit = max(1, args.probe_max)
        print(f'Probing camera indices 0..{limit-1} ...')
        cams = []
        for idx in range(limit):
            cap = cv2.VideoCapture(idx)
            if cap.isOpened():
                ok, frame = cap.read()
                w = cap.get(cv2.CAP_PROP_FRAME_WIDTH)
                h = cap.get(cv2.CAP_PROP_FRAME_HEIGHT)
                fpsr = cap.get(cv2.CAP_PROP_FPS)
                print(f'  [{idx}] OPEN  {int(w)}x{int(h)}  ~{fpsr:.1f}fps   frame_ok={ok}')
                cams.append(idx)
                cap.release()
            else:
                print(f'  [{idx}] (not available)')
        mac_names = get_macos_camera_names()
        ffmpeg_names = get_ffmpeg_avfoundation_names() if args.ffmpeg_names else []
        if mac_names:
            print('\nmacOS reported camera devices:')
            for n in mac_names:
                print(f'  - {n}')
            if len(mac_names) != len(cams):
                print('Note: Count mismatch between OpenCV-accessible cameras and system list; mapping is heuristic.')
        if ffmpeg_names:
            print('\nffmpeg avfoundation reported video devices:')
            for dev_idx, dev_name in ffmpeg_names:
                print(f'  [{dev_idx}] {dev_name}')
            print('Note: ffmpeg indices are separate from OpenCV indices; ordering may differ.')
        if not cams:
            print('No cameras opened.')
        else:
            if mac_names:
                annotated = annotate_indices_with_names(cams, mac_names)
                print('\nUsable cameras (index -> name):')
                for idx, label in annotated:
                    print(f'  {idx}: {label}')
            elif ffmpeg_names:
                print('\nUsable cameras (OpenCV index -> ffmpeg name guess):')
                for pos, idx in enumerate(cams):
                    label = ffmpeg_names[pos][1] if pos < len(ffmpeg_names) else 'Unknown Device'
                    print(f'  {idx}: {label}')
            else:
                print(f'Found {len(cams)} usable camera(s): {cams}')
        return

    # Unified source handling (interactive removed)
    cfg = load_config()
    preferred = cfg.get('preferred_source')

    if args.source:
        source = args.source
        cfg['preferred_source'] = source
        save_config(cfg)
    elif args.esp:
        source = f'http://{args.esp}:81/stream'
        cfg['preferred_source'] = source
        save_config(cfg)
    elif args.cam is not None:
        source = str(args.cam)
        cfg['preferred_source'] = source
        save_config(cfg)
    elif preferred:
        print(f'Using preferred source from config: {preferred}')
        source = str(preferred)
    else:
        cams = probe_cameras(min(6, args.probe_max))
        if not cams:
            print('ERROR: No camera responded.')
            sys.exit(1)
        source = str(cams[0])
        if len(cams) > 1:
            print(f'Auto-selected first camera index {source}; override with --source / --cam / --esp')

    is_index = source.isdigit()
    if is_index:
        cam_index = int(source)
        print(f'Opening local camera index {cam_index}')
        cap = open_camera(cam_index, args.width, args.height, args.fps)
    else:
        print(f'Opening stream/file source: {source}')
        cap = cv2.VideoCapture(source)
    if cap is None or not cap.isOpened():
        print(f'ERROR: Could not open source {source}')
        sys.exit(2)
    if not is_index:
        cam_index = -1

    actual_w = cap.get(cv2.CAP_PROP_FRAME_WIDTH)
    actual_h = cap.get(cv2.CAP_PROP_FRAME_HEIGHT)
    actual_fps = cap.get(cv2.CAP_PROP_FPS)
    print(f'Source open. Resolution: {actual_w}x{actual_h} @ {actual_fps:.1f}fps (requested {args.width}x{args.height}@{args.fps})')

    det = Detector(families=args.family, nthreads=2, refine_edges=True)
    t_prev = time.time()
    frames = 0
    fail_streak = 0

    def attempt_reconnect():
        nonlocal cap, fail_streak
        if not args.reconnect:
            return
        print(f'Attempting reconnect to source {source} ...')
        cap.release()
        time.sleep(args.reconnect_delay)
        cap_new = open_camera(cam_index, args.width, args.height, args.fps) if is_index else cv2.VideoCapture(source)
        if cap_new and cap_new.isOpened():
            cap = cap_new
            fail_streak = 0
            print('Reconnect successful.')
        else:
            print('Reconnect failed; will retry after further failures.')

    try:
        while True:
            ok, frame = cap.read()
            if not ok:
                fail_streak += 1
                if fail_streak >= args.reconnect_tries and args.reconnect:
                    attempt_reconnect()
                    continue
                if fail_streak == 1 or fail_streak % 10 == 0:
                    print(f'WARN: Failed to read frame (streak={fail_streak})')
                time.sleep(0.05)
                continue
            else:
                if fail_streak > 0:
                    if fail_streak >= args.reconnect_tries and args.reconnect:
                        print(f'Recovered after reconnect (previous streak={fail_streak}).')
                    fail_streak = 0

            frames += 1
            gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
            results = det.detect(gray, estimate_tag_pose=False)

            for r in results:
                cx, cy = float(r.center[0]), float(r.center[1])
                (x0,y0),(x1,y1) = r.corners[0], r.corners[1]
                ang = math.degrees(math.atan2(y1-y0, x1-x0))
                client.send_message('/card', [int(r.tag_id), cx, cy, ang])

            if args.show:
                for r in results:
                    pts = r.corners.astype(int)
                    cv2.polylines(frame, [pts], True, (0,255,0), 2)
                    cx, cy = int(r.center[0]), int(r.center[1])
                    cv2.circle(frame, (cx,cy), 4, (0,0,255), -1)
                    cv2.putText(frame, f'ID {r.tag_id}', (pts[0][0], pts[0][1]-5), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (255,255,0), 1)

            if frames % 60 == 0:
                now = time.time()
                elapsed = now - t_prev
                fps_calc = frames / elapsed if elapsed > 0 else 0
                print(f'Frames: {frames}  Detected tags (last frame): {len(results)}  Avg FPS: {fps_calc:.1f}')

            if args.show:
                cv2.imshow('AprilTags', frame)
                key = cv2.waitKey(1) & 0xFF
                if key == 27:
                    print('ESC pressed, exiting...')
                    break
                elif key in (ord('q'), ord('Q')):
                    print('Q pressed, exiting...')
                    break

    except KeyboardInterrupt:
        print('\nInterrupted by user.')
    finally:
        cap.release()
        if args.show:
            cv2.destroyAllWindows()
        print('Source released. Goodbye.')

if __name__ == '__main__':
    main()
