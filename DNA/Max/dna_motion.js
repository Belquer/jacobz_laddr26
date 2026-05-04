// dna_motion.js v1.0.0 — temporal smoothing + motion-pulse amplification for
// the per-LED matrix. Use with [v8 dna_motion.js] (also works in [js]).
//
// Drop between the helical-sample matrix and the framing JS:
//
//   [jit.matrix dna 3 char 225 1 @planemap 1 2 3]
//                  |
//                  v
//          [v8 dna_motion.js]
//                  |
//                  v
//          [v8 dna_frame.js]
//                  |
//          [serial a 1000000]
//
// Behaviour, per LED, per channel:
//   smooth_color   = exponential moving average of incoming samples
//                    (gives a calm base level that tracks the video)
//   motion_pulse   = transient burst whenever the raw value changes,
//                    decays exponentially toward 0 each frame
//   output         = clamp(smooth_color + motion_pulse, 0..255)
//
// Net effect: static content holds at its smoothed color (no flicker);
// any change — even a small one — produces a visible pulse on top that
// fades softly. So static videos read as "moving" without losing the
// underlying image.
//
// Knobs (set by Max messages):
//   smooth <0..0.95>  trail length on the base color.
//                     0 = follow exactly, 0.7 = ~4 frame trail (default),
//                     0.95 = slow drift.
//   boost <0..~10>    motion pulse multiplier. 0 = off, 2 = default,
//                     5 = strong, 10 = saturates fast.
//   decay <0..0.99>   pulse fade per frame. 0.85 = ~5 frame half-life,
//                     0.92 = default, 0.98 = long lingering trails.
//   history <0..0.98> how much past to keep in the motion reference.
//                     0   = compare against previous frame only
//                           (sees only fast changes)
//                     0.9 = compare against slow EMA, so a sustained
//                           color drift accumulates as detected motion
//                           (better for static-heavy videos).
//                     Default 0.85.
//   bypass <0|1>      1 = pass input through unchanged (A/B compare).

autowatch = 1;
inlets  = 1;
outlets = 1;

post("dna_motion.js v1.0.0\n");

var NUM_LEDS = 213;

var smoothing   = 0.7;
var motionBoost = 2.0;
var pulseDecay  = 0.92;
var refHistory  = 0.85;
var bypassMode  = 0;

// Per-LED, per-channel state. Floats so we don't quantize each frame.
var prevRaw = new Array(NUM_LEDS * 3);
var avgCol  = new Array(NUM_LEDS * 3);
var pulse   = new Array(NUM_LEDS * 3);
for (var k = 0; k < NUM_LEDS * 3; k++) {
    prevRaw[k] = 0;
    avgCol[k]  = 0;
    pulse[k]   = 0;
}

function clamp01(v) { return v < 0 ? 0 : (v > 1 ? 1 : v); }

function smooth(s)  { smoothing = clamp01(s); }
function boost(b)   { motionBoost = b < 0 ? 0 : b; }
function decay(d)   { pulseDecay = clamp01(d); }
function history(h) { refHistory = clamp01(h); }
function bypass(b)  { bypassMode = b ? 1 : 0; }

var input  = null;
var output = new JitterMatrix(3, "char", NUM_LEDS, 1);
output.name = "dna_motion_out";

function jit_matrix(name) {
    if (bypassMode) {
        outlet(0, "jit_matrix", name);
        return;
    }
    if (!input) input = new JitterMatrix(name);
    input.frommatrix(name);

    var avgAlpha = 1 - smoothing;

    for (var i = 0; i < NUM_LEDS; i++) {
        var cell = input.getcell(i, 0);
        var out0, out1, out2;

        for (var c = 0; c < 3; c++) {
            var idx = i * 3 + c;
            var raw = cell[c];

            // Motion: deviation of raw from a slow-tracking reference.
            // refHistory = 0   -> reference is last frame's raw (fast only)
            // refHistory = 0.9 -> reference is a slow EMA, so sustained
            //                     drifts accumulate as detected motion.
            var motion = raw - prevRaw[idx];
            if (motion < 0) motion = -motion;
            prevRaw[idx] = prevRaw[idx] * refHistory + raw * (1 - refHistory);

            // Smoothed base color (low-pass / EMA).
            avgCol[idx] = avgCol[idx] * smoothing + raw * avgAlpha;

            // Motion pulse: never gets quieter from new motion, only
            // louder; decays exponentially otherwise.
            var newPulse = motion * motionBoost;
            var decayed  = pulse[idx] * pulseDecay;
            pulse[idx]   = decayed > newPulse ? decayed : newPulse;

            var v = avgCol[idx] + pulse[idx];
            if (v > 255) v = 255;
            v = Math.round(v);

            if (c === 0) out0 = v;
            else if (c === 1) out1 = v;
            else out2 = v;
        }

        output.setcell(i, 0, "val", out0, out1, out2);
    }

    outlet(0, "jit_matrix", output.name);
}
