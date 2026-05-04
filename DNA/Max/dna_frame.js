// dna_frame.js v1.0.0 — for use with [js dna_frame.js] or [v8 dna_frame.js]
//
// Input forms on inlet 0:
//
//   jit_matrix <name>   read a 3-plane char matrix sized NUM_LEDS x 1
//                       (RGB), frame it, and emit. Path for video.
//
//   list (PAYLOAD_LEN ints)
//                       RGB bytes for NUM_LEDS pixels — frame and emit.
//
//   bang                re-emit the last frame.
//
//   scan <N>            light only LED N red (raw 255,0,0; ignores all
//                       gains so it's clearly visible at any master).
//                       Use to count physical LEDs from Max:
//                         [metro 500] -> [counter 0 0 NUM_LEDS-1]
//                                     -> [prepend scan] -> [v8]
//                       Watch the rope, stop the metro when the dot
//                       reaches the last LED of each strand. Read the
//                       counter value to learn the count.
//
// White-balance / brightness messages:
//
//   master <0..1>       global brightness scale (default 1.0).
//                       Lower this to reduce current draw across the
//                       whole installation.
//   r <0..2>            red channel gain   (default 1.00)
//   g <0..2>            green channel gain (default 0.85)
//   b <0..2>            blue channel gain  (default 0.65)
//
// Output (outlet 0): a list ready for [serial]:
//   'F'(0x46), LEN_HI, LEN_LO, [PAYLOAD_LEN RGB bytes], CHK = sum & 0xFF

autowatch = 1;
inlets = 1;
outlets = 1;

post("dna_frame.js v1.0.0\n");

var NUM_LEDS    = 213;
var PAYLOAD_LEN = NUM_LEDS * 3;   // 639
var HEADER      = 0x46;           // 'F'

var masterGain = 1.0;
var rGain = 1.00;
var gGain = 0.85;
var bGain = 0.65;

var lastFrame = null;
var scratch = new JitterMatrix(3, "char", NUM_LEDS, 1);

function master(v) { masterGain = (v < 0) ? 0 : v; }
function r(v) { rGain = (v < 0) ? 0 : v; }
function g(v) { gGain = (v < 0) ? 0 : v; }
function b(v) { bGain = (v < 0) ? 0 : v; }

function emit(out) {
    lastFrame = out;
    outlet(0, out);
}

function scale8(v, channelGain) {
    var s = v * channelGain * masterGain;
    if (s < 0)   return 0;
    if (s > 255) return 255;
    return s | 0;
}

function buildFrame(getRGB) {
    var out = new Array(3 + PAYLOAD_LEN + 1);
    out[0] = HEADER;
    out[1] = (PAYLOAD_LEN >> 8) & 0xFF;
    out[2] = PAYLOAD_LEN & 0xFF;

    var sum = 0;
    var i, base, rgb, rv, gv, bv;
    for (i = 0; i < NUM_LEDS; i++) {
        rgb = getRGB(i);
        rv = scale8(rgb[0], rGain);
        gv = scale8(rgb[1], gGain);
        bv = scale8(rgb[2], bGain);
        base = 3 + i * 3;
        out[base]     = rv;
        out[base + 1] = gv;
        out[base + 2] = bv;
        sum += rv + gv + bv;
    }
    out[3 + PAYLOAD_LEN] = sum & 0xFF;
    return out;
}

function buildScanFrame(idx) {
    // Bypass all gains — emit a raw 255,0,0 at idx, zero elsewhere.
    var out = new Array(3 + PAYLOAD_LEN + 1);
    out[0] = HEADER;
    out[1] = (PAYLOAD_LEN >> 8) & 0xFF;
    out[2] = PAYLOAD_LEN & 0xFF;
    var i, base, sum = 0;
    for (i = 0; i < PAYLOAD_LEN; i++) out[3 + i] = 0;
    if (idx >= 0 && idx < NUM_LEDS) {
        base = 3 + idx * 3;
        out[base]     = 255;
        out[base + 1] = 0;
        out[base + 2] = 0;
        sum = 255;
    }
    out[3 + PAYLOAD_LEN] = sum & 0xFF;
    return out;
}

function list() {
    var args = arrayfromargs(arguments);
    if (args.length !== PAYLOAD_LEN) {
        error("dna_frame: expected " + PAYLOAD_LEN +
              " bytes, got " + args.length + "\n");
        return;
    }
    emit(buildFrame(function (i) {
        var bi = i * 3;
        return [args[bi], args[bi + 1], args[bi + 2]];
    }));
}

function jit_matrix(name) {
    scratch.frommatrix(name);
    emit(buildFrame(function (i) {
        return scratch.getcell(i, 0);
    }));
}

function scan(n) {
    emit(buildScanFrame(n | 0));
}

function bang() {
    if (lastFrame) outlet(0, lastFrame);
}
