// dna_mapping.js v1.2.0 — for [js dna_mapping.js] in Max
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

post("dna_mapping.js v1.2.0\n");

var NUM_LEDS   = 213;
var NUM_LEDS_A = 108;
var NUM_LEDS_B = 105;

var sourceW    = 1920;
var sourceH    = 1080;
var helixTurns = 3;
var wrapMode   = 0;
var vflip      = 0;
var numStrands = 1;   // 1 = single continuous wrap, 2 = double helix
var flipA      = 0;   // 1 = reverse strand A's height progression
var flipB      = 0;   // 1 = reverse strand B's height progression
var splitMode  = 0;   // 1 = strand A samples left half, B samples right half

var lookup = new JitterMatrix(2, "long", NUM_LEDS, 1);
lookup.name = "dna_lookup";

function dim(w, h)  { sourceW = w; sourceH = h; rebuild(); }
function turns(n)   { helixTurns = n; rebuild(); }
function wrap(m)    { wrapMode = m ? 1 : 0; rebuild(); }
function vflip_(f)  { vflip = f ? 1 : 0; rebuild(); }
this.vflip = vflip_;
function strands(n) { numStrands = (n === 2) ? 2 : 1; rebuild(); }
function flipa(f)   { flipA = f ? 1 : 0; rebuild(); }
this.flipA = flipa;
function flipb(f)   { flipB = f ? 1 : 0; rebuild(); }
this.flipB = flipb;
function split(s)   { splitMode = s ? 1 : 0; rebuild(); }
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
    var twoPi     = 2 * Math.PI;
    var i, strand, idx, perStrand, t, angle, u, v, x, y;

    for (i = 0; i < NUM_LEDS; i++) {
        if (numStrands === 1) {
            strand = 0; idx = i; perStrand = NUM_LEDS;
        } else if (i < NUM_LEDS_A) {
            strand = 0; idx = i;             perStrand = NUM_LEDS_A;
        } else {
            strand = 1; idx = i - NUM_LEDS_A; perStrand = NUM_LEDS_B;
        }

        t     = idx / Math.max(1, perStrand - 1);             // 0..1 along strand
        // Per-strand flip: when set, strand's data flow runs top->base
        // (e.g. wiring routed up the helix, DIN at top instead of base).
        if (strand === 0 && flipA === 1) t = 1 - t;
        if (strand === 1 && flipB === 1) t = 1 - t;
        angle = t * helixTurns * twoPi + strand * Math.PI;    // radians

        if (wrapMode === 0) {
            u = (((angle % twoPi) + twoPi) % twoPi) / twoPi;  // full wrap
        } else {
            u = (Math.sin(angle) + 1) / 2;                    // front projection
        }
        v = vflip ? t : (1 - t);                              // height -> v

        if (splitMode === 1) {
            // Strand A -> left half [0, W/2); strand B -> right half [W/2, W).
            var halfW = sourceW / 2;
            if (strand === 0) x = Math.round(u * (halfW - 1));
            else              x = Math.round(halfW + u * (halfW - 1));
        } else {
            x = Math.round(u * (sourceW - 1));
        }
        y = Math.round(v * (sourceH - 1));
        lookup.setcell(i, 0, "val", x, y);
    }
    outlet(0, "jit_matrix", lookup.name);
}

rebuild();
