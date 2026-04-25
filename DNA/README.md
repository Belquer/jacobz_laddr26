# DNA — addressable LED double helix

Video-driven addressable LED installation. A WS281x-class rope is cut in
half and arranged as a double helix; an Arduino Uno drives the strands
over serial. A Max patch resamples a video source into a per-LED color
stream and ships it down the wire at 115200 baud.

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
behavior is identical to a WS2812B with `NEO_BGR` color order set —
that is the only configuration needed.

### Strand layout

Currently single-strand bench setup: 90 LEDs on D9. The second strand
is **not yet wired**; once it is, see "Adding the second strand" below.

```
Strand A: pixels 0..NUM_LEDS_A-1   (driven from Arduino D9)
```

`NUM_LEDS_A` is set in [LED_strip/LED_strip.ino](LED_strip/LED_strip.ino).

### Wiring

```
                                     ┌─────────── 5V PSU ─────────────┐
                                     │+                              -│
                                     │                                │
   USB ── Arduino Uno                │                                │
              │                      │                                │
              D9  ─── DIN  ── Strand A ── (DOUT, unused)              │
              GND ──┬───────────────┐│                                │
                    │               ││                                │
              Strand A GND ─────────┴┘                                │
              Strand A +5V ─────────────────────────────────────────┐ │
                                                                      │
                                     └────────────────────────────────┘

Common ground between Arduino, the strand, and the PSU is mandatory.
The Arduino stays USB-powered; only the strip draws from the 5V PSU.
```

For long runs, **inject power at multiple points** along each strand
(start, middle, end) — voltage drop across the rope's thin internal
copper traces will dim the far pixels and shift them red at higher
brightness levels.

### Power budget

Each LED can pull up to ~60 mA at full white. For 90 LEDs at full white
that's ~5.4 A — beyond the 2.4 A test PSU currently in use. Keep
Max-side brightness modest while bench-testing with the small supply. A
production-scale PSU for the full helix (200+ LEDs after both strands
are wired) should be 5 V at 15 A or higher, with fused distribution to
each injection point.

The firmware ships with `setBrightness(255)`, so brightness is
controlled entirely from Max — no reflashing needed to adjust levels.

### Strand color verification

If colors look wrong after rewiring, run the BGR sanity check from Max:

| Sent value          | Should display |
| ------------------- | -------------- |
| `255, 0, 0` (R,G,B) | red            |
| `0, 255, 0`         | green          |
| `0, 0, 255`         | blue           |

If pure red comes out blue, the color order is wrong — change `NEO_BGR`
in `LED_strip.ino` to whatever matches.

## Software

### Arduino sketches (`LED_strip/`)

- `LED_strip.ino` — production sketch. Listens on serial at **115200**
  for framed pixel data, drives the strand via Adafruit NeoPixel, and
  sends `'R'` after each successful frame as a ready handshake.
- `rainbow/rainbow.ino` — standalone bench test. Smooth scrolling
  rainbow across the first 8 LEDs at low brightness, safe on USB power
  alone. Pulses onboard LED + serial heartbeat.
- `scan/scan.ino` — chipset / count diagnostic. Lights pixel 0 only for
  3 seconds (count physical LEDs lit to identify the chipset family),
  then walks a single dot from index 0 upward to count the actual LED
  total per strand.
- `echo/echo.ino` — diagnostic. Echoes every received byte. Used to
  verify that the link itself is clean (no dropped bytes) independent
  of the parser/show logic.
- `debug/debug.ino` — instrumented version of the production parser.
  Counts received bytes, accepted frames, and rejection reasons; prints
  a one-line summary per second over serial. Use this when frames are
  being silently dropped and you need to see where they die.
- `test_throughput.py` — bypasses Max entirely. Sends valid frames
  at 30 fps from Python, counts `R` returns. Use to isolate
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

### Max patches (`Max/`)

- `dna_frame.js` — serial framing. Receives a 3-plane char `NUM_LEDS×1`
  matrix (per-LED RGB values) and emits the framed byte list to
  `[serial]`. Use with `[v8 dna_frame.js]` (faster than `[js]`).
- `dna_mapping.js` — generates the (x, y) sample-lookup matrix for the
  helical layout. Outputs a 2-plane long `NUM_LEDS×1` matrix used as
  the position input to `[jit.repos]`. Tunable via `turns N`,
  `wrap 0|1`, `vflip 0|1`, `strands 1|2` messages. Auto-detects source
  video dim from incoming `jit_matrix` messages.
