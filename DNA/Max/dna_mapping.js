// dna_mapping.js — for [js dna_mapping.js] in Max
//
// Generates a (x, y) sample-lookup matrix for the double helix:
// for each of the 225 LEDs, computes the source-video pixel coords
// to sample. Output matrix is fed to the right inlet of [jit.repos].
//
// Strand layout (assumed):
//   pixels 0..111   = strand A (bottom -> top)
//   pixels 112..224 = strand B (bottom -> top, 180 degrees offset)
//
// Inlet 0 messages:
//   dim <W> <H>    set source video dims in pixels (default 1920 1080)
//   turns <N>      helical turns per strand (default 3)
//   wrap <0|1>     0 = full 360 degree wrap of video around helix (default)
//                  1 = front-projection only (sin curve)
//   vflip <0|1>    1 = video bottom maps to helix top (default 0)
//   bang           rebuild and output the lookup matrix
//
// Outlet 0:  jit_matrix dna_lookup     2-plane long 225x1 (integer pixel coords)
//
// Tip: connect outlet 0 to the right inlet of [jit.repos], the video
// to the left inlet. jit.repos output is 225x1, sampled per-LED.

autowatch = 1;
inlets  = 1;
outlets = 1;

var NUM_LEDS = 225;

var sourceW    = 1920;
var sourceH    = 1080;
var helixTurns = 3;
var wrapMode   = 0;
var vflip      = 0;

var lookup = new JitterMatrix(2, "long", NUM_LEDS, 1);
lookup.name = "dna_lookup";

function dim(w, h)  { sourceW = w; sourceH = h; rebuild(); }
function turns(n)   { helixTurns = n; rebuild(); }
function wrap(m)    { wrapMode = m ? 1 : 0; rebuild(); }
function vflip_(f)  { vflip = f ? 1 : 0; rebuild(); }
this.vflip = vflip_;
function bang()     { rebuild(); }

// Auto-update source dims whenever a video matrix passes through.
// Connect [jit.playlist] matrix output to this inlet (in parallel with
// its route to jit.repos). Cheap: just two int compares per frame.
function jit_matrix(name) {
    var m = new JitterMatrix(name);
    if (m.dim[0] !== sourceW || m.dim[1] !== sourceH) {
        sourceW = m.dim[0];
        sourceH = m.dim[1];
        rebuild();
    }
}

function rebuild() {
    var halfN     = Math.floor(NUM_LEDS / 2);
    var twoPi     = 2 * Math.PI;
    var i, strand, idx, perStrand, t, angle, u, v, x, y;

    for (i = 0; i < NUM_LEDS; i++) {
        if (i < halfN) { strand = 0; idx = i;          perStrand = halfN; }
        else           { strand = 1; idx = i - halfN;  perStrand = NUM_LEDS - halfN; }

        t     = idx / Math.max(1, perStrand - 1);             // 0..1 along strand
        angle = t * helixTurns * twoPi + strand * Math.PI;    // radians

        if (wrapMode === 0) {
            u = (((angle % twoPi) + twoPi) % twoPi) / twoPi;  // full wrap
        } else {
            u = (Math.sin(angle) + 1) / 2;                    // front projection
        }
        v = vflip ? t : (1 - t);                              // height -> v

        x = Math.round(u * (sourceW - 1));
        y = Math.round(v * (sourceH - 1));
        lookup.setcell(i, 0, "val", x, y);
    }
    outlet(0, "jit_matrix", lookup.name);
}

rebuild();
