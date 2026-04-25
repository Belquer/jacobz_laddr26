// dna_frame.js — for use with [js dna_frame.js] in Max
// (also works with [v8 dna_frame.js])
//
// Three input forms on inlet 0:
//
//   jit_matrix <name>   read a 3-plane char matrix sized 225x1 (RGB),
//                       frame it, and emit. This is the path for video.
//
//   list (675 ints)     RGB bytes for 225 pixels — frame and emit.
//                       Useful for hand-built test patterns.
//
//   bang                re-emit the last frame.
//
// Output (outlet 0): a list ready for [serial]:
//   'F'(0x46), LEN_HI, LEN_LO, [675 RGB bytes], CHK = sum & 0xFF

autowatch = 1;
inlets = 1;
outlets = 1;

var NUM_LEDS    = 225;
var PAYLOAD_LEN = NUM_LEDS * 3;   // 675
var HEADER      = 0x46;           // 'F'

var lastFrame = null;
var scratch = new JitterMatrix(3, "char", NUM_LEDS, 1);

function emit(out) {
    lastFrame = out;
    outlet(0, out);
}

function buildFrame(getRGB) {
    var out = new Array(3 + PAYLOAD_LEN + 1);
    out[0] = HEADER;
    out[1] = (PAYLOAD_LEN >> 8) & 0xFF;
    out[2] = PAYLOAD_LEN & 0xFF;

    var sum = 0;
    var i, base, rgb;
    for (i = 0; i < NUM_LEDS; i++) {
        rgb = getRGB(i);
        base = 3 + i * 3;
        out[base]     = rgb[0] & 0xFF;
        out[base + 1] = rgb[1] & 0xFF;
        out[base + 2] = rgb[2] & 0xFF;
        sum += out[base] + out[base + 1] + out[base + 2];
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
        var b = i * 3;
        return [args[b], args[b + 1], args[b + 2]];
    }));
}

function jit_matrix(name) {
    // Copy incoming matrix into our scratch matrix so we always read a
    // 3-plane / char / 225x1 buffer regardless of upstream sizing.
    scratch.frommatrix(name);
    emit(buildFrame(function (i) {
        return scratch.getcell(i, 0);
    }));
}

function bang() {
    if (lastFrame) outlet(0, lastFrame);
}
