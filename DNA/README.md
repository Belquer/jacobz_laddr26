# DNA — addressable LED double helix

Video-driven addressable LED installation. A WS281x-class rope is cut in
half, arranged as a double helix, and driven by an Arduino Uno over
serial at 250000 baud. A Max patch resamples a video source through a
helical sample-lookup into a per-LED RGB stream and ships it down the
wire.

The same stream can run **wirelessly** by swapping the Uno for a pair of
ESP32 boards linked over ESP-NOW — with zero changes to the Max patch.
See [Wireless operation (ESP-NOW)](#wireless-operation-esp-now).

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

## Wireless operation (ESP-NOW)

You can cut the USB tether between the Mac and the rope by swapping the
Arduino Uno for **two classic ESP32 boards** (WROOM / DevKitC) linked
over **ESP-NOW**. Nothing in Max changes — the patch, the framing JS,
the `'F'…CHK` protocol, and the `'R'` handshake flow control are all
untouched. You simply plug a different board into the Mac.

```
Max ──USB serial 250000──▶ ESP32 BRIDGE ──ESP-NOW (ch 11)──▶ ESP32 RECEIVER ──▶ 2 LED strands
   'F',LEN,payload,CHK        validate +        broadcast        reassemble +
   ◀──────── 'R' ─────────    fragment        (3 chunks)          drive + show
                              forward 'R' ◀──── ESP-NOW ack ◀───── send 'R' after show()
```

### Why ESP-NOW

- **Max stays identical.** The bridge is a drop-in for the Uno: same
  baud (250000), same wire protocol, same per-frame `'R'` handshake.
- **No router, no IP config, no pairing.** Packets are broadcast; the
  receiver acks by broadcast too. Power both boards on and they talk.
- **Low latency, plenty of headroom.** 213 LEDs = 639 payload bytes =
  3 ESP-NOW chunks/frame; round-trip is well under the ~33 ms budget at
  30 fps.
- **Coexists cleanly with the ESP32-CAM** — see
  [Running alongside the ESP32-CAM](#running-alongside-the-esp32-cam).

### Running alongside the ESP32-CAM

Both subsystems are used together in the same show, so they're designed
to share **zero** resources. Each potential point of contention and why
it's clear:

| Shared resource | ESP32-CAM uses… | LED link uses… | Conflict? |
| --- | --- | --- | --- |
| **Mac WiFi radio** | Mac joins `ESP32-CAM-AP` (ch1) for the MJPEG stream | nothing — frames go Mac→bridge over **USB**, then ESP-NOW | **No.** The Mac's one radio is 100% dedicated to the camera. |
| **2.4 GHz channel** | soft-AP pinned to **ch1** | ESP-NOW on **ch11** | **No.** ch1 and ch11 are non-overlapping, so the camera's MJPEG stream and the LED frames never share airtime. (The camera is also tuned low-res/low-bitrate for AprilTags, leaving extra margin.) |
| **USB ports** | none (camera is wireless, AP-powered) | one port for the bridge dongle | **No.** |
| **Serial / Max** | none | bridge serial only | **No.** |
| **OSC / localhost** | Python detector → `127.0.0.1:5001` | none (serial only) | **No.** |
| **ESP-NOW packets** | doesn't speak ESP-NOW | magic/proto/kind-filtered | **No.** Stray packets are rejected. |

The single contract to keep in sync is the **channel plan**:

> **Camera = channel 1. LED link = channel 11.** Non-overlapping.

It's pinned in code on both sides: `AP_CHANNEL` in
`espcam/espcam_Ok/espcam_Ok.ino` and `ESPNOW_CHANNEL` in both LED
sketches. If you ever move the camera off ch1, move the LED link to
another non-overlapping channel (the trio is 1 / 6 / 11) — never let
them land on the same or adjacent channels.

Physical tip: the bridge dongle's radio (ch11) sits inches from the
Mac's radio (ch1). That separation is large, but if you see camera-stream
or LED glitches when both are busy, put the bridge on a short USB
extension cable to get its antenna away from the Mac.

### Sketches (`LED_strip_esp32_bridge/`, `LED_strip_esp32_rx/`)

- **`LED_strip_esp32_bridge.ino`** — plugs into the Mac in place of the
  Uno. Reads the serial frame protocol, validates the checksum,
  fragments the payload, broadcasts it over ESP-NOW, waits up to
  `ACK_TIMEOUT_MS` (25 ms) for the receiver's ack, then writes `'R'`
  back to Max. **Count-agnostic** — it forwards whatever `LEN` Max
  sends, so it never needs reflashing when the rope length changes.
  Prints `LED_strip_esp32_bridge vX.Y.Z`, its MAC, and the channel on
  boot.
- **`LED_strip_esp32_rx.ino`** — wired to the LEDs. Reassembles frames,
  drives both strands (`Adafruit_NeoPixel`, `NEO_BGR`), and acks. Holds
  the LED counts (kept in sync by `dna_config.py`). Prints
  `LED_strip_esp32_rx vX.Y.Z`, its MAC, the channel, and a once/second
  `frames/s · chunks/s` stat line.
- **`dna_espnow.h`** — shared on-air packet layout (copied into both
  sketch folders). `DNA_PROTO_VERSION` must match on both boards.

### Wiring changes vs. the Uno

Only the **data pins** move; power/ground is unchanged.

| | Uno | ESP32 receiver |
| --- | --- | --- |
| Strand A data | `D9`  | `GPIO 16` |
| Strand B data | `D10` | `GPIO 17` |

The **common ground** rule still applies — tie the ESP32 GND, both
strands, and the PSU together.

**Powering the ESP32s.** Each board needs its own 5 V (~250–500 mA); the
LED *current* always goes straight from the PSU to the strands, never
through the board.

- **Bridge** — powered by the Mac's USB. Nothing extra.
- **Receiver** — either (a) any USB charger / power bank, or (b) tap the
  LED PSU's regulated 5 V into the ESP32's **`5V`/`VIN`** pin (not
  `3V3`), sharing the common ground. A classic DevKitC tolerates this —
  that pin sits ahead of the onboard 3.3 V regulator.
- ⚠️ Don't power the receiver from USB **and** the 5V pin at the same
  time (back-feed risk — pick one).

### Flashing

Double-click **`Flash ESP32 wireless.command`** and pick **1) BRIDGE**
or **2) RECEIVER**; it auto-detects the port and compiles + uploads with
`arduino-cli` (FQBN `esp32:esp32:esp32`). Flash each board once. Some
DevKitC clones need the **BOOT** button held during upload.

