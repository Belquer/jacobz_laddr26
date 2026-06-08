// dna_frame.js v1.2.0 — for use with [js dna_frame.js] or [v8 dna_frame.js]
//
// Input forms on inlet 0:
//
//   jit_matrix <name>   read a 3-plane char matrix sized NUM_LEDS x 1
//                       (RGB), frame it, and emit. Path for video.
//
//   list (PAYLOAD_LEN ints)
//                       RGB bytes for NUM_LEDS pixels — frame and emit.
//
//   bang                re-render the last frame with the CURRENT gains.
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
//   NOTE: master/r/g/b now RE-RENDER the last frame immediately, so they
//   take visible effect even on a paused video or a static setall image —
//   you no longer need live video flowing to see a gain change.
//
// Output (outlet 0): a list ready for [serial]:
//   'F'(0x46), LEN_HI, LEN_LO, [PAYLOAD_LEN RGB bytes], CHK = sum & 0xFF

autowatch = 1;
inlets = 1;
outlets = 1;

post("dna_frame.js v1.2.0\n");

var NUM_LEDS    = 213;
var PAYLOAD_LEN = NUM_LEDS * 3;   // 639
var HEADER      = 0x46;           // 'F'

var masterGain = 1.0;
var rGain = 1.00;
var gGain = 0.85;
var bGain = 0.65;

var lastFrame = null;
// Closure that returns the UNSCALED [r,g,b] for LED i of the last frame
// (from video matrix or list). Kept so master/r/g/b/bang can re-render
// the same content with the current gains instead of replaying stale
// already-scaled bytes.
var lastGetRGB = null;
var scratch = new JitterMatrix(3, "char", NUM_LEDS, 1);

function render() {
    if (lastGetRGB) emit(buildFrame(lastGetRGB));
}

// macOS USB-CDC TX buffer is small (~384 bytes). When the framed
// payload exceeds that, Max [serial] truncates or drops the write
// (visible as "write 384 / write -1" status messages). We chunk the
// outgoing list into safely-sized pieces; bytes still reach the
// Arduino in order, the parser doesn't care that they arrived in
// multiple writes.
var CHUNK_SIZE = 256;
var debugNextEmit = false;   // print one emit-path log after each chunk change
function chunk(n) {
    CHUNK_SIZE = (n > 0) ? n : 256;
    debugNextEmit = true;
    post("dna_frame.js: CHUNK_SIZE = " + CHUNK_SIZE + "\n");
}

function master(v) { masterGain = (v < 0) ? 0 : v; render(); }
function r(v) { rGain = (v < 0) ? 0 : v; render(); }
function g(v) { gGain = (v < 0) ? 0 : v; render(); }
function b(v) { bGain = (v < 0) ? 0 : v; render(); }

function emit(out) {
    lastFrame = out;
    if (CHUNK_SIZE >= out.length) {
        if (debugNextEmit) {
            post("dna_frame.js: emit single-shot, len=" + out.length + "\n");
            debugNextEmit = false;
        }
        outlet(0, out);
        return;
    }
    var nChunks = 0;
    for (var i = 0; i < out.length; i += CHUNK_SIZE) {
        var end = (i + CHUNK_SIZE < out.length) ? (i + CHUNK_SIZE) : out.length;
        outlet(0, out.slice(i, end));
        nChunks++;
    }
    if (debugNextEmit) {
        post("dna_frame.js: emit chunked, " + nChunks +
             " chunks of <=" + CHUNK_SIZE + " (total " + out.length + ")\n");
        debugNextEmit = false;
    }
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
    lastGetRGB = function (i) {
        var bi = i * 3;
        return [args[bi], args[bi + 1], args[bi + 2]];
    };
    emit(buildFrame(lastGetRGB));
}

function jit_matrix(name) {
    scratch.frommatrix(name);
    lastGetRGB = function (i) {
        return scratch.getcell(i, 0);
    };
    emit(buildFrame(lastGetRGB));
}

function scan(n) {
    emit(buildScanFrame(n | 0));
}

function bang() {
    // Re-render the last frame with the CURRENT gains (not the stale
    // already-scaled bytes). Falls back to replaying lastFrame if the
    // only thing ever emitted was a scan.
    if (lastGetRGB) render();
    else if (lastFrame) outlet(0, lastFrame);
}
