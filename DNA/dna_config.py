#!/usr/bin/env python3
"""
dna_config.py v1.1.0 — set LED counts for the DNA installation.

Usage:
    python3 dna_config.py <strand_A_count> <strand_B_count>

What it does:
  1. Updates LED_strip.ino, dna_frame.js, dna_mapping.js, dna_motion.js
     in place with the new counts.
  2. Bumps each file's PATCH version (semver).
  3. Compiles and uploads the Arduino sketch (Uno on first
     /dev/cu.usbmodem* found).

What it does NOT do (you do these in Max by hand after running):
  - Update the [jit.matrix dna ...] dim
  - Update the [jit.submatrix prevA / prevB] dim and offset
  - Update the [jit.matrix prevA / prevB] preview dims
  The script prints the exact values you need to enter.

Important:
  Close Max's [serial] before running, or the upload will fail with
  "device busy".
"""
import sys
import re
import os
import subprocess
import glob


VERSION = "1.0.0"


def bump_patch(version_str):
    parts = version_str.split('.')
    parts[2] = str(int(parts[2]) + 1)
    return '.'.join(parts)


def update_file(path, replacements, version_re=None):
    with open(path, 'r') as f:
        content = f.read()

    original = content
    for pattern, replacement in replacements:
        content = re.sub(pattern, replacement, content)

    if version_re:
        m = re.search(version_re, content)
        if m:
            old_v = m.group(1)
            new_v = bump_patch(old_v)
            content = content.replace(m.group(0),
                                      m.group(0).replace(old_v, new_v))
            print(f"  {os.path.basename(path):20s} v{old_v} -> v{new_v}")
        else:
            print(f"  {os.path.basename(path):20s} (no version tag found, skipping bump)")
    else:
        print(f"  {os.path.basename(path):20s} updated")

    if content != original:
        with open(path, 'w') as f:
            f.write(content)


def find_port():
    ports = sorted(glob.glob('/dev/cu.usbmodem*'))
    return ports[0] if ports else None


def main():
    if len(sys.argv) != 3:
        print(__doc__.strip())
        return 1

    try:
        a = int(sys.argv[1])
        b = int(sys.argv[2])
    except ValueError:
        print("ERROR: counts must be integers.")
        return 1

    if a < 1 or b < 0:
        print("ERROR: strand A must be >=1, strand B must be >=0.")
        print("       (B = 0 is not safe — set B counts only when wired,")
        print("        and remove stripB from the sketch entirely otherwise.)")
        return 1

    total = a + b
    here = os.path.dirname(os.path.abspath(__file__))

    print(f"dna_config.py v{VERSION}")
    print(f"Setting NUM_LEDS_A = {a}, NUM_LEDS_B = {b}, total = {total}")
    print()

    ino = os.path.join(here, 'LED_strip', 'LED_strip.ino')
    update_file(ino, [
        (r'#define NUM_LEDS_A\s+\d+', f'#define NUM_LEDS_A   {a}'),
        (r'#define NUM_LEDS_B\s+\d+', f'#define NUM_LEDS_B   {b}'),
    ], version_re=r'#define VERSION "([\d.]+)"')

    # Max-side JS files now live alongside the Max project at
    # <repo>/Max/JacobzLAddr26-dna/code/  (this script is in <repo>/DNA/).
    code = os.path.normpath(os.path.join(here, '..', 'Max',
                                         'JacobzLAddr26-dna', 'code'))

    update_file(os.path.join(code, 'dna_frame.js'), [
        (r'var NUM_LEDS\s*=\s*\d+;',
         f'var NUM_LEDS    = {total};'),
        (r'var PAYLOAD_LEN\s*=\s*NUM_LEDS\s*\*\s*3;\s*//.*',
         f'var PAYLOAD_LEN = NUM_LEDS * 3;   // {total * 3}'),
    ], version_re=r'dna_frame\.js v([\d.]+)')

    update_file(os.path.join(code, 'dna_motion.js'), [
        (r'var NUM_LEDS\s*=\s*\d+;', f'var NUM_LEDS = {total};'),
    ], version_re=r'dna_motion\.js v([\d.]+)')

    update_file(os.path.join(code, 'dna_mapping.js'), [
        (r'var NUM_LEDS\s*=\s*\d+;',   f'var NUM_LEDS   = {total};'),
        (r'var NUM_LEDS_A\s*=\s*\d+;', f'var NUM_LEDS_A = {a};'),
        (r'var NUM_LEDS_B\s*=\s*\d+;', f'var NUM_LEDS_B = {b};'),
    ], version_re=r'dna_mapping\.js v([\d.]+)')

    print()
    print("Compiling sketch...")
    r = subprocess.run(['arduino-cli', 'compile',
                        '--fqbn', 'arduino:avr:uno', ino],
                       capture_output=True, text=True)
    if r.returncode != 0:
        print("COMPILE FAILED:")
        print(r.stdout)
        print(r.stderr)
        return 1
    print(r.stdout.strip().split('\n')[-2:][0] if r.stdout else '(compiled)')

    port = find_port()
    if port is None:
        print()
        print("ERROR: no /dev/cu.usbmodem* device found. Plug in the Uno")
        print("       and re-run, or upload manually.")
        return 1

    print(f"Uploading to {port}...")
    r = subprocess.run(['arduino-cli', 'upload',
                        '--fqbn', 'arduino:avr:uno',
                        '--port', port, ino],
                       capture_output=True, text=True)
    if r.returncode != 0:
        print("UPLOAD FAILED:")
        print(r.stderr)
        print()
        print("If you see 'device busy' or 'no such file': close Max's")
        print("[serial] (send 'port 0' or close the patch) and retry.")
        return 1

    print()
    print("DONE — source updated, versions bumped, sketch uploaded.")
    print()
    print("Now update these in your Max patch:")
    print(f"  [jit.matrix dna 3 char {total} 1 @planemap 1 2 3 @interp 1]")
    print(f"  [jit.submatrix prevA]   send: dim {a} 1, offset 0 0")
    print(f"  [jit.submatrix prevB]   send: dim {b} 1, offset {a} 0")
    print(f"  [jit.matrix prevA 3 char {a} 60]")
    print(f"  [jit.matrix prevB 3 char {b} 60]")
    print()
    print("Then in Max:")
    print(f"  - Reopen [serial] (port {os.path.basename(port)}, baud 250000)")
    print(f"  - Recompile all [v8] boxes; you should see the new versions")
    print(f"    print in the Max console (e.g. 'dna_frame.js v1.0.1')")
    return 0


if __name__ == '__main__':
    sys.exit(main())