- `dna_motion.js` — *optional* per-LED temporal smoothing + motion
  pulse amplification. Use only with conservative defaults
  (`smooth 0.4`, `boost 0.5–1.5`, `decay 0.85`); aggressive settings
  saturate the strip to white very quickly.

### Pipeline

```
[jit.movie / jit.playlist]
        │
        │ (also tap to dna_mapping.js for auto dim detection)
        ▼
   [jit.repos] ◄── [dna_lookup matrix] ◄── [js dna_mapping.js]
        │
   [jit.matrix dna 3 char 90 1 @planemap 1 2 3 @interp 1]
        │
   [jit.brcosa]                    ← optional brightness / saturation
        │
   [v8 dna_frame.js]
        │
   [serial a 115200]               ← R-byte handshake routes back
        │
   (left outlet) → [route 82] → ...
```

Don't forget the **read-side** metro: `[metro 5] → [serial]` is required
to pull received bytes (including the `R` handshake) out of `[serial]`'s
buffer. Without it, `R`s pile up unread and you'll think Arduino isn't
responding.

## Bring-up checklist

1. Upload `scan/scan.ino` → identify chipset family from stage 1
   (1 LED = per-LED addressable; 3 LEDs = grouped WS2811).
2. Watch stage 2 to count actual LEDs in each physical strand.
3. Update `NUM_LEDS_A` in `LED_strip.ino` to match.
4. Verify color order with R/G/B test. Set `NEO_BGR` / `NEO_RGB` /
   `NEO_GRB` accordingly.
5. Upload `LED_strip.ino`. Verify `'R'` heartbeat appears in Max
   `[print]` (after wiring `[metro 5] → [serial]`).
6. Wire the Max chain. Test with a `setall` matrix before plugging in
   the real video.

## Adding the second strand

When wiring strand B, restore the parallel-strand version of the
sketch:

1. Add `Adafruit_NeoPixel stripB(NUM_LEDS_B, LED_PIN_B, NEO_BGR + NEO_KHZ800);`
2. Add a second `setPixelColor` loop and a `stripB.show()` call in the
   `WAIT_CHK` handler.
3. Set `NUM_LEDS_B` to the actual physical count — **never 0**.

**Critical gotcha:** instantiating an `Adafruit_NeoPixel` with a count
of 0 is undefined behaviour and on the Uno breaks serial timing badly
enough to drop ~95% of incoming frames. We hit this exact bug — symptom
was 1.4 R/sec ack rate even though the link was clean and the parser
was correct. Don't allocate stripB until the count is known and
non-zero.

## Known limits / gotchas

- **Baud rate:** Uno's onboard 16U2 USB-CDC bridge is unreliable above
  ~250000 baud. We use **115200**. At 90 LEDs × 3 bytes + framing per
  frame, this gives ~30 fps headroom, plenty for video work.
- **Never `Adafruit_NeoPixel(0, ...)`:** see "Adding the second strand"
  above. Always remove unused strip objects from the sketch entirely.
- **Frame pacing:** at 115200 baud, frames take ~24 ms to transmit. The
  sketch's `show()` adds ~3 ms. With Max sending faster than ~30 fps,
  bytes can pile up faster than `show()` completes; either gate Max's
  send on `R` handshake, or use `[speedlim 35]` to cap at ~28 fps.
- **`dna_motion.js` saturates fast:** keep `boost` ≤ 1.0 and `decay`
  ≤ 0.85 unless you genuinely want motion-flare effects, otherwise the
  pulse climbs to 255 and the strip pegs at white.
- **`jit.repos` lookup matrix must be `long`, not `float32`:** with
  float32, position values get misinterpreted as char-range and
  everything samples roughly the same source pixel.
- **`@planemap 1 2 3` on `jit.matrix`** drops the alpha plane from
  Jitter's ARGB matrices; without it the JS reads alpha as red and
  colors come out wrong.
- **Power supply sag:** with the test PSU (2.4 A) and many bright LEDs,
  the strip and possibly the Arduino's USB ground reference can wobble.
  Symptoms include flicker and apparent random resets. Cap brightness
  in Max or upgrade the PSU.
