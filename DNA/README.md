# DNA — addressable LED double helix

Video-driven addressable LED installation. A WS281x-class rope is cut in
half and arranged as a double helix; each strand is driven independently
from an Arduino Uno over serial. A Max patch resamples a video source
into a per-LED color stream and ships it down the wire at 1 Mbaud.

## Hardware

### Rope

| Field          | Value                                                         |
| -------------- | ------------------------------------------------------------- |
| Product        | maylit 360° Luminous Reticulate Weave Rope Lights, 16.4 ft    |
| Marketing name | "Addressable ICRGB LED Strip Lights"                          |
| Length         | 16.4 ft / ~5 m                                                |
| Spacing        | ~18 mm per LED                                                |
| Voltage        | 5 V                                                           |
| Wires          | 3 (`+5V`, `GND`, `DATA`)                                      |
| Bit rate       | 800 kHz                                                       |
| Addressing     | Per-LED (each LED independently addressable)                  |
| Color order    | **BGR**                                                       |
| Protocol       | WS281x-compatible. Likely a WS2812B-BGR or SK6812-BGR variant |

The exact IC marking is hidden inside the silicone sleeve, but firmware
behavior is identical to a WS2812B with `NEO_BGR` color order set — that
is the only configuration needed.

### Two-strand layout

The rope is cut at its midpoint and split into two physical strands, one
per side of the helix. They are driven in parallel from two separate
data pins on the Uno; the Max-side protocol still treats them as one
contiguous logical strip.

```
Strand A: pixels 0..NUM_LEDS_A-1   (driven from Arduino D9)
Strand B: pixels NUM_LEDS_A..end   (driven from Arduino D10)
```

`NUM_LEDS_A` and `NUM_LEDS_B` are set in [LED_strip/LED_strip.ino](LED_strip/LED_strip.ino).
Defaults are 112 and 113 (placeholder); update once the strands have
been physically counted (use [LED_strip/scan/scan.ino](LED_strip/scan/scan.ino)
to walk one pixel at a time and count by eye).

### Wiring

```
                                     ┌─────────── 5V PSU ─────────────┐
                                     │+                              -│
                                     │                                │
   USB ── Arduino Uno                │                                │
              │                      │                                │
              D9  ─── DIN  ── Strand A ── (DOUT, unused)              │
              D10 ─── DIN  ── Strand B ── (DOUT, unused)              │
              GND ──┬───────────────┐│                                │
                    │               ││                                │
              Strand A GND ─────────┴┘                                │
              Strand B GND ──────────────────────────────────────────┘
              Strand A +5V ─────────────────────────────────────────┐ │
              Strand B +5V ─────────────────────────────────────────┘ │
                                                                      │
                                     └────────────────────────────────┘

Common ground between Arduino, both strands, and the PSU is mandatory.
The Arduino stays USB-powered; only the strips draw from the 5V PSU.
```

For long runs, **inject power at multiple points** along each strand
(start, middle, end) — voltage drop across the rope's thin internal
copper traces will dim the far pixels and shift them red at higher
brightness levels. The middle injection at the helix base can share a
bundle with the strand-B power feed.

### Power budget

Each LED can pull up to ~60 mA at full white. For 225 LEDs total at
full white that is ~13.5 A — far beyond the 2.4 A test PSU currently in
use. Keep Max-side brightness low while bench-testing with the small
supply. A production-scale PSU should be 5 V at 15 A or higher, with
fused distribution to each injection point.

The firmware ships with `setBrightness(255)` so brightness is controlled
entirely from Max — no reflashing needed to change levels.

### Strand color verification

If colors look wrong after rewiring, run the BGR sanity check from Max
or via a sketch:

| Sent value          | Should display |
| ------------------- | -------------- |
| `255, 0, 0` (R,G,B) | red            |
| `0, 255, 0`         | green          |
| `0, 0, 255`         | blue           |

If pure red comes out blue, the color order is being interpreted wrong
— change `NEO_BGR` in `LED_strip.ino` to whatever matches.

## Software

### Arduino sketches (`LED_strip/`)

- `LED_strip.ino` — production sketch. Listens on serial at 1 Mbaud for
  framed pixel data, splits it across the two strands, and drives both
  via Adafruit NeoPixel. Sends `'R'` after each successful frame as a
  ready handshake.
- `rainbow/rainbow.ino` — standalone bench test. Cycles a smooth
  rainbow across the first 8 LEDs at low brightness, safe on USB power
  alone. Prints a serial heartbeat and pulses the onboard LED.
- `scan/scan.ino` — chipset/count diagnostic. Lights pixel 0 only for 3
  seconds (count physical LEDs lit to identify the chipset family),
  then walks a single dot from index 0 upward to count the actual LED
  total per strand.

### Wire protocol (Max → Arduino)

```
'F'(0x46), LEN_HI, LEN_LO, [LEN bytes RGB], CHK
```

- `LEN` = `NUM_LEDS * 3`, encoded as 16-bit big-endian.
- Payload is `R, G, B` bytes per pixel, in pixel index order. The
  sketch handles BGR reordering internally via `NEO_BGR` — Max always
  sends `R, G, B`.
- `CHK` = `sum(payload) & 0xFF`.
- On a valid frame the Arduino sends back `'R'` (`0x52`) once
  `strip.show()` completes. Use this as flow control to gate the next
  frame from Max.

### Max patches (`Max/`)

- `dna_frame.js` — serial framing. Receives a 3-plane char `225×1`
  matrix (the per-LED RGB values) and emits the framed byte list to
  `[serial]`. Use with `[js dna_frame.js]` or `[v8 dna_frame.js]`
  (v8 is faster).
- `dna_mapping.js` — generates the (x, y) sample-lookup matrix for the
  helical layout. Outputs a 2-plane long `225×1` matrix used as the
  position input to `[jit.repos]`. Tunable via `turns N`, `wrap 0|1`,
  `vflip 0|1` messages. Auto-detects source video dim from incoming
  `jit_matrix` messages.

### Pipeline

```
[jit.movie / jit.playlist]
        │
        │ (also tap to dna_mapping.js for auto dim detection)
        ▼
   [jit.repos] ◄── [dna_lookup matrix] ◄── [js dna_mapping.js]
        │
   [jit.matrix dna 3 char 225 1 @planemap 1 2 3 @interp 1]
        │
   [jit.brcosa]                    ← optional brightness/saturation
        │
   [v8 dna_frame.js]
        │
   [serial a 1000000]              ← R-byte handshake routes back
```

## Bring-up checklist

1. Upload `scan/scan.ino` → identify chipset family from stage 1
   (1 LED = per-LED addressable; 3 LEDs = grouped WS2811).
2. Watch stage 2 to count actual LEDs in each physical strand.
3. Update `NUM_LEDS_A`, `NUM_LEDS_B` in `LED_strip.ino` to match.
4. Verify color order with R/G/B test (see "Strand color verification"
   above). Set `NEO_BGR` / `NEO_RGB` / `NEO_GRB` accordingly.
5. Upload `LED_strip.ino`. Confirm `'R'` heartbeat in Max `[print]`.
6. Wire the Max chain (see Pipeline). Test with a `setall` matrix
   before plugging in the real video.

## Known limits / TODO

- Final LED count per strand is still placeholder (112 / 113). Run
  `scan.ino` after the rope is cut and bridged.
- 2.4 A PSU is bench-only. Production needs 5 V / 15 A+ with multi-point
  injection.
- Rainbow / scan sketches still use `NEO_RGB` rather than `NEO_BGR`.
  This only affects color appearance during bench tests; no functional
  difference for chipset/count diagnostics.
