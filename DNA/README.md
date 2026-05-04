# DNA — addressable LED double helix

Video-driven addressable LED installation. A WS281x-class rope is cut in
half, arranged as a double helix, and driven by an Arduino Uno over
serial at 250000 baud. A Max patch resamples a video source through a
helical sample-lookup into a per-LED RGB stream and ships it down the
wire.

## Current configuration

| | |
| --- | --- |
| Strand A LED count | 108 (`D9`) |
| Strand B LED count | 105 (`D10`) |
| Total LEDs | 213 |
| Topology | parallel (two independent data lines, both base→top) |
| Baud | 250000 |
| Color order | BGR |

To change LED counts (longer or shorter rope), see
[Reconfiguring counts](#reconfiguring-counts) below.

## Hardware

### Rope

| Field          | Value                                                         |
| -------------- | ------------------------------------------------------------- |
| Product        | maylit 360° Luminous Reticulate Weave Rope Lights, 16.4 ft    |
| Marketing name | "Addressable ICRGB LED Strip Lights"                          |
| Spacing        | ~18 mm per LED                                                |
| Voltage        | 5 V                                                           |
| Wires          | 3 (`+5V`, `GND`, `DATA`)                                      |
| Bit rate       | 800 kHz                                                       |
| Addressing     | Per-LED (each LED independently addressable)                  |
| Color order    | **BGR**                                                       |
| Protocol       | WS281x-compatible (likely WS2812B-BGR or SK6812-BGR variant)  |

The exact IC marking is hidden inside the silicone sleeve, but firmware
behavior is identical to a WS2812B with `NEO_BGR` set.

### Wiring

```
                                ┌─────────── 5V PSU ─────────────┐
                                │+                              -│
   USB ── Arduino Uno ──────────┤                                │
              │                 │                                │
              D9  ─── DIN ── strand A (108 LEDs) ── (DOUT, unused)
              D10 ─── DIN ── strand B (105 LEDs) ── (DOUT, unused)
              GND ──┬─────────────────────────────────────────────┐
                    ├── strand A GND ──┐                          │
                    └── strand B GND ──┤                          │
                                       └──────────── PSU GND ─────┘
              5V ←── USB only          
                                       PSU +5V ── strand A +5V ─┐
                                       PSU +5V ── strand B +5V ─┤
                                                                 ┘
```

Strands are powered **in parallel** from the PSU at their bases. Common
ground between Arduino, both strands, and PSU is mandatory — without it,
data is unreliable. The Arduino stays USB-powered (independent from
the strip's PSU).

For long runs, **inject power at multiple points** along each strand —
voltage drop along the rope's thin internal copper traces will dim the
far pixels and shift them red at higher brightness.

### Power budget

Each LED can pull up to ~60 mA at full white. For 213 LEDs at full white
that's ~12.8 A. Production-scale PSU should be 5 V at 15 A or higher
with fused distribution.

While running on a smaller bench supply, **lower current via the Max
side** rather than upgrading hardware: send `master 0.3` to
`dna_frame.js` and the rope draws ~30 % of full current. Voltage drop
scales linearly with current, so this both fits in the small PSU's
budget and reduces the rope-internal voltage drop, lighting all LEDs
cleanly to the far end.

### Strand color verification

If colors look wrong, run the BGR sanity check from Max:

| Sent value          | Should display |
| ------------------- | -------------- |
| `255, 0, 0` (R,G,B) | red            |
| `0, 255, 0`         | green          |
| `0, 0, 255`         | blue           |

If pure red comes out blue, the color order is wrong — change `NEO_BGR`
in `LED_strip.ino` to whatever matches.

## Software

All source files carry a semantic version (`vMAJOR.MINOR.PATCH`) that
prints to the Max console (or the serial monitor) on load, so you can
verify which version is actually loaded.

### Arduino sketches (`LED_strip/`)

- **`LED_strip.ino`** — production sketch. Listens on serial at 250000
  for framed pixel data, drives both strands via `Adafruit_NeoPixel`,
  and sends `'R'` after each successful frame as a ready handshake.
  Prints `LED_strip vX.Y.Z` over serial on boot.
- `rainbow/rainbow.ino` — bench rainbow test (USB-powered, 8 LEDs).
- `scan/scan.ino` — chipset / count diagnostic.
- `echo/echo.ino` — echoes every byte; verifies link integrity.
- `debug/debug.ino` — instrumented parser; prints stats once/sec.
- `test_throughput.py` — Python sender that bypasses Max for isolating
  Max-side issues from sketch/link issues.

### Wire protocol (Max → Arduino)

```
'F'(0x46), LEN_HI, LEN_LO, [LEN bytes RGB], CHK
```

- `LEN` = `NUM_LEDS * 3`, encoded as 16-bit big-endian.
- Payload is `R, G, B` bytes per pixel in pixel index order. The sketch
  handles BGR reordering internally via `NEO_BGR` — Max always sends
  `R, G, B`.
- `CHK` = `sum(payload) & 0xFF`.
- On a valid frame the Arduino sends back `'R'` (`0x52`) once
  `strip.show()` completes. Use as flow control to gate the next frame.

### Max patches (`../Max/JacobzLAddr26-dna/`)

The Max project lives at `<repo>/Max/JacobzLAddr26-dna/` with its
JS sources in `code/`. The Arduino sketch (`DNA/LED_strip/`) and the
helper scripts (`DNA/dna_config.py`, `Set LED counts.command`) stay
under `DNA/`.

- **`dna_frame.js`** — serial framing. Reads a 3-plane char `NUM_LEDS×1`
  matrix and emits the framed byte list to `[serial]`. Use with
  `[v8 dna_frame.js]` (faster than `[js]`).
  - `master <0..1>` — global brightness scale (default 1.0)
  - `r <0..2>`, `g <0..2>`, `b <0..2>` — per-channel white-balance gain
    (defaults `1.00 / 0.85 / 0.65` for warm-neutral whites on this
    blue-biased rope)
  - `scan <N>` — light only LED N red (raw 255,0,0; bypasses gains).
    Use with `[metro 500] → [counter] → [prepend scan]` to walk a dot
    down the rope and count LEDs from inside Max.
  - `chunk <N>` — split each outgoing serial frame into chunks ≤ N
    bytes (default 256). Safety net for macOS USB-CDC's small TX
    buffer; usually unnecessary if `[jit.movie] @unique 1` is set
    (see gotchas below).
- **`dna_mapping.js`** — generates the (x, y) sample-lookup matrix for
  the helical layout. Outputs a 2-plane long `NUM_LEDS×1` matrix used
  as the position input to `[jit.repos]`. Auto-detects source video
  dim from incoming `jit_matrix` messages (just tap your video matrix
  output into this JS too).
  - `turns <N>` — helical turns per strand (default 3)
  - `wrap <0|1>` — 0 = full 360° wrap of video, 1 = front-projection sin
  - `vflip <0|1>` — flip video top↔bottom
  - `strands <1|2>` — single continuous wrap vs double-helix offset
  - `flipa <0|1>`, `flipb <0|1>` — reverse a strand's height progression
    (use if your wiring runs DIN at the top of a strand instead of the
    base)
  - `split <0|1>` — when 1, strand A samples only the left half of the
    video and strand B only the right half
- **`dna_motion.js`** — *optional* per-LED temporal smoothing + motion
  pulse amplification. Use with `boost 0` for pure smoothing only —
  saturates very quickly with `boost > 1`.

### Pipeline

```
[jit.movie]
    │
    ├──► (tap into [js dna_mapping.js] inlet for auto dim detection)
    │
    ▼
[jit.repos] ◄── [dna_lookup matrix] ◄── [js dna_mapping.js]
    │
[jit.matrix dna 3 char 213 1 @planemap 1 2 3 @interp 1]
    │
[v8 dna_motion.js]                 ← optional, smoothing only
    │
[v8 dna_frame.js]                  ← framing + master/r/g/b/scan
    │
[serial a 250000]                  ← R-byte handshake routes back
    │
(left outlet) → [route 82] → ...   ← drive a [counter] / [print] for status

[metro 5] → [serial]                ← REQUIRED to pull received bytes
                                       (R handshake) out of [serial]'s buffer
```

## Bring-up checklist

1. Wire both strands as in [Wiring](#wiring) above.
2. Power-cycle the Uno and confirm the boot banner appears in Max
   (`LED_strip vX.Y.Z` followed by `R`).
3. Send `dim WIDTH HEIGHT` to `[js dna_mapping.js]` (or wire your
   `[jit.movie]` matrix output into its inlet for auto-detect).
4. Send `setall 0 255 0 0, bang` to the dna matrix as a sanity test —
   all LEDs should turn green at the configured `master` brightness.
5. Once green is correct, plug in the real video and tune mapping
   (`turns`, `wrap`, `strands`, `split`, etc.) to taste.

## Reconfiguring counts

When you change to a longer or shorter rope:

```bash
cd DNA
./dna_config.py <strand_A_count> <strand_B_count>
```

Or **double-click `Set LED counts.command`** in Finder for an
interactive prompt — no terminal required.

The script edits all four source files (sketch + three JS files), bumps
each one's PATCH version, and recompiles + reuploads the Arduino sketch
(close Max's `[serial]` first). After it runs, it prints the exact
`[jit.matrix]` and `[jit.submatrix]` dim/offset values you still need
to update by hand in your Max patch.

## Known gotchas

- **Never `Adafruit_NeoPixel(N, ...)` with `N == 0`:** confirmed bug,
  corrupts AVR serial timing and drops ~95 % of frames. Symptom was
  1.4 R/sec ack rate. If a strand isn't physically wired, remove its
  `Adafruit_NeoPixel` object from the sketch entirely.
- **Baud rate:** the Uno's 16U2 USB-CDC bridge is unreliable above
  ~250000 baud. We tried 1 Mbaud — same symptom as above. 250000 has
  0 % USART error on AVR @ 16 MHz, plenty of bandwidth for video.
- **`dna_motion.js` saturates fast:** keep `boost` ≤ 1.0 and `decay`
  ≤ 0.85 unless you genuinely want motion flare effects.
- **`jit.repos` lookup matrix must be `long`, not `float32`:** with
  `float32`, position values get misinterpreted as char-range.
- **`@planemap 1 2 3` on `jit.matrix`** drops the alpha plane from
  Jitter's ARGB matrices; without it the JS reads alpha as red.
- **Common ground** between Arduino, both strands, and PSU is
  mandatory. We had a phantom "noise after 1 minute" symptom that
  turned out to be a missing GND between Arduino and PSU.
- **`jit.playlist` vs `jit.movie`:** `jit.playlist` re-emits its
  current frame on every Jitter scheduler tick (~3 ms), flooding
  downstream JS at hundreds of fps. Use `jit.movie` for our chain;
  `jit.playlist` only emits once per real video frame is a
  mis-statement (it doesn't), so don't use it.
- **Voltage drop along the strand:** with bright frames, far LEDs
  dim or go dark. Lower the current (via `master <0.3>`) before
  reaching for power injection — it scales linearly and is free.
- **`[jit.movie] @unique 1` is mandatory in the production patch.**
  Without it, `jit.movie` re-emits its current frame on every Jitter
  scheduler tick (~60+ Hz), even though the video itself is at 24/30
  fps. That floods the OS USB-CDC TX buffer (~384 bytes on macOS),
  produces `write 384 / write -1` status spam in `[serial]`'s right
  outlet, and the strip locks into stale state. With `unique 1` the
  matrix only emits when a *new* video frame is decoded, so the
  send rate matches the video rate and the buffer stays clear.
- **`[speedlim]` doesn't pass long lists.** Don't put one between
  `[v8 dna_frame.js]` and `[serial]` — the framed list (~640 bytes
  for 213 LEDs) gets dropped silently. Use `unique 1` upstream
  instead.