Requires the Espressif **esp32** core (`arduino-cli core install
esp32:esp32`) and the **Adafruit NeoPixel** library (≥ 1.11, which uses
the RMT peripheral on ESP32 so `show()` doesn't disturb the radio).

### Wireless bring-up

1. Flash both boards. Open each board's Serial Monitor once to confirm
   the banner, the matching `proto v1`, and `channel 1`.
2. Power the receiver and its LED PSU (common ground!). It prints
   `ready — waiting for frames`.
3. Plug the bridge into the Mac. In Max, point `[serial]` at the
   bridge's port (baud **250000**, unchanged) — you'll see the bridge
   banner and the boot `'R'`.
4. Run the patch exactly as before. The receiver's stat line should
   show `frames/s` tracking your video rate.

### Wireless gotchas

- **Channel must match on both LED boards** (`ESPNOW_CHANNEL`, default
  11). Mismatched channels = silent total loss. Keep it **non-overlapping
  with the camera** (camera = ch1, LED = ch11). Do *not* set it back to
  the camera's channel — that re-introduces airtime contention.
- **`DNA_PROTO_VERSION` must match.** If you edit `dna_espnow.h`, copy
  it into *both* sketch folders and reflash both.
- **Dropped chunk = dropped frame, not a stall.** If a chunk is lost,
  the receiver discards the partial frame and the bridge releases Max
  after the 25 ms ack timeout. The stream keeps flowing; you just lose
  one frame. Persistent loss → confirm both boards share the same
  `ESPNOW_CHANNEL`, pick a channel clear of venue WiFi, shorten the
  antenna distance, or move the bridge dongle off the Mac with a short
  USB extension (its ch11 radio sitting right on top of the Mac's ch1
  radio can desense both).
- **Up to 8 chunks / 640 LEDs per frame.** The 240-byte chunk size caps
  a single frame at 1920 payload bytes. Beyond that, raise
  `DNA_MAX_CHUNKS`/`CHUNK_DATA_MAX` in `dna_espnow.h` (chunk header +
  data must stay ≤ 250) or split the rope across two receivers.
- **NeoPixel library version matters on ESP32.** Old bit-bang versions
  disable interrupts during `show()` and can glitch ESP-NOW. Use a
  recent Adafruit NeoPixel (RMT-based) or switch to FastLED/NeoPixelBus.

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
