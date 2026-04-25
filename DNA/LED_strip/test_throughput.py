#!/usr/bin/env python3
"""
test_throughput.py — bypasses Max entirely. Sends a fixed 274-byte frame
to the Arduino at 30 fps and counts the R handshake bytes that come back.

USAGE:
  1. CLOSE Max's [serial] (or close Max). The port can only be open in
     one program at a time.
  2. In a terminal:
       cd <this folder>
       python3 -m pip install pyserial   (one-time, if not already)
       python3 test_throughput.py
  3. Watch the output. After a few seconds the rate stabilizes.

INTERPRETATION:
  sent ~30/s, recv ~30/s   -> the link is fine, problem is something
                              specific to Max's [serial] write rate.
  sent ~30/s, recv ~1/s    -> Arduino/driver/cable is the bottleneck;
                              Max isn't the problem.
  sent ~30/s, recv 0/s     -> wrong port, baud, or sketch not running.
"""
import serial
import threading
import time

PORT = '/dev/cu.usbmodem3101'
BAUD = 115200
FPS  = 30

# One valid frame: header + LED 0 red + 89 LEDs off + checksum
PAYLOAD = bytes([255, 0, 0] + [0] * 267)
CHK     = sum(PAYLOAD) & 0xFF
FRAME   = bytes([70, 1, 14]) + PAYLOAD + bytes([CHK])

assert len(FRAME) == 274, f"frame length {len(FRAME)} != 274"

ser = serial.Serial(PORT, BAUD, timeout=0)

recv_R = 0
recv_other = 0
running = True

def reader():
    global recv_R, recv_other
    while running:
        data = ser.read(64)
        for b in data:
            if b == 0x52:   # 'R'
                recv_R += 1
            else:
                recv_other += 1

t = threading.Thread(target=reader, daemon=True)
t.start()

interval = 1.0 / FPS
sent = 0
last_report = time.time()

print(f"sending {FPS} fps to {PORT} @ {BAUD} ...  (Ctrl-C to stop)")
try:
    while True:
        t0 = time.time()
        ser.write(FRAME)
        sent += 1
        now = time.time()
        if now - last_report >= 1.0:
            print(f"sent: {sent}/s    recv R: {recv_R}/s    other bytes: {recv_other}/s")
            sent = 0
            recv_R = 0
            recv_other = 0
            last_report = now
        # pace
        elapsed = time.time() - t0
        if elapsed < interval:
            time.sleep(interval - elapsed)
except KeyboardInterrupt:
    running = False
    ser.close()
    print("\nstopped.")
