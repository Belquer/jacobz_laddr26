{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 2,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 84.0, 139.0, 1000.0, 759.0 ],
        "boxes": [
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-68",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 808.0, 1204.0, 195.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 540.0, 530.0, 542.0, 18.0 ],
                    "text": "To snapshot the pedalboard with all parameters, click on the little camera icon in the right toolbar and create new presets",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-232",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 666.0, 1345.0, 42.0, 20.0 ],
                    "text": "limiter"
                }
            },
            {
                "box": {
                    "id": "obj-230",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "signal", "list", "list" ],
                    "patching_rect": [ 656.0, 1362.0, 83.0, 22.0 ],
                    "text": "omx.peaklim~"
                }
            },
            {
                "box": {
                    "id": "obj-217",
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1096.0, 1365.0, 10.0, 160.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-216",
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 766.0, 905.0, 1120.0, 10.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-213",
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 926.0, 725.0, 10.0, 170.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-212",
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 636.0, 1005.0, 10.0, 520.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-207",
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 326.0, 995.0, 300.0, 10.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-182",
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 636.0, 725.0, 10.0, 260.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-67",
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 756.0, 1355.0, 340.0, 10.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1176.0, 725.0, 10.0, 170.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-211",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1376.0, 725.0, 121.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 370.0, 85.0, 84.0, 18.0 ],
                    "text": "Pedals collection",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "autopopulate": 1,
                    "fontface": 0,
                    "fontname": "Lato",
                    "fontsize": 10.0,
                    "headerlabel": "All Pedals",
                    "id": "obj-199",
                    "items": [ "Rnbo-AutoFilter.amxd", ",", "Rnbo-AutoSwell.amxd", ",", "Rnbo-Booster.amxd", ",", "Rnbo-Chorus.amxd", ",", "Rnbo-Compressor.amxd", ",", "Rnbo-Empty.amxd", ",", "Rnbo-FilterDelay.amxd", ",", "Rnbo-Flanger.amxd", ",", "Rnbo-Freezer.amxd", ",", "Rnbo-FreqShifter.amxd", ",", "Rnbo-GraphicEQ.amxd", ",", "Rnbo-GuitarSynth.amxd", ",", "Rnbo-Limiter.amxd", ",", "Rnbo-Looper.amxd", ",", "Rnbo-NoiseGate.amxd", ",", "Rnbo-Octaver.amxd", ",", "Rnbo-Overdrive.amxd", ",", "Rnbo-ParamEQ.amxd", ",", "Rnbo-Phaser.amxd", ",", "Rnbo-PitchShifter.amxd", ",", "Rnbo-PlateReverb.amxd", ",", "Rnbo-RingMod.amxd", ",", "Rnbo-RotaVibe.amxd", ",", "Rnbo-ShelvingEQ.amxd", ",", "Rnbo-ShimmeRev.amxd", ",", "Rnbo-TalkWah.amxd", ",", "Rnbo-Tremolo.amxd", ",", "Rnbo-Tuner.amxd", ",", "Rnbo-Vibrato.amxd", ",", "Rnbo-Volume.amxd", ",", "Rnbo-WahWah.amxd" ],
                    "maxclass": "chooser",
                    "numinlets": 1,
                    "numoutlets": 6,
                    "outlettype": [ "", "", "", "", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1376.0, 805.0, 120.0, 80.0 ],
                    "prefix": "Macintosh HD:/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/devices",
                    "presentation": 1,
                    "presentation_rect": [ 370.0, 110.0, 150.0, 340.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-202",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1216.0, 865.0, 85.0, 22.0 ],
                    "text": "prepend prefix"
                }
            },
            {
                "box": {
                    "id": "obj-203",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1216.0, 835.0, 147.0, 22.0 ],
                    "text": "sprintf symout %s/devices"
                }
            },
            {
                "box": {
                    "id": "obj-204",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 1216.0, 795.0, 99.0, 22.0 ],
                    "saved_object_attributes": {
                        "legacyoutputorder": 1
                    },
                    "text": "regexp (.+)/.+"
                }
            },
            {
                "box": {
                    "id": "obj-205",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1216.0, 725.0, 87.0, 22.0 ],
                    "text": "loadmess path"
                }
            },
            {
                "box": {
                    "id": "obj-206",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1216.0, 755.0, 68.0, 22.0 ],
                    "save": [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
                    "text": "thispatcher"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-179",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1376.0, 745.0, 194.0, 62.0 ],
                    "presentation": 1,
                    "presentation_linecount": 7,
                    "presentation_rect": [ 370.0, 458.0, 152.0, 85.0 ],
                    "text": "To load a new pedal into the pedalboard, select a pedal name in the above list and option/alt-drag the selected device to the desired pedal slot. Then select \"Read ... \" and lock the patcher to use the pedal.",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-178",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 356.0, 1015.0, 185.0, 29.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1180.0, 70.0, 220.0, 18.0 ],
                    "text": "Use the matrix to create different pedal chains",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-175",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 776.0, 1365.0, 236.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1160.0, 445.0, 290.0, 18.0 ],
                    "text": "Select an audio output for monitoring and recording",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-173",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 336.0, 735.0, 200.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 70.0, 445.0, 240.0, 18.0 ],
                    "text": "Plug your instrument and try the pedals live",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-69",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 956.0, 795.0, 162.0, 60.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 90.0, 108.0, 214.0, 47.0 ],
                    "text": "Each pedal device uses a central Max external that was generated from within the RNBO Pedals examples.",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ]
                }
            },
            {
                "box": {
                    "dontreplace": 1,
                    "id": "obj-210",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 706.0, 1495.0, 49.0, 22.0 ]
                }
            },
            {
                "box": {
                    "dontreplace": 1,
                    "id": "obj-209",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 426.0, 925.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-154",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 376.0, 1075.0, 35.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1412.0, 80.0, 35.0, 22.0 ],
                    "text": "clear",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-222",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 786.0, 1425.0, 29.5, 22.0 ],
                    "text": "+ 1"
                }
            },
            {
                "box": {
                    "id": "obj-223",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 736.0, 1455.0, 29.5, 22.0 ],
                    "text": "join"
                }
            },
            {
                "box": {
                    "id": "obj-224",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 736.0, 1425.0, 29.5, 22.0 ],
                    "text": "- 1"
                }
            },
            {
                "box": {
                    "id": "obj-225",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 786.0, 1455.0, 33.0, 22.0 ],
                    "text": "<< 1"
                }
            },
            {
                "box": {
                    "id": "obj-220",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 711.0, 1185.0, 29.5, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-219",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 656.0, 1185.0, 29.5, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-218",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 426.0, 795.0, 29.5, 22.0 ],
                    "text": "+ 1"
                }
            },
            {
                "box": {
                    "id": "obj-215",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 426.0, 885.0, 29.5, 22.0 ],
                    "text": "join"
                }
            },
            {
                "box": {
                    "id": "obj-214",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 426.0, 855.0, 29.5, 22.0 ],
                    "text": "- 1"
                }
            },
            {
                "box": {
                    "id": "obj-208",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 426.0, 825.0, 33.0, 22.0 ],
                    "text": "<< 1"
                }
            },
            {
                "box": {
                    "id": "obj-198",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 556.0, 875.0, 29.5, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-197",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 506.0, 875.0, 29.5, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-201",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 576.0, 825.0, 34.0, 22.0 ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "id": "obj-200",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 576.0, 795.0, 39.0, 22.0 ],
                    "text": "$1 10"
                }
            },
            {
                "box": {
                    "id": "obj-196",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 866.0, 1465.0, 52.0, 22.0 ],
                    "text": "pcontrol"
                }
            },
            {
                "box": {
                    "id": "obj-183",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 866.0, 1425.0, 120.0, 35.0 ],
                    "text": "loadunique Quickrecord.maxpat"
                }
            },
            {
                "box": {
                    "id": "obj-181",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1006.0, 1425.0, 64.0, 35.0 ],
                    "text": ";\rdsp status"
                }
            },
            {
                "box": {
                    "id": "obj-180",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 336.0, 795.0, 64.0, 35.0 ],
                    "text": ";\rdsp status"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "id": "obj-152",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 736.0, 1395.0, 47.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1159.0, 471.0, 47.0, 20.0 ],
                    "text": "Output",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "id": "obj-127",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 656.0, 1465.0, 40.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1400.0, 470.0, 40.0, 20.0 ],
                    "text": "Audio",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "id": "obj-66",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 386.0, 765.0, 39.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 70.0, 471.0, 36.0, 20.0 ],
                    "text": "Input",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "id": "obj-57",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 506.0, 775.0, 40.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 265.0, 470.0, 40.0, 20.0 ],
                    "text": "Audio",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "legacytextcolor": 1,
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 866.0, 1395.0, 40.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1290.0, 470.0, 40.0, 23.0 ],
                    "rounded": 8.0,
                    "text": "Rec",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "texton": "Rec",
                    "textoncolor": [ 0.12775145471096, 0.999752759933472, 0.999038398265839, 1.0 ],
                    "usebgoncolor": 1
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 10.0,
                    "id": "obj-71",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 326.0, 1105.0, 34.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1153.0, 93.0, 33.0, 18.0 ],
                    "text": "From",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-65",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 316.0, 1045.0, 37.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1160.0, 376.0, 40.0, 18.0 ],
                    "text": "Preset",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "active1": [ 0.995956301689148, 0.832953810691833, 0.037982419133186, 1.0 ],
                    "bubblesize": 12,
                    "hint": "Shift-click in a square to store, click on square to recall, shift-(option|alt)-click on square to delete",
                    "id": "obj-64",
                    "maxclass": "preset",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                    "patching_rect": [ 356.0, 1045.0, 200.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1205.0, 375.5, 200.0, 20.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 256, "obj-72", "matrixctrl", "list", 0, 0, 0, 0, 1, 1, 0, 2, 0, 0, 3, 0, 0, 4, 0, 0, 5, 0, 0, 6, 0, 0, 7, 0, 0, 8, 0, 0, 9, 0, 0, 10, 0, 1, 0, 0, 1, 1, 0, 1, 2, 1, 1, 3, 0, 1, 4, 0, 1, 5, 0, 1, 6, 0, 1, 7, 0, 1, 8, 0, 1, 9, 0, 1, 10, 0, 2, 0, 0, 2, 1, 0, 2, 2, 0, 2, 3, 1, 2, 4, 0, 2, 5, 0, 2, 6, 0, 2, 7, 0, 2, 8, 0, 2, 9, 0, 2, 10, 0, 3, 0, 0, 3, 1, 0, 3, 2, 0, 3, 3, 0, 3, 4, 1, 3, 5, 0, 3, 6, 0, 3, 7, 0, 3, 8, 0, 3, 9, 0, 3, 10, 0, 4, 0, 0, 4, 1, 0, 4, 2, 0, 4, 3, 0, 4, 4, 0, 4, 5, 1, 4, 6, 0, 4, 7, 0, 4, 8, 0, 4, 9, 0, 4, 10, 0, 5, 0, 0, 5, 1, 0, 5, 2, 0, 5, 3, 0, 5, 4, 0, 5, 5, 0, 5, 6, 1, 5, 7, 0, 5, 8, 0, 5, 9, 0, 5, 10, 0, 6, 0, 0, 6, 1, 0, 6, 2, 0, 6, 3, 0, 6, 4, 0, 6, 5, 0, 6, 6, 0, 6, 7, 1, 6, 8, 0, 6, 9, 0, 6, 10, 0, 7, 0, 0, 7, 1, 0, 7, 2, 0, 7, 3, 0, 7, 4, 0, 7, 5, 0, 7, 6, 0, 115, "obj-72", "matrixctrl", "list", 7, 7, 0, 7, 8, 1, 7, 9, 0, 7, 10, 0, 8, 0, 0, 8, 1, 0, 8, 2, 0, 8, 3, 0, 8, 4, 0, 8, 5, 0, 8, 6, 0, 8, 7, 0, 8, 8, 0, 8, 9, 1, 8, 10, 0, 9, 0, 0, 9, 1, 0, 9, 2, 0, 9, 3, 0, 9, 4, 0, 9, 5, 0, 9, 6, 0, 9, 7, 0, 9, 8, 0, 9, 9, 0, 9, 10, 1, 10, 0, 1, 10, 1, 0, 10, 2, 0, 10, 3, 0, 10, 4, 0, 10, 5, 0, 10, 6, 0, 10, 7, 0, 10, 8, 0, 10, 9, 0, 10, 10, 0 ]
                        }
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "legacytextcolor": 1,
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1006.0, 1395.0, 40.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1340.0, 470.0, 40.0, 23.0 ],
                    "text": "DSP",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "texton": "DSP",
                    "textoncolor": [ 0.12775145471096, 0.999752759933472, 0.999038398265839, 1.0 ],
                    "usebgoncolor": 1
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "items": [ "1/2", ",", "3/4", ",", "5/6", ",", "7/8", ",", "9/10", ",", "11/12", ",", "13/14", ",", "15/16", ",", "17/18", ",", "19/20", ",", "21/22", ",", "23/24", ",", "25/26", ",", "27/28", ",", "29/30", ",", "31/32", ",", "33/34", ",", "35/36", ",", "37/38", ",", "39/40", ",", "41/42", ",", "43/44", ",", "45/46", ",", "47/48", ",", "49/50", ",", "51/52", ",", "53/54", ",", "55/56", ",", "57/58", ",", "59/60", ",", "61/62", ",", "63/64" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 786.0, 1395.0, 60.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1210.0, 470.0, 60.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "1/2", "3/4", "5/6", "7/8", "9/10", "11/12", "13/14", "15/16", "17/18", "19/20", "21/22", "23/24", "25/26", "27/28", "29/30", "31/32", "33/34", "35/36", "37/38", "39/40", "41/42", "43/44", "45/46", "47/48", "49/50", "51/52", "53/54", "55/56", "57/58", "59/60", "61/62", "63/64" ],
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "Dacs",
                            "parameter_mmax": 31,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Dacs",
                            "parameter_type": 2
                        }
                    },
                    "varname": "Dacs"
                }
            },
            {
                "box": {
                    "color": [ 0.12775145471096, 0.999752759933472, 0.999038398265839, 1.0 ],
                    "id": "obj-56",
                    "local": 1,
                    "maxclass": "ezadc~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 506.0, 805.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 265.0, 500.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "legacytextcolor": 1,
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 336.0, 765.0, 40.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 220.0, 470.0, 30.0, 23.0 ],
                    "rounded": 8.0,
                    "text": "DSP",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "texton": "DSP",
                    "textoncolor": [ 0.12775145471096, 0.999752759933472, 0.999038398265839, 1.0 ],
                    "usebgoncolor": 1
                }
            },
            {
                "box": {
                    "id": "obj-54",
                    "maxclass": "textbutton",
                    "mode": 1,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 576.0, 765.0, 40.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 180.0, 470.0, 30.0, 23.0 ],
                    "text": "Off",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "texton": "On",
                    "textoncolor": [ 0.12775145471096, 0.999752759933472, 0.999038398265839, 1.0 ],
                    "usebgoncolor": 1
                }
            },
            {
                "box": {
                    "clip_size": 1,
                    "display_range": [ -70.0, 30.0 ],
                    "fontname": "Lato",
                    "fontsize": 10.0,
                    "id": "obj-20",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "orientation": 1,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 506.0, 915.0, 69.0, 37.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 77.0, 510.0, 170.0, 37.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 0 ],
                            "parameter_initial_enable": 1,
                            "parameter_invisible": 2,
                            "parameter_linknames": 1,
                            "parameter_longname": "Input",
                            "parameter_mmax": 30.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Gain",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "showname": 0,
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "varname": "Input"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "items": [ "1/2", ",", "3/4", ",", "5/6", ",", "7/8", ",", "9/10", ",", "11/12", ",", "13/14", ",", "15/16", ",", "17/18", ",", "19/20", ",", "21/22", ",", "23/24", ",", "25/26", ",", "27/28", ",", "29/30", ",", "31/32", ",", "33/34", ",", "35/36", ",", "37/38", ",", "39/40", ",", "41/42", ",", "43/44", ",", "45/46", ",", "47/48", ",", "49/50", ",", "51/52", ",", "53/54", ",", "55/56", ",", "57/58", ",", "59/60", ",", "61/62", ",", "63/64" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 426.0, 765.0, 60.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 110.0, 470.0, 60.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "1/2", "3/4", "5/6", "7/8", "9/10", "11/12", "13/14", "15/16", "17/18", "19/20", "21/22", "23/24", "25/26", "27/28", "29/30", "31/32", "33/34", "35/36", "37/38", "39/40", "41/42", "43/44", "45/46", "47/48", "49/50", "51/52", "53/54", "55/56", "57/58", "59/60", "61/62", "63/64" ],
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "Adcs",
                            "parameter_mmax": 31,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Adcs",
                            "parameter_type": 2
                        }
                    },
                    "varname": "Adcs"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ],
                    "id": "obj-150",
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 1801.0, 1205.0, 10.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1087.0, 483.0, 1.0, 30.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": ""
                        }
                    },
                    "slidercolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ],
                    "id": "obj-151",
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 1771.0, 1205.0, 10.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1084.0, 483.0, 1.0, 30.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": ""
                        }
                    },
                    "slidercolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ],
                    "id": "obj-137",
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 1691.0, 1205.0, 10.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 977.0, 473.0, 1.0, 30.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": ""
                        }
                    },
                    "slidercolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ],
                    "id": "obj-22",
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 1661.0, 1205.0, 10.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 974.0, 473.0, 1.0, 30.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": ""
                        }
                    },
                    "slidercolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ],
                    "id": "obj-135",
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 1581.0, 1205.0, 10.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 867.0, 473.0, 1.0, 30.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": ""
                        }
                    },
                    "slidercolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ],
                    "id": "obj-23",
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 1551.0, 1205.0, 10.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 864.0, 473.0, 1.0, 30.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": ""
                        }
                    },
                    "slidercolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ],
                    "id": "obj-133",
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 1471.0, 1205.0, 10.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 757.0, 473.0, 1.0, 30.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": ""
                        }
                    },
                    "slidercolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ],
                    "id": "obj-134",
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 1441.0, 1205.0, 10.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 754.0, 473.0, 1.0, 30.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": ""
                        }
                    },
                    "slidercolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ],
                    "id": "obj-131",
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 1361.0, 1205.0, 10.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 647.0, 473.0, 1.0, 30.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": ""
                        }
                    },
                    "slidercolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ],
                    "id": "obj-132",
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 1331.0, 1205.0, 10.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 644.0, 473.0, 1.0, 30.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": ""
                        }
                    },
                    "slidercolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ],
                    "id": "obj-129",
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 1251.0, 1205.0, 10.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1087.0, 263.0, 1.0, 30.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": ""
                        }
                    },
                    "slidercolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ],
                    "id": "obj-130",
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 1221.0, 1205.0, 10.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1084.0, 263.0, 1.0, 30.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": ""
                        }
                    },
                    "slidercolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ],
                    "id": "obj-84",
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 1141.0, 1205.0, 10.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 977.0, 253.0, 1.0, 30.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": ""
                        }
                    },
                    "slidercolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ],
                    "id": "obj-128",
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 1111.0, 1205.0, 10.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 974.0, 253.0, 1.0, 30.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": ""
                        }
                    },
                    "slidercolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ],
                    "id": "obj-24",
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 1031.0, 1205.0, 10.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 867.0, 253.0, 1.0, 30.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": ""
                        }
                    },
                    "slidercolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ],
                    "id": "obj-26",
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 1001.0, 1205.0, 10.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 864.0, 253.0, 1.0, 30.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": ""
                        }
                    },
                    "slidercolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ],
                    "id": "obj-27",
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 921.0, 1205.0, 10.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 757.0, 253.0, 1.0, 30.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": ""
                        }
                    },
                    "slidercolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ],
                    "id": "obj-28",
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 891.0, 1205.0, 10.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 754.0, 253.0, 1.0, 30.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": ""
                        }
                    },
                    "slidercolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ],
                    "id": "obj-227",
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 811.0, 1205.0, 10.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 647.0, 253.0, 1.0, 30.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": ""
                        }
                    },
                    "slidercolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ],
                    "id": "obj-228",
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 781.0, 1205.0, 10.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 644.0, 253.0, 1.0, 30.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": ""
                        }
                    },
                    "slidercolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-221",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 59.0, 104.0, 414.0, 458.0 ],
                        "default_fontname": "Lato",
                        "gridonopen": 2,
                        "gridsize": [ 10.0, 10.0 ],
                        "gridsnaponopen": 2,
                        "objectsnaponopen": 0,
                        "subpatcher_template": "MP-Rnbo",
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-12",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 70.0, 280.0, 70.0, 35.0 ],
                                    "text": "Stereo connection"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 190.0, 400.0, 133.0, 21.0 ],
                                    "text": "To matrix~ inside rnbo~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 180.0, 30.0, 60.0, 21.0 ],
                                    "text": "Matrixctrl"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 240.0, 200.0, 20.0, 21.0 ],
                                    "text": "R"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 180.0, 200.0, 20.0, 21.0 ],
                                    "text": "L"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 120.0, 200.0, 20.0, 21.0 ],
                                    "text": "R"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 60.0, 200.0, 20.0, 21.0 ],
                                    "text": "L"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 330.0, 130.0, 28.0, 21.0 ],
                                    "text": "1/0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 210.0, 130.0, 29.0, 21.0 ],
                                    "text": "Out"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 90.0, 130.0, 20.0, 21.0 ],
                                    "text": "In"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-218",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 150.0, 340.0, 143.0, 23.0 ],
                                    "text": "message matrix $1 $2 $3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-217",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 210.0, 290.0, 39.0, 23.0 ],
                                    "text": "join 3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-216",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 280.0, 220.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-215",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 150.0, 290.0, 39.0, 23.0 ],
                                    "text": "join 3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-211",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 220.0, 220.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-212",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 220.0, 170.0, 29.5, 23.0 ],
                                    "text": "+ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-213",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 160.0, 220.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-214",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 160.0, 170.0, 33.0, 23.0 ],
                                    "text": "<< 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-209",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 100.0, 220.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-208",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 100.0, 170.0, 29.5, 23.0 ],
                                    "text": "+ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-207",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 40.0, 220.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-205",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 40.0, 170.0, 33.0, 23.0 ],
                                    "text": "<< 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-204",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 280.0, 130.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-201",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 160.0, 130.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-200",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 40.0, 130.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-198",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
                                    "patching_rect": [ 140.0, 80.0, 78.99999999999997, 23.0 ],
                                    "text": "unjoin 3"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-219",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "list" ],
                                    "patching_rect": [ 140.0, 30.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-220",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 150.0, 390.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-200", 0 ],
                                    "source": [ "obj-198", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-201", 0 ],
                                    "source": [ "obj-198", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-204", 0 ],
                                    "source": [ "obj-198", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-205", 0 ],
                                    "source": [ "obj-200", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-214", 0 ],
                                    "source": [ "obj-201", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-216", 0 ],
                                    "source": [ "obj-204", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-207", 0 ],
                                    "order": 1,
                                    "source": [ "obj-205", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-208", 0 ],
                                    "order": 0,
                                    "source": [ "obj-205", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-215", 0 ],
                                    "source": [ "obj-207", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-209", 0 ],
                                    "source": [ "obj-208", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-217", 0 ],
                                    "source": [ "obj-209", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-217", 1 ],
                                    "source": [ "obj-211", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-211", 0 ],
                                    "source": [ "obj-212", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-215", 1 ],
                                    "source": [ "obj-213", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-212", 0 ],
                                    "order": 0,
                                    "source": [ "obj-214", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-213", 0 ],
                                    "order": 1,
                                    "source": [ "obj-214", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-218", 0 ],
                                    "source": [ "obj-215", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-215", 2 ],
                                    "order": 1,
                                    "source": [ "obj-216", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-217", 2 ],
                                    "order": 0,
                                    "source": [ "obj-216", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-218", 0 ],
                                    "source": [ "obj-217", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-220", 0 ],
                                    "source": [ "obj-218", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-198", 0 ],
                                    "source": [ "obj-219", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 356.0, 1395.0, 63.0, 22.0 ],
                    "saved_object_attributes": {
                        "fontname": "Lato"
                    },
                    "text": "p Connect"
                }
            },
            {
                "box": {
                    "arrows": 2,
                    "id": "obj-116",
                    "justification": 1,
                    "linecolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 578.0, 1345.0, 21.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1403.0, 334.0, 16.0, 10.0 ],
                    "saved_attribute_attributes": {
                        "linecolor": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "arrows": 2,
                    "id": "obj-115",
                    "justification": 1,
                    "linecolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 578.0, 1325.0, 21.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1403.0, 314.0, 16.0, 10.0 ],
                    "saved_attribute_attributes": {
                        "linecolor": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "arrows": 2,
                    "id": "obj-114",
                    "justification": 1,
                    "linecolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 578.0, 1305.0, 21.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1403.0, 294.0, 16.0, 10.0 ],
                    "saved_attribute_attributes": {
                        "linecolor": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "arrows": 2,
                    "id": "obj-113",
                    "justification": 1,
                    "linecolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 578.0, 1285.0, 21.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1403.0, 274.0, 16.0, 10.0 ],
                    "saved_attribute_attributes": {
                        "linecolor": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "arrows": 2,
                    "id": "obj-112",
                    "justification": 1,
                    "linecolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 578.0, 1265.0, 21.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1403.0, 254.0, 16.0, 10.0 ],
                    "saved_attribute_attributes": {
                        "linecolor": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "arrows": 2,
                    "id": "obj-111",
                    "justification": 1,
                    "linecolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 578.0, 1245.0, 21.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1403.0, 234.0, 16.0, 10.0 ],
                    "saved_attribute_attributes": {
                        "linecolor": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "arrows": 2,
                    "id": "obj-110",
                    "justification": 1,
                    "linecolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 578.0, 1225.0, 21.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1403.0, 214.0, 16.0, 10.0 ],
                    "saved_attribute_attributes": {
                        "linecolor": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "arrows": 2,
                    "id": "obj-109",
                    "justification": 1,
                    "linecolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 578.0, 1205.0, 21.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1403.0, 194.0, 16.0, 10.0 ],
                    "saved_attribute_attributes": {
                        "linecolor": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "arrows": 2,
                    "id": "obj-108",
                    "justification": 1,
                    "linecolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 578.0, 1185.0, 21.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1403.0, 174.0, 16.0, 10.0 ],
                    "saved_attribute_attributes": {
                        "linecolor": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "arrows": 2,
                    "id": "obj-107",
                    "justification": 1,
                    "linecolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 578.0, 1165.0, 21.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1403.0, 154.0, 16.0, 10.0 ],
                    "saved_attribute_attributes": {
                        "linecolor": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "arrows": 2,
                    "id": "obj-106",
                    "justification": 1,
                    "linecolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 578.0, 1145.0, 21.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1403.0, 134.0, 16.0, 10.0 ],
                    "saved_attribute_attributes": {
                        "linecolor": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "arrows": 2,
                    "id": "obj-104",
                    "justification": 1,
                    "linecolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 556.0, 1123.0, 20.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1385.0, 112.0, 10.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "linecolor": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "arrows": 2,
                    "id": "obj-105",
                    "justification": 1,
                    "linecolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 536.0, 1123.0, 20.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1365.0, 112.0, 10.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "linecolor": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "id": "obj-85",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1758.0, 1285.0, 82.0, 22.0 ],
                    "text": "send~ FX10R"
                }
            },
            {
                "box": {
                    "id": "obj-86",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1706.0, 1315.0, 80.0, 22.0 ],
                    "text": "send~ FX10L"
                }
            },
            {
                "box": {
                    "id": "obj-87",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1653.0, 1285.0, 76.0, 22.0 ],
                    "text": "send~ FX9R"
                }
            },
            {
                "box": {
                    "id": "obj-88",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1601.0, 1315.0, 74.0, 22.0 ],
                    "text": "send~ FX9L"
                }
            },
            {
                "box": {
                    "id": "obj-89",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1797.0, 955.0, 95.0, 22.0 ],
                    "text": "receive~ FX10R"
                }
            },
            {
                "box": {
                    "id": "obj-90",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1756.0, 925.0, 93.0, 22.0 ],
                    "text": "receive~ FX10L"
                }
            },
            {
                "box": {
                    "id": "obj-91",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1687.0, 955.0, 88.0, 22.0 ],
                    "text": "receive~ FX9R"
                }
            },
            {
                "box": {
                    "id": "obj-92",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1646.0, 925.0, 86.0, 22.0 ],
                    "text": "receive~ FX9L"
                }
            },
            {
                "box": {
                    "autosave": 0,
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-93",
                    "linecount": 3,
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 4,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal", "", "" ],
                    "patching_rect": [ 1756.0, 995.0, 102.0, 196.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 980.0, 320.0, 102.0, 49.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "FX10",
                            "parameter_modmode": 0,
                            "parameter_shortname": "FX10",
                            "parameter_type": 3
                        }
                    },
                    "saved_object_attributes": {
                        "autosave": 0,
                        "autosize": 0,
                        "parameter_enable": 1,
                        "patchername": "Rnbo-PlateReverb.amxd",
                        "patchername_fallback": "Package:/RNBO Guitar Pedals/devices/Rnbo-PlateReverb.amxd"
                    },
                    "text": "amxd~ Rnbo-Chorus.amxd",
                    "varname": "FX10",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "autosave": 0,
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-94",
                    "linecount": 3,
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 4,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal", "", "" ],
                    "patching_rect": [ 1646.0, 995.0, 102.0, 196.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 870.0, 320.0, 102.0, 49.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "FX9",
                            "parameter_modmode": 0,
                            "parameter_shortname": "FX9",
                            "parameter_type": 3
                        }
                    },
                    "saved_object_attributes": {
                        "active": 0,
                        "autosave": 0,
                        "autosize": 0,
                        "parameter_enable": 1,
                        "patchername": "Rnbo-FilterDelay.amxd",
                        "patchername_fallback": "Package:/RNBO Guitar Pedals/devices/Rnbo-FilterDelay.amxd"
                    },
                    "text": "amxd~ Rnbo-Tremolo.amxd",
                    "varname": "FX9",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "arrows": 2,
                    "id": "obj-80",
                    "justification": 1,
                    "linecolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 516.0, 1123.0, 20.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1345.0, 112.0, 10.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "linecolor": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "arrows": 2,
                    "id": "obj-81",
                    "justification": 1,
                    "linecolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 496.0, 1123.0, 20.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1325.0, 112.0, 10.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "linecolor": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "arrows": 2,
                    "id": "obj-79",
                    "justification": 1,
                    "linecolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 476.0, 1123.0, 20.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1305.0, 112.0, 10.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "linecolor": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "arrows": 2,
                    "id": "obj-78",
                    "justification": 1,
                    "linecolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 456.0, 1123.0, 20.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1285.0, 112.0, 10.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "linecolor": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "arrows": 2,
                    "id": "obj-77",
                    "justification": 1,
                    "linecolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 436.0, 1123.0, 20.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1265.0, 112.0, 10.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "linecolor": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "arrows": 2,
                    "id": "obj-76",
                    "justification": 1,
                    "linecolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 416.0, 1123.0, 20.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1245.0, 112.0, 10.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "linecolor": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "arrows": 2,
                    "id": "obj-75",
                    "justification": 1,
                    "linecolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 396.0, 1123.0, 20.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1225.0, 112.0, 10.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "linecolor": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "arrows": 2,
                    "id": "obj-74",
                    "justification": 1,
                    "linecolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 376.0, 1123.0, 20.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1205.0, 112.0, 10.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "linecolor": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "arrows": 2,
                    "id": "obj-73",
                    "justification": 1,
                    "linecolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 356.0, 1123.0, 20.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1185.0, 112.0, 10.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "linecolor": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.168627450980392, 0.168627450980392, 0.168627450980392, 1.0 ],
                    "color": [ 0.995956301689148, 0.832953810691833, 0.037982419133186, 1.0 ],
                    "columns": 11,
                    "id": "obj-72",
                    "maxclass": "matrixctrl",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "list", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 356.0, 1145.0, 220.0, 220.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1180.0, 130.0, 220.0, 220.0 ],
                    "rows": 11,
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0, 1, 1, 1, 2, 1, 2, 3, 1, 3, 4, 1, 4, 5, 1, 5, 6, 1, 6, 7, 1, 7, 8, 1, 8, 9, 1, 9, 10, 1, 10, 0, 1 ],
                            "parameter_initial_enable": 1,
                            "parameter_invisible": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "Matrix",
                            "parameter_modmode": 0,
                            "parameter_shortname": "Matrix",
                            "parameter_type": 3
                        }
                    },
                    "varname": "Matrix"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-60",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 59.0, 104.0, 601.0, 289.0 ],
                        "default_fontname": "Lato",
                        "gridonopen": 2,
                        "gridsize": [ 10.0, 10.0 ],
                        "gridsnaponopen": 2,
                        "objectsnaponopen": 0,
                        "subpatcher_template": "MP-Rnbo",
                        "boxes": [
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-4",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 70.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "linecount": 2,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 70.0, 130.0, 80.0, 37.0 ],
                                    "text": "clearchecks, checkitem $1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-1",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 320.0, 220.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-53",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 480.0, 127.0, 58.0, 23.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-50",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 320.0, 150.0, 85.0, 23.0 ],
                                    "text": "prepend prefix"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-47",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 320.0, 120.0, 139.0, 23.0 ],
                                    "text": "sprintf symout %s/media"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-32",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "", "", "", "", "" ],
                                    "patching_rect": [ 300.0, 90.0, 99.0, 23.0 ],
                                    "saved_object_attributes": {
                                        "legacyoutputorder": 1
                                    },
                                    "text": "regexp (.+)/.+"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 480.0, 157.0, 32.0, 23.0 ],
                                    "text": "path"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "int" ],
                                    "patching_rect": [ 190.0, 90.0, 56.0, 23.0 ],
                                    "text": "strippath"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "linecount": 3,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 190.0, 120.0, 90.0, 52.0 ],
                                    "text": "remove 1, append $1 1, setclip 1 loop 1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-54",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 190.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-55",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 300.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-56",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 190.0, 220.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-57",
                                    "index": 3,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 480.0, 220.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-56", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-57", 0 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-47", 0 ],
                                    "source": [ "obj-32", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "source": [ "obj-47", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-50", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "source": [ "obj-53", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-54", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-32", 0 ],
                                    "source": [ "obj-55", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 706.0, 825.0, 89.0, 22.0 ],
                    "saved_object_attributes": {
                        "fontname": "Lato"
                    },
                    "text": "p FindSounds"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-29",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 776.0, 855.0, 68.0, 22.0 ],
                    "save": [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
                    "text": "thispatcher"
                }
            },
            {
                "box": {
                    "autopopulate": 1,
                    "depth": 10,
                    "id": "obj-30",
                    "items": [ "AiryRhodes.wav", ",", "AngelasBlues.wav", ",", "Funki.wav", ",", "HappyPatching.wav", ",", "HeavensBells.wav", ",", "InOutCloseFar.wav", ",", "LazyBallade.wav", ",", "PseudoJazz.wav", ",", "RockIt.wav", ",", "SkaWave.wav", ",", "StayOntheScene.wav" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 666.0, 765.0, 239.0, 22.0 ],
                    "prefix": "Macintosh HD:/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/media",
                    "presentation": 1,
                    "presentation_rect": [ 80.0, 250.0, 220.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "AiryRhodes.wav", "AngelasBlues.wav", "Funki.wav", "HappyPatching.wav", "HeavensBells.wav", "InOutCloseFar.wav", "LazyBallade.wav", "PseudoJazz.wav", "RockIt.wav", "SkaWave.wav", "StayOntheScene.wav" ],
                            "parameter_linknames": 1,
                            "parameter_longname": "Browse",
                            "parameter_mmax": 10,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Browse",
                            "parameter_type": 2
                        }
                    },
                    "types": [ "WAVE", "AIFF" ],
                    "varname": "Browse"
                }
            },
            {
                "box": {
                    "clipheight": 55.0,
                    "color": [ 0.12775145471096, 0.999752759933472, 0.999038398265839, 1.0 ],
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "HappyPatching.wav",
                                "filename": "HappyPatching.wav",
                                "filekind": "audiofile",
                                "id": "u789007165",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            },
                            {
                                "absolutepath": "AiryRhodes.wav",
                                "filename": "AiryRhodes.wav",
                                "filekind": "audiofile",
                                "id": "u296006675",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "fontsize": 10.0,
                    "frozen_box_attributes": [ "clipheight" ],
                    "id": "obj-61",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 666.0, 805.0, 239.0, 84.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 80.0, 300.0, 220.0, 90.0 ],
                    "quality": "basic",
                    "saved_attribute_attributes": {
                        "candicane2": {
                            "expression": ""
                        },
                        "candicane3": {
                            "expression": ""
                        },
                        "candicane4": {
                            "expression": ""
                        },
                        "candicane5": {
                            "expression": ""
                        },
                        "candicane6": {
                            "expression": ""
                        },
                        "candicane7": {
                            "expression": ""
                        },
                        "candicane8": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "Playlist",
                            "parameter_modmode": 0,
                            "parameter_shortname": "Playlist",
                            "parameter_type": 3
                        }
                    },
                    "varname": "Playlist",
                    "waveformdisplay": 0
                }
            },
            {
                "box": {
                    "clip_size": 1,
                    "display_range": [ -70.0, 30.0 ],
                    "fontname": "Lato",
                    "fontsize": 10.0,
                    "id": "obj-62",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "orientation": 1,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 656.0, 1285.0, 72.0, 37.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1160.0, 510.0, 220.0, 37.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ -6 ],
                            "parameter_initial_enable": 1,
                            "parameter_invisible": 2,
                            "parameter_linknames": 1,
                            "parameter_longname": "Ouput",
                            "parameter_mmax": 30.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Gain",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "showname": 0,
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "varname": "Ouput"
                }
            },
            {
                "box": {
                    "color": [ 0.12775145471096, 0.999752759933472, 0.999038398265839, 1.0 ],
                    "id": "obj-63",
                    "local": 1,
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 656.0, 1425.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1400.0, 500.0, 40.0, 40.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1548.0, 1285.0, 76.0, 22.0 ],
                    "text": "send~ FX8R"
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1496.0, 1315.0, 74.0, 22.0 ],
                    "text": "send~ FX8L"
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1443.0, 1285.0, 76.0, 22.0 ],
                    "text": "send~ FX7R"
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1391.0, 1315.0, 74.0, 22.0 ],
                    "text": "send~ FX7L"
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1339.0, 1285.0, 76.0, 22.0 ],
                    "text": "send~ FX6R"
                }
            },
            {
                "box": {
                    "id": "obj-50",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1286.0, 1315.0, 74.0, 22.0 ],
                    "text": "send~ FX6L"
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1233.0, 1285.0, 76.0, 22.0 ],
                    "text": "send~ FX5R"
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1181.0, 1315.0, 74.0, 22.0 ],
                    "text": "send~ FX5L"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1128.0, 1285.0, 76.0, 22.0 ],
                    "text": "send~ FX4R"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1076.0, 1315.0, 74.0, 22.0 ],
                    "text": "send~ FX4L"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1023.0, 1285.0, 76.0, 22.0 ],
                    "text": "send~ FX3R"
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 971.0, 1315.0, 74.0, 22.0 ],
                    "text": "send~ FX3L"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1577.0, 955.0, 88.0, 22.0 ],
                    "text": "receive~ FX8R"
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1536.0, 925.0, 86.0, 22.0 ],
                    "text": "receive~ FX8L"
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1467.0, 955.0, 88.0, 22.0 ],
                    "text": "receive~ FX7R"
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1426.0, 925.0, 86.0, 22.0 ],
                    "text": "receive~ FX7L"
                }
            },
            {
                "box": {
                    "autosave": 0,
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-39",
                    "linecount": 3,
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 4,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal", "", "" ],
                    "patching_rect": [ 1536.0, 995.0, 102.0, 196.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 760.0, 320.0, 102.0, 49.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "FX8",
                            "parameter_modmode": 0,
                            "parameter_shortname": "FX8",
                            "parameter_type": 3
                        }
                    },
                    "saved_object_attributes": {
                        "active": 0,
                        "autosave": 0,
                        "autosize": 0,
                        "parameter_enable": 1,
                        "patchername": "Rnbo-Tremolo.amxd",
                        "patchername_fallback": "Package:/RNBO Guitar Pedals/devices/Rnbo-Tremolo.amxd"
                    },
                    "text": "amxd~ Rnbo-Chorus.amxd",
                    "varname": "FX8",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "autosave": 0,
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-40",
                    "linecount": 3,
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 4,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal", "", "" ],
                    "patching_rect": [ 1426.0, 995.0, 102.0, 196.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 650.0, 320.0, 102.0, 49.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "FX7",
                            "parameter_modmode": 0,
                            "parameter_shortname": "FX7",
                            "parameter_type": 3
                        }
                    },
                    "saved_object_attributes": {
                        "active": 0,
                        "autosave": 0,
                        "autosize": 0,
                        "parameter_enable": 1,
                        "patchername": "Rnbo-Flanger.amxd",
                        "patchername_fallback": "Package:/RNBO Guitar Pedals/devices/Rnbo-Flanger.amxd"
                    },
                    "text": "amxd~ Rnbo-Tremolo.amxd",
                    "varname": "FX7",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1357.0, 955.0, 88.0, 22.0 ],
                    "text": "receive~ FX6R"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1316.0, 925.0, 86.0, 22.0 ],
                    "text": "receive~ FX6L"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1247.0, 955.0, 88.0, 22.0 ],
                    "text": "receive~ FX5R"
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1206.0, 925.0, 86.0, 22.0 ],
                    "text": "receive~ FX5L"
                }
            },
            {
                "box": {
                    "autosave": 0,
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-53",
                    "linecount": 3,
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 4,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal", "", "" ],
                    "patching_rect": [ 1316.0, 995.0, 102.0, 196.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 540.0, 320.0, 102.0, 49.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "FX6",
                            "parameter_modmode": 0,
                            "parameter_shortname": "FX6",
                            "parameter_type": 3
                        }
                    },
                    "saved_object_attributes": {
                        "autosave": 0,
                        "autosize": 0,
                        "parameter_enable": 1,
                        "patchername": "Rnbo-Phaser.amxd",
                        "patchername_fallback": "Package:/RNBO Guitar Pedals/devices/Rnbo-Phaser.amxd"
                    },
                    "text": "amxd~ Rnbo-Chorus.amxd",
                    "varname": "FX6",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "autosave": 0,
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-70",
                    "linecount": 3,
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 4,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal", "", "" ],
                    "patching_rect": [ 1206.0, 995.0, 102.0, 196.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 980.0, 100.0, 102.0, 49.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "FX5",
                            "parameter_modmode": 0,
                            "parameter_shortname": "FX5",
                            "parameter_type": 3
                        }
                    },
                    "saved_object_attributes": {
                        "active": 0,
                        "autosave": 0,
                        "autosize": 0,
                        "parameter_enable": 1,
                        "patchername": "Rnbo-Chorus.amxd",
                        "patchername_fallback": "Package:/RNBO Guitar Pedals/devices/Rnbo-Chorus.amxd"
                    },
                    "text": "amxd~ Rnbo-Tremolo.amxd",
                    "varname": "FX5",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-82",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1137.0, 955.0, 88.0, 22.0 ],
                    "text": "receive~ FX4R"
                }
            },
            {
                "box": {
                    "id": "obj-83",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1096.0, 925.0, 86.0, 22.0 ],
                    "text": "receive~ FX4L"
                }
            },
            {
                "box": {
                    "id": "obj-95",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1027.0, 955.0, 88.0, 22.0 ],
                    "text": "receive~ FX3R"
                }
            },
            {
                "box": {
                    "id": "obj-96",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 986.0, 925.0, 86.0, 22.0 ],
                    "text": "receive~ FX3L"
                }
            },
            {
                "box": {
                    "autosave": 0,
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-97",
                    "linecount": 3,
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 4,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal", "", "" ],
                    "patching_rect": [ 1096.0, 995.0, 102.0, 196.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 870.0, 100.0, 102.0, 49.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "FX4",
                            "parameter_modmode": 0,
                            "parameter_shortname": "FX4",
                            "parameter_type": 3
                        }
                    },
                    "saved_object_attributes": {
                        "autosave": 0,
                        "autosize": 0,
                        "parameter_enable": 1,
                        "patchername": "Rnbo-Overdrive.amxd",
                        "patchername_fallback": "Package:/RNBO Guitar Pedals/devices/Rnbo-Overdrive.amxd"
                    },
                    "snapshot": {
                        "filetype": "C74Snapshot",
                        "version": 2,
                        "minorversion": 0,
                        "name": "snapshotlist",
                        "origin": "max~",
                        "type": "list",
                        "subtype": "Undefined",
                        "embed": 1,
                        "snapshot": {
                            "name": "Rnbo-Overdrive.amxd",
                            "origname": "Package:/RNBO Guitar Pedals/devices/Rnbo-Overdrive.amxd",
                            "valuedictionary": {
                                "parameter_values": {
                                    "Drive": 66.9291338582677,
                                    "Volume": -25.98425196850386,
                                    "LowCut": 0.0,
                                    "Bass": 0.0,
                                    "Mid": 0.0,
                                    "MidFreq": 0.0,
                                    "Treble": 0.0,
                                    "HighCut": 0.0,
                                    "Mix": 50.0,
                                    "blob": {
                                        "Colors": [ 1.0, 1.0, 1.0, 1.0 ]
                                    }
                                }
                            },
                            "active": 1
                        },
                        "snapshotlist": {
                            "current_snapshot": 0,
                            "entries": [
                                {
                                    "filetype": "C74Snapshot",
                                    "version": 2,
                                    "minorversion": 0,
                                    "name": "Rnbo-Overdrive.amxd",
                                    "origin": "Rnbo-Overdrive.amxd",
                                    "type": "amxd",
                                    "subtype": "Undefined",
                                    "embed": 0,
                                    "snapshot": {
                                        "name": "Rnbo-Overdrive.amxd",
                                        "origname": "Package:/RNBO Guitar Pedals/devices/Rnbo-Overdrive.amxd",
                                        "valuedictionary": {
                                            "parameter_values": {
                                                "Drive": 66.9291338582677,
                                                "Volume": -25.98425196850386,
                                                "LowCut": 0.0,
                                                "Bass": 0.0,
                                                "Mid": 0.0,
                                                "MidFreq": 0.0,
                                                "Treble": 0.0,
                                                "HighCut": 0.0,
                                                "Mix": 50.0,
                                                "blob": {
                                                    "Colors": [ 1.0, 1.0, 1.0, 1.0 ]
                                                }
                                            }
                                        },
                                        "active": 1
                                    },
                                    "fileref": {
                                        "name": "Rnbo-Overdrive.amxd",
                                        "filename": "Rnbo-Overdrive.amxd.maxsnap",
                                        "filepath": "~/Documents/Max 9/Snapshots",
                                        "filepos": -1,
                                        "snapshotfileid": "ae1e4391f8cb205843f9d1bd67ba3d37"
                                    }
                                }
                            ]
                        }
                    },
                    "text": "amxd~ Rnbo-Chorus.amxd",
                    "varname": "FX4",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "autosave": 0,
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-98",
                    "linecount": 3,
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 4,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal", "", "" ],
                    "patching_rect": [ 986.0, 995.0, 102.0, 196.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 760.0, 100.0, 102.0, 49.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "FX3",
                            "parameter_modmode": 0,
                            "parameter_shortname": "FX3",
                            "parameter_type": 3
                        }
                    },
                    "saved_object_attributes": {
                        "active": 0,
                        "autosave": 0,
                        "autosize": 0,
                        "parameter_enable": 1,
                        "patchername": "Rnbo-WahWah.amxd",
                        "patchername_fallback": "Package:/RNBO Guitar Pedals/devices/Rnbo-WahWah.amxd"
                    },
                    "text": "amxd~ Rnbo-Tremolo.amxd",
                    "varname": "FX3",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 918.0, 1285.0, 76.0, 22.0 ],
                    "text": "send~ FX2R"
                }
            },
            {
                "box": {
                    "id": "obj-99",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 866.0, 1315.0, 74.0, 22.0 ],
                    "text": "send~ FX2L"
                }
            },
            {
                "box": {
                    "id": "obj-100",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 917.0, 955.0, 88.0, 22.0 ],
                    "text": "receive~ FX2R"
                }
            },
            {
                "box": {
                    "id": "obj-101",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 876.0, 925.0, 86.0, 22.0 ],
                    "text": "receive~ FX2L"
                }
            },
            {
                "box": {
                    "id": "obj-102",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 807.0, 955.0, 88.0, 22.0 ],
                    "text": "receive~ FX1R"
                }
            },
            {
                "box": {
                    "id": "obj-103",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 766.0, 925.0, 86.0, 22.0 ],
                    "text": "receive~ FX1L"
                }
            },
            {
                "box": {
                    "id": "obj-117",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 813.0, 1285.0, 76.0, 22.0 ],
                    "text": "send~ FX1R"
                }
            },
            {
                "box": {
                    "id": "obj-118",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 761.0, 1315.0, 74.0, 22.0 ],
                    "text": "send~ FX1L"
                }
            },
            {
                "box": {
                    "autosave": 1,
                    "id": "obj-119",
                    "inletInfo": {
                        "IOInfo": [
                            {
                                "type": "signal",
                                "index": 1,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 2,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 3,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 4,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 5,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 6,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 7,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 8,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 9,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 10,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 11,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 12,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 13,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 14,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 15,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 16,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 17,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 18,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 19,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 20,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 21,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 22,
                                "tag": "",
                                "comment": ""
                            }
                        ]
                    },
                    "maxclass": "newobj",
                    "numinlets": 22,
                    "numoutlets": 23,
                    "outletInfo": {
                        "IOInfo": [
                            {
                                "type": "signal",
                                "index": 1,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 2,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 3,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 4,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 5,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 6,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 7,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 8,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 9,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 10,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 11,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 12,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 13,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 14,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 15,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 16,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 17,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 18,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 19,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 20,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 21,
                                "tag": "",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 22,
                                "tag": "",
                                "comment": ""
                            }
                        ]
                    },
                    "outlettype": [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "list" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "rnbo",
                        "rect": [ 59.0, 104.0, 665.0, 384.0 ],
                        "default_fontname": "Lato",
                        "gridonopen": 2,
                        "gridsize": [ 10.0, 10.0 ],
                        "gridsnaponopen": 2,
                        "objectsnaponopen": 0,
                        "subpatcher_template": "MP-Rnbo",
                        "title": "untitled",
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-53",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 40.0, 100.0, 77.0, 23.0 ],
                                    "rnbo_classname": "inport",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "inport_obj-53",
                                    "text": "inport matrix"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-51",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 550.0, 70.0, 42.0, 23.0 ],
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in~_obj-51",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "signal from inlet with index 22",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "inlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal",
                                                "digest": "signal from inlet with index 22",
                                                "displayName": "",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "in~",
                                        "aliasOf": "in~",
                                        "classname": "in~",
                                        "operator": 0,
                                        "versionId": -1654556303,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "in~ 22"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-52",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 530.0, 40.0, 42.0, 23.0 ],
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "in~_obj-52",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "signal from inlet with index 21",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "inlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal",
                                                "digest": "signal from inlet with index 21",
                                                "displayName": "",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "in~",
                                        "aliasOf": "in~",
                                        "classname": "in~",
                                        "operator": 0,
                                        "versionId": -1654556303,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "in~ 21"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-45",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 510.0, 130.0, 42.0, 23.0 ],
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 3,
                                    "rnbo_uniqueid": "in~_obj-45",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "signal from inlet with index 20",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "inlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal",
                                                "digest": "signal from inlet with index 20",
                                                "displayName": "",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "in~",
                                        "aliasOf": "in~",
                                        "classname": "in~",
                                        "operator": 0,
                                        "versionId": -1654556303,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "in~ 20"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-46",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 490.0, 100.0, 42.0, 23.0 ],
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 4,
                                    "rnbo_uniqueid": "in~_obj-46",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "signal from inlet with index 19",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "inlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal",
                                                "digest": "signal from inlet with index 19",
                                                "displayName": "",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "in~",
                                        "aliasOf": "in~",
                                        "classname": "in~",
                                        "operator": 0,
                                        "versionId": -1654556303,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "in~ 19"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-47",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 470.0, 70.0, 42.0, 23.0 ],
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 5,
                                    "rnbo_uniqueid": "in~_obj-47",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "signal from inlet with index 18",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "inlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal",
                                                "digest": "signal from inlet with index 18",
                                                "displayName": "",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "in~",
                                        "aliasOf": "in~",
                                        "classname": "in~",
                                        "operator": 0,
                                        "versionId": -1654556303,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "in~ 18"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-48",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 450.0, 40.0, 42.0, 23.0 ],
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 6,
                                    "rnbo_uniqueid": "in~_obj-48",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "signal from inlet with index 17",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "inlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal",
                                                "digest": "signal from inlet with index 17",
                                                "displayName": "",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "in~",
                                        "aliasOf": "in~",
                                        "classname": "in~",
                                        "operator": 0,
                                        "versionId": -1654556303,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "in~ 17"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-41",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 430.0, 130.0, 42.0, 23.0 ],
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 7,
                                    "rnbo_uniqueid": "in~_obj-41",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "signal from inlet with index 16",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "inlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal",
                                                "digest": "signal from inlet with index 16",
                                                "displayName": "",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "in~",
                                        "aliasOf": "in~",
                                        "classname": "in~",
                                        "operator": 0,
                                        "versionId": -1654556303,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "in~ 16"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-42",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 410.0, 100.0, 42.0, 23.0 ],
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 8,
                                    "rnbo_uniqueid": "in~_obj-42",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "signal from inlet with index 15",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "inlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal",
                                                "digest": "signal from inlet with index 15",
                                                "displayName": "",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "in~",
                                        "aliasOf": "in~",
                                        "classname": "in~",
                                        "operator": 0,
                                        "versionId": -1654556303,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "in~ 15"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-43",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 390.0, 70.0, 42.0, 23.0 ],
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 9,
                                    "rnbo_uniqueid": "in~_obj-43",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "signal from inlet with index 14",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "inlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal",
                                                "digest": "signal from inlet with index 14",
                                                "displayName": "",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "in~",
                                        "aliasOf": "in~",
                                        "classname": "in~",
                                        "operator": 0,
                                        "versionId": -1654556303,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "in~ 14"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-44",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 370.0, 40.0, 42.0, 23.0 ],
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 10,
                                    "rnbo_uniqueid": "in~_obj-44",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "signal from inlet with index 13",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "inlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal",
                                                "digest": "signal from inlet with index 13",
                                                "displayName": "",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "in~",
                                        "aliasOf": "in~",
                                        "classname": "in~",
                                        "operator": 0,
                                        "versionId": -1654556303,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "in~ 13"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-37",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 350.0, 130.0, 42.0, 23.0 ],
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 11,
                                    "rnbo_uniqueid": "in~_obj-37",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "signal from inlet with index 12",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "inlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal",
                                                "digest": "signal from inlet with index 12",
                                                "displayName": "",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "in~",
                                        "aliasOf": "in~",
                                        "classname": "in~",
                                        "operator": 0,
                                        "versionId": -1654556303,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "in~ 12"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-38",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 330.0, 100.0, 42.0, 23.0 ],
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 12,
                                    "rnbo_uniqueid": "in~_obj-38",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "signal from inlet with index 11",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "inlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal",
                                                "digest": "signal from inlet with index 11",
                                                "displayName": "",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "in~",
                                        "aliasOf": "in~",
                                        "classname": "in~",
                                        "operator": 0,
                                        "versionId": -1654556303,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "in~ 11"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-39",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 310.0, 70.0, 42.0, 23.0 ],
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 13,
                                    "rnbo_uniqueid": "in~_obj-39",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "signal from inlet with index 10",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "inlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal",
                                                "digest": "signal from inlet with index 10",
                                                "displayName": "",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "in~",
                                        "aliasOf": "in~",
                                        "classname": "in~",
                                        "operator": 0,
                                        "versionId": -1654556303,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "in~ 10"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-40",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 290.0, 40.0, 35.0, 23.0 ],
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 14,
                                    "rnbo_uniqueid": "in~_obj-40",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "signal from inlet with index 9",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "inlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal",
                                                "digest": "signal from inlet with index 9",
                                                "displayName": "",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "in~",
                                        "aliasOf": "in~",
                                        "classname": "in~",
                                        "operator": 0,
                                        "versionId": -1654556303,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "in~ 9"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 270.0, 130.0, 35.0, 23.0 ],
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 15,
                                    "rnbo_uniqueid": "in~_obj-33",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "signal from inlet with index 8",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "inlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal",
                                                "digest": "signal from inlet with index 8",
                                                "displayName": "",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "in~",
                                        "aliasOf": "in~",
                                        "classname": "in~",
                                        "operator": 0,
                                        "versionId": -1654556303,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "in~ 8"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-34",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 250.0, 100.0, 35.0, 23.0 ],
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 16,
                                    "rnbo_uniqueid": "in~_obj-34",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "signal from inlet with index 7",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "inlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal",
                                                "digest": "signal from inlet with index 7",
                                                "displayName": "",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "in~",
                                        "aliasOf": "in~",
                                        "classname": "in~",
                                        "operator": 0,
                                        "versionId": -1654556303,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "in~ 7"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-35",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 230.0, 70.0, 35.0, 23.0 ],
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 17,
                                    "rnbo_uniqueid": "in~_obj-35",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "signal from inlet with index 6",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "inlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal",
                                                "digest": "signal from inlet with index 6",
                                                "displayName": "",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "in~",
                                        "aliasOf": "in~",
                                        "classname": "in~",
                                        "operator": 0,
                                        "versionId": -1654556303,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "in~ 6"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 210.0, 40.0, 35.0, 23.0 ],
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 18,
                                    "rnbo_uniqueid": "in~_obj-36",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "signal from inlet with index 5",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "inlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal",
                                                "digest": "signal from inlet with index 5",
                                                "displayName": "",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "in~",
                                        "aliasOf": "in~",
                                        "classname": "in~",
                                        "operator": 0,
                                        "versionId": -1654556303,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "in~ 5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-31",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 190.0, 130.0, 35.0, 23.0 ],
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 19,
                                    "rnbo_uniqueid": "in~_obj-31",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "signal from inlet with index 4",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "inlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal",
                                                "digest": "signal from inlet with index 4",
                                                "displayName": "",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "in~",
                                        "aliasOf": "in~",
                                        "classname": "in~",
                                        "operator": 0,
                                        "versionId": -1654556303,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "in~ 4"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-32",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 170.0, 100.0, 35.0, 23.0 ],
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 20,
                                    "rnbo_uniqueid": "in~_obj-32",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "signal from inlet with index 3",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "inlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal",
                                                "digest": "signal from inlet with index 3",
                                                "displayName": "",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "in~",
                                        "aliasOf": "in~",
                                        "classname": "in~",
                                        "operator": 0,
                                        "versionId": -1654556303,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "in~ 3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 550.0, 270.0, 50.0, 23.0 ],
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "out~_obj-29",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "signal sent to outlet with index 22",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "outlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "signal",
                                                "digest": "signal sent to outlet with index 22",
                                                "displayName": "",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [],
                                        "helpname": "out~",
                                        "aliasOf": "out~",
                                        "classname": "out~",
                                        "operator": 0,
                                        "versionId": 1989326771,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "out~ 22"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 530.0, 300.0, 50.0, 23.0 ],
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "out~_obj-30",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "signal sent to outlet with index 21",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "outlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "signal",
                                                "digest": "signal sent to outlet with index 21",
                                                "displayName": "",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [],
                                        "helpname": "out~",
                                        "aliasOf": "out~",
                                        "classname": "out~",
                                        "operator": 0,
                                        "versionId": 1989326771,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "out~ 21"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 510.0, 210.0, 50.0, 23.0 ],
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 3,
                                    "rnbo_uniqueid": "out~_obj-25",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "signal sent to outlet with index 20",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "outlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "signal",
                                                "digest": "signal sent to outlet with index 20",
                                                "displayName": "",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [],
                                        "helpname": "out~",
                                        "aliasOf": "out~",
                                        "classname": "out~",
                                        "operator": 0,
                                        "versionId": 1989326771,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "out~ 20"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 490.0, 240.0, 50.0, 23.0 ],
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 4,
                                    "rnbo_uniqueid": "out~_obj-26",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "signal sent to outlet with index 19",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "outlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "signal",
                                                "digest": "signal sent to outlet with index 19",
                                                "displayName": "",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [],
                                        "helpname": "out~",
                                        "aliasOf": "out~",
                                        "classname": "out~",
                                        "operator": 0,
                                        "versionId": 1989326771,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "out~ 19"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 470.0, 270.0, 50.0, 23.0 ],
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 5,
                                    "rnbo_uniqueid": "out~_obj-27",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "signal sent to outlet with index 18",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "outlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "signal",
                                                "digest": "signal sent to outlet with index 18",
                                                "displayName": "",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [],
                                        "helpname": "out~",
                                        "aliasOf": "out~",
                                        "classname": "out~",
                                        "operator": 0,
                                        "versionId": 1989326771,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "out~ 18"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 450.0, 300.0, 50.0, 23.0 ],
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 6,
                                    "rnbo_uniqueid": "out~_obj-28",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "signal sent to outlet with index 17",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "outlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "signal",
                                                "digest": "signal sent to outlet with index 17",
                                                "displayName": "",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [],
                                        "helpname": "out~",
                                        "aliasOf": "out~",
                                        "classname": "out~",
                                        "operator": 0,
                                        "versionId": 1989326771,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "out~ 17"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 430.0, 210.0, 50.0, 23.0 ],
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 7,
                                    "rnbo_uniqueid": "out~_obj-12",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "signal sent to outlet with index 16",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "outlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "signal",
                                                "digest": "signal sent to outlet with index 16",
                                                "displayName": "",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [],
                                        "helpname": "out~",
                                        "aliasOf": "out~",
                                        "classname": "out~",
                                        "operator": 0,
                                        "versionId": 1989326771,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "out~ 16"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 410.0, 240.0, 50.0, 23.0 ],
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 8,
                                    "rnbo_uniqueid": "out~_obj-13",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "signal sent to outlet with index 15",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "outlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "signal",
                                                "digest": "signal sent to outlet with index 15",
                                                "displayName": "",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [],
                                        "helpname": "out~",
                                        "aliasOf": "out~",
                                        "classname": "out~",
                                        "operator": 0,
                                        "versionId": 1989326771,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "out~ 15"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 390.0, 270.0, 50.0, 23.0 ],
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 9,
                                    "rnbo_uniqueid": "out~_obj-14",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "signal sent to outlet with index 14",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "outlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "signal",
                                                "digest": "signal sent to outlet with index 14",
                                                "displayName": "",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [],
                                        "helpname": "out~",
                                        "aliasOf": "out~",
                                        "classname": "out~",
                                        "operator": 0,
                                        "versionId": 1989326771,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "out~ 14"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 370.0, 300.0, 50.0, 23.0 ],
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 10,
                                    "rnbo_uniqueid": "out~_obj-15",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "signal sent to outlet with index 13",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "outlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "signal",
                                                "digest": "signal sent to outlet with index 13",
                                                "displayName": "",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [],
                                        "helpname": "out~",
                                        "aliasOf": "out~",
                                        "classname": "out~",
                                        "operator": 0,
                                        "versionId": 1989326771,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "out~ 13"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 350.0, 210.0, 50.0, 23.0 ],
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 11,
                                    "rnbo_uniqueid": "out~_obj-16",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "signal sent to outlet with index 12",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "outlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "signal",
                                                "digest": "signal sent to outlet with index 12",
                                                "displayName": "",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [],
                                        "helpname": "out~",
                                        "aliasOf": "out~",
                                        "classname": "out~",
                                        "operator": 0,
                                        "versionId": 1989326771,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "out~ 12"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 330.0, 240.0, 50.0, 23.0 ],
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 12,
                                    "rnbo_uniqueid": "out~_obj-17",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "signal sent to outlet with index 11",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "outlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "signal",
                                                "digest": "signal sent to outlet with index 11",
                                                "displayName": "",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [],
                                        "helpname": "out~",
                                        "aliasOf": "out~",
                                        "classname": "out~",
                                        "operator": 0,
                                        "versionId": 1989326771,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "out~ 11"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 310.0, 270.0, 50.0, 23.0 ],
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 13,
                                    "rnbo_uniqueid": "out~_obj-18",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "signal sent to outlet with index 10",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "outlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "signal",
                                                "digest": "signal sent to outlet with index 10",
                                                "displayName": "",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [],
                                        "helpname": "out~",
                                        "aliasOf": "out~",
                                        "classname": "out~",
                                        "operator": 0,
                                        "versionId": 1989326771,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "out~ 10"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 290.0, 300.0, 43.0, 23.0 ],
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 14,
                                    "rnbo_uniqueid": "out~_obj-19",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "signal sent to outlet with index 9",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "outlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "signal",
                                                "digest": "signal sent to outlet with index 9",
                                                "displayName": "",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [],
                                        "helpname": "out~",
                                        "aliasOf": "out~",
                                        "classname": "out~",
                                        "operator": 0,
                                        "versionId": 1989326771,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "out~ 9"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 210.0, 43.0, 23.0 ],
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 15,
                                    "rnbo_uniqueid": "out~_obj-8",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "signal sent to outlet with index 8",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "outlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "signal",
                                                "digest": "signal sent to outlet with index 8",
                                                "displayName": "",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [],
                                        "helpname": "out~",
                                        "aliasOf": "out~",
                                        "classname": "out~",
                                        "operator": 0,
                                        "versionId": 1989326771,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "out~ 8"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 250.0, 240.0, 43.0, 23.0 ],
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 16,
                                    "rnbo_uniqueid": "out~_obj-9",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "signal sent to outlet with index 7",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "outlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "signal",
                                                "digest": "signal sent to outlet with index 7",
                                                "displayName": "",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [],
                                        "helpname": "out~",
                                        "aliasOf": "out~",
                                        "classname": "out~",
                                        "operator": 0,
                                        "versionId": 1989326771,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "out~ 7"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 230.0, 270.0, 43.0, 23.0 ],
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 17,
                                    "rnbo_uniqueid": "out~_obj-10",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "signal sent to outlet with index 6",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "outlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "signal",
                                                "digest": "signal sent to outlet with index 6",
                                                "displayName": "",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [],
                                        "helpname": "out~",
                                        "aliasOf": "out~",
                                        "classname": "out~",
                                        "operator": 0,
                                        "versionId": 1989326771,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "out~ 6"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 210.0, 300.0, 43.0, 23.0 ],
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 18,
                                    "rnbo_uniqueid": "out~_obj-11",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "signal sent to outlet with index 5",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "outlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "signal",
                                                "digest": "signal sent to outlet with index 5",
                                                "displayName": "",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [],
                                        "helpname": "out~",
                                        "aliasOf": "out~",
                                        "classname": "out~",
                                        "operator": 0,
                                        "versionId": 1989326771,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "out~ 5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 190.0, 210.0, 43.0, 23.0 ],
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 19,
                                    "rnbo_uniqueid": "out~_obj-6",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "signal sent to outlet with index 4",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "outlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "signal",
                                                "digest": "signal sent to outlet with index 4",
                                                "displayName": "",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [],
                                        "helpname": "out~",
                                        "aliasOf": "out~",
                                        "classname": "out~",
                                        "operator": 0,
                                        "versionId": 1989326771,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "out~ 4"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 170.0, 240.0, 43.0, 23.0 ],
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 20,
                                    "rnbo_uniqueid": "out~_obj-7",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "signal sent to outlet with index 3",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "outlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "signal",
                                                "digest": "signal sent to outlet with index 3",
                                                "displayName": "",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [],
                                        "helpname": "out~",
                                        "aliasOf": "out~",
                                        "classname": "out~",
                                        "operator": 0,
                                        "versionId": 1989326771,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "out~ 3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 150.0, 70.0, 35.0, 23.0 ],
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 21,
                                    "rnbo_uniqueid": "in~_obj-5",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "signal from inlet with index 2",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "inlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal",
                                                "digest": "signal from inlet with index 2",
                                                "displayName": "",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "in~",
                                        "aliasOf": "in~",
                                        "classname": "in~",
                                        "operator": 0,
                                        "versionId": -1654556303,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "in~ 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 150.0, 270.0, 43.0, 23.0 ],
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 21,
                                    "rnbo_uniqueid": "out~_obj-4",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "signal sent to outlet with index 2",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "outlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "signal",
                                                "digest": "signal sent to outlet with index 2",
                                                "displayName": "",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [],
                                        "helpname": "out~",
                                        "aliasOf": "out~",
                                        "classname": "out~",
                                        "operator": 0,
                                        "versionId": 1989326771,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "out~ 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 130.0, 300.0, 43.0, 23.0 ],
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 22,
                                    "rnbo_uniqueid": "out~_obj-3",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "signal sent to outlet with index 1",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "outlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "signal",
                                                "digest": "signal sent to outlet with index 1",
                                                "displayName": "",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [],
                                        "helpname": "out~",
                                        "aliasOf": "out~",
                                        "classname": "out~",
                                        "operator": 0,
                                        "versionId": 1989326771,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "out~ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 130.0, 40.0, 35.0, 23.0 ],
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 22,
                                    "rnbo_uniqueid": "in~_obj-2",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "signal from inlet with index 1",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "inlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal",
                                                "digest": "signal from inlet with index 1",
                                                "displayName": "",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "in~",
                                        "aliasOf": "in~",
                                        "classname": "in~",
                                        "operator": 0,
                                        "versionId": -1654556303,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "in~ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 22,
                                    "numoutlets": 22,
                                    "outlettype": [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
                                    "patching_rect": [ 130.0, 170.0, 439.0, 23.0 ],
                                    "rnbo_classname": "matrix~",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "matrix~_obj-1",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "ramp": {
                                                "attrOrProp": 1,
                                                "digest": "Ramp Time (ms)",
                                                "defaultarg": 3,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "type": "number",
                                                "defaultValue": "0"
                                            },
                                            "inlet1": {
                                                "attrOrProp": 1,
                                                "digest": "Input signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "inlet2": {
                                                "attrOrProp": 1,
                                                "digest": "Input signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "inlet3": {
                                                "attrOrProp": 1,
                                                "digest": "Input signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "inlet4": {
                                                "attrOrProp": 1,
                                                "digest": "Input signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "inlet5": {
                                                "attrOrProp": 1,
                                                "digest": "Input signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "inlet6": {
                                                "attrOrProp": 1,
                                                "digest": "Input signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "inlet7": {
                                                "attrOrProp": 1,
                                                "digest": "Input signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "inlet8": {
                                                "attrOrProp": 1,
                                                "digest": "Input signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "inlet9": {
                                                "attrOrProp": 1,
                                                "digest": "Input signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "inlet10": {
                                                "attrOrProp": 1,
                                                "digest": "Input signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "inlet11": {
                                                "attrOrProp": 1,
                                                "digest": "Input signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "inlet12": {
                                                "attrOrProp": 1,
                                                "digest": "Input signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "inlet13": {
                                                "attrOrProp": 1,
                                                "digest": "Input signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "inlet14": {
                                                "attrOrProp": 1,
                                                "digest": "Input signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "inlet15": {
                                                "attrOrProp": 1,
                                                "digest": "Input signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "inlet16": {
                                                "attrOrProp": 1,
                                                "digest": "Input signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "inlet17": {
                                                "attrOrProp": 1,
                                                "digest": "Input signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "inlet18": {
                                                "attrOrProp": 1,
                                                "digest": "Input signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "inlet19": {
                                                "attrOrProp": 1,
                                                "digest": "Input signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "inlet20": {
                                                "attrOrProp": 1,
                                                "digest": "Input signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "inlet21": {
                                                "attrOrProp": 1,
                                                "digest": "Input signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "Output signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "out2": {
                                                "attrOrProp": 1,
                                                "digest": "Output signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "out3": {
                                                "attrOrProp": 1,
                                                "digest": "Output signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "out4": {
                                                "attrOrProp": 1,
                                                "digest": "Output signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "out5": {
                                                "attrOrProp": 1,
                                                "digest": "Output signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "out6": {
                                                "attrOrProp": 1,
                                                "digest": "Output signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "out7": {
                                                "attrOrProp": 1,
                                                "digest": "Output signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "out8": {
                                                "attrOrProp": 1,
                                                "digest": "Output signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "out9": {
                                                "attrOrProp": 1,
                                                "digest": "Output signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "out10": {
                                                "attrOrProp": 1,
                                                "digest": "Output signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "out11": {
                                                "attrOrProp": 1,
                                                "digest": "Output signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "out12": {
                                                "attrOrProp": 1,
                                                "digest": "Output signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "out13": {
                                                "attrOrProp": 1,
                                                "digest": "Output signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "out14": {
                                                "attrOrProp": 1,
                                                "digest": "Output signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "out15": {
                                                "attrOrProp": 1,
                                                "digest": "Output signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "out16": {
                                                "attrOrProp": 1,
                                                "digest": "Output signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "out17": {
                                                "attrOrProp": 1,
                                                "digest": "Output signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "out18": {
                                                "attrOrProp": 1,
                                                "digest": "Output signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "out19": {
                                                "attrOrProp": 1,
                                                "digest": "Output signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "out20": {
                                                "attrOrProp": 1,
                                                "digest": "Output signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "out21": {
                                                "attrOrProp": 1,
                                                "digest": "Output signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "out22": {
                                                "attrOrProp": 1,
                                                "digest": "Output signals",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "incount": {
                                                "attrOrProp": 2,
                                                "digest": "Number of inputs",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "type": "number",
                                                "defaultValue": "1"
                                            },
                                            "outcount": {
                                                "attrOrProp": 2,
                                                "digest": "Number of outputs",
                                                "defaultarg": 2,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "type": "number",
                                                "defaultValue": "1"
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "connect",
                                                "type": [ "list", "signal" ],
                                                "digest": "Route inputs to outlets (list) / inlet0 (signal)",
                                                "hot": 1,
                                                "docked": 0
                                            },
                                            {
                                                "name": "inlet1",
                                                "type": "signal",
                                                "digest": "Input signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "inlet2",
                                                "type": "signal",
                                                "digest": "Input signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "inlet3",
                                                "type": "signal",
                                                "digest": "Input signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "inlet4",
                                                "type": "signal",
                                                "digest": "Input signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "inlet5",
                                                "type": "signal",
                                                "digest": "Input signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "inlet6",
                                                "type": "signal",
                                                "digest": "Input signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "inlet7",
                                                "type": "signal",
                                                "digest": "Input signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "inlet8",
                                                "type": "signal",
                                                "digest": "Input signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "inlet9",
                                                "type": "signal",
                                                "digest": "Input signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "inlet10",
                                                "type": "signal",
                                                "digest": "Input signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "inlet11",
                                                "type": "signal",
                                                "digest": "Input signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "inlet12",
                                                "type": "signal",
                                                "digest": "Input signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "inlet13",
                                                "type": "signal",
                                                "digest": "Input signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "inlet14",
                                                "type": "signal",
                                                "digest": "Input signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "inlet15",
                                                "type": "signal",
                                                "digest": "Input signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "inlet16",
                                                "type": "signal",
                                                "digest": "Input signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "inlet17",
                                                "type": "signal",
                                                "digest": "Input signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "inlet18",
                                                "type": "signal",
                                                "digest": "Input signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "inlet19",
                                                "type": "signal",
                                                "digest": "Input signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "inlet20",
                                                "type": "signal",
                                                "digest": "Input signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "inlet21",
                                                "type": "signal",
                                                "digest": "Input signals",
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal",
                                                "digest": "Output signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "out2",
                                                "type": "signal",
                                                "digest": "Output signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "out3",
                                                "type": "signal",
                                                "digest": "Output signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "out4",
                                                "type": "signal",
                                                "digest": "Output signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "out5",
                                                "type": "signal",
                                                "digest": "Output signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "out6",
                                                "type": "signal",
                                                "digest": "Output signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "out7",
                                                "type": "signal",
                                                "digest": "Output signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "out8",
                                                "type": "signal",
                                                "digest": "Output signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "out9",
                                                "type": "signal",
                                                "digest": "Output signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "out10",
                                                "type": "signal",
                                                "digest": "Output signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "out11",
                                                "type": "signal",
                                                "digest": "Output signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "out12",
                                                "type": "signal",
                                                "digest": "Output signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "out13",
                                                "type": "signal",
                                                "digest": "Output signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "out14",
                                                "type": "signal",
                                                "digest": "Output signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "out15",
                                                "type": "signal",
                                                "digest": "Output signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "out16",
                                                "type": "signal",
                                                "digest": "Output signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "out17",
                                                "type": "signal",
                                                "digest": "Output signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "out18",
                                                "type": "signal",
                                                "digest": "Output signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "out19",
                                                "type": "signal",
                                                "digest": "Output signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "out20",
                                                "type": "signal",
                                                "digest": "Output signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "out21",
                                                "type": "signal",
                                                "digest": "Output signals",
                                                "docked": 0
                                            },
                                            {
                                                "name": "out22",
                                                "type": "signal",
                                                "digest": "Output signals",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "matrix~",
                                        "aliasOf": "matrix~",
                                        "classname": "matrix~",
                                        "operator": 0,
                                        "versionId": -362124284,
                                        "changesPatcherIO": 0
                                    },
                                    "text": "matrix~ 22 22 @ramp 50"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-1", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-1", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-1", 15 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-1", 14 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-1", 13 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-1", 12 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-1", 11 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-1", 10 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-1", 9 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-1", 8 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "source": [ "obj-1", 19 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-1", 18 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "source": [ "obj-1", 17 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-28", 0 ],
                                    "source": [ "obj-1", 16 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "source": [ "obj-1", 21 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "source": [ "obj-1", 20 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-1", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-1", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-1", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-1", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 3 ],
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 2 ],
                                    "source": [ "obj-32", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 7 ],
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 6 ],
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 5 ],
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 4 ],
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 11 ],
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 10 ],
                                    "source": [ "obj-38", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 9 ],
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 8 ],
                                    "source": [ "obj-40", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 15 ],
                                    "source": [ "obj-41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 14 ],
                                    "source": [ "obj-42", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 13 ],
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 12 ],
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 19 ],
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 18 ],
                                    "source": [ "obj-46", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 17 ],
                                    "source": [ "obj-47", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 16 ],
                                    "source": [ "obj-48", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 1 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 21 ],
                                    "source": [ "obj-51", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 20 ],
                                    "source": [ "obj-52", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-53", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 656.0, 1245.0, 1174.0, 22.0 ],
                    "rnboattrcache": {                    },
                    "rnboversion": "1.4.2",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "rnbo~",
                            "parameter_modmode": 0,
                            "parameter_shortname": "rnbo~",
                            "parameter_type": 3
                        }
                    },
                    "saved_object_attributes": {
                        "optimization": "O1",
                        "parameter_enable": 1,
                        "uuid": "74a09b97-f360-11ea-9b97-34363bd3ed8c"
                    },
                    "snapshot": {
                        "filetype": "C74Snapshot",
                        "version": 2,
                        "minorversion": 0,
                        "name": "snapshotlist",
                        "origin": "rnbo~",
                        "type": "list",
                        "subtype": "Undefined",
                        "embed": 1,
                        "snapshot": {
                            "__presetid": "74a09b97-f360-11ea-9b97-34363bd3ed8c"
                        },
                        "snapshotlist": {
                            "current_snapshot": 0,
                            "entries": [
                                {
                                    "filetype": "C74Snapshot",
                                    "version": 2,
                                    "minorversion": 0,
                                    "name": "untitled",
                                    "origin": "74a09b97-f360-11ea-9b97-34363bd3ed8c",
                                    "type": "rnbo",
                                    "subtype": "",
                                    "embed": 1,
                                    "snapshot": {
                                        "__presetid": "74a09b97-f360-11ea-9b97-34363bd3ed8c"
                                    },
                                    "fileref": {
                                        "name": "untitled",
                                        "filename": "untitled_20260102_1.maxsnap",
                                        "filepath": "~/Documents/Max 9/Snapshots",
                                        "filepos": -1,
                                        "snapshotfileid": "413e643a5648a81151f8376c3ea5e763"
                                    }
                                }
                            ]
                        }
                    },
                    "text": "rnbo~",
                    "varname": "rnbo~"
                }
            },
            {
                "box": {
                    "autosave": 0,
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-120",
                    "linecount": 3,
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 4,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal", "", "" ],
                    "patching_rect": [ 876.0, 995.0, 102.0, 196.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 650.0, 100.0, 102.0, 49.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "FX2",
                            "parameter_modmode": 0,
                            "parameter_shortname": "FX2",
                            "parameter_type": 3
                        }
                    },
                    "saved_object_attributes": {
                        "active": 0,
                        "autosave": 0,
                        "autosize": 0,
                        "parameter_enable": 1,
                        "patchername": "Rnbo-Octaver.amxd",
                        "patchername_fallback": "Package:/RNBO Guitar Pedals/devices/Rnbo-Octaver.amxd"
                    },
                    "text": "amxd~ Rnbo-Chorus.amxd",
                    "varname": "FX2",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "autosave": 0,
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-4",
                    "linecount": 3,
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 4,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal", "", "" ],
                    "patching_rect": [ 766.0, 995.0, 102.0, 196.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 540.0, 100.0, 102.0, 49.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "FX1",
                            "parameter_modmode": 0,
                            "parameter_shortname": "FX1",
                            "parameter_type": 3
                        }
                    },
                    "saved_object_attributes": {
                        "active": 0,
                        "autosave": 0,
                        "autosize": 0,
                        "parameter_enable": 1,
                        "patchername": "Rnbo-Freezer.amxd",
                        "patchername_fallback": "Package:/RNBO Guitar Pedals/devices/Rnbo-Freezer.amxd"
                    },
                    "text": "amxd~ Rnbo-Tremolo.amxd",
                    "varname": "FX1",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-156",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 768.0, 737.0, 121.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 80.0, 230.0, 220.0, 18.0 ],
                    "text": "Browse sample collection",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-155",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 596.0, 1232.0, 20.0, 29.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1420.0, 130.0, 26.0, 18.0 ],
                    "text": "Out",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 10.0,
                    "id": "obj-153",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 583.0, 1121.0, 21.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1420.0, 114.0, 20.0, 18.0 ],
                    "text": "To",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-195",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1766.0, 975.0, 40.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 980.0, 297.0, 100.0, 20.0 ],
                    "text": "10",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-194",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1656.0, 975.0, 40.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 870.0, 297.0, 100.0, 20.0 ],
                    "text": "9",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-193",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1546.0, 975.0, 40.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 760.0, 297.0, 100.0, 20.0 ],
                    "text": "8",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-192",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1436.0, 975.0, 40.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 650.0, 297.0, 100.0, 20.0 ],
                    "text": "7",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-191",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1326.0, 975.0, 40.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 540.0, 297.0, 100.0, 20.0 ],
                    "text": "6",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-190",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1216.0, 975.0, 40.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 980.0, 77.0, 100.0, 20.0 ],
                    "text": "5",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-189",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1106.0, 975.0, 40.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 870.0, 77.0, 100.0, 20.0 ],
                    "text": "4",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-188",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 996.0, 975.0, 40.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 760.0, 77.0, 100.0, 20.0 ],
                    "text": "3",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-187",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 886.0, 975.0, 40.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 650.0, 77.0, 100.0, 20.0 ],
                    "text": "2",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-185",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 776.0, 975.0, 40.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 540.0, 77.0, 100.0, 20.0 ],
                    "text": "1",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-161",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 556.0, 1365.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1380.0, 350.0, 20.0, 18.0 ],
                    "text": "10",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-162",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 536.0, 1365.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1360.0, 350.0, 20.0, 18.0 ],
                    "text": "9",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-163",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 516.0, 1365.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1340.0, 350.0, 20.0, 18.0 ],
                    "text": "8",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-164",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 496.0, 1365.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1320.0, 350.0, 20.0, 18.0 ],
                    "text": "7",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-165",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 476.0, 1365.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1300.0, 350.0, 20.0, 18.0 ],
                    "text": "6",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-166",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 456.0, 1365.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1280.0, 350.0, 20.0, 18.0 ],
                    "text": "5",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-167",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 436.0, 1365.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1260.0, 350.0, 20.0, 18.0 ],
                    "text": "4",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-168",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 416.0, 1365.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1240.0, 350.0, 20.0, 18.0 ],
                    "text": "3",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-169",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 396.0, 1365.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1220.0, 350.0, 20.0, 18.0 ],
                    "text": "2",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-170",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 376.0, 1365.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1200.0, 350.0, 20.0, 18.0 ],
                    "text": "1",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-171",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 356.0, 1365.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1180.0, 350.0, 20.0, 18.0 ],
                    "text": "0",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-139",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 336.0, 1345.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1160.0, 330.0, 20.0, 18.0 ],
                    "text": "10",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-121",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 336.0, 1325.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1160.0, 310.0, 20.0, 18.0 ],
                    "text": "9",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-141",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 336.0, 1305.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1160.0, 290.0, 20.0, 18.0 ],
                    "text": "8",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-122",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 336.0, 1285.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1160.0, 270.0, 20.0, 18.0 ],
                    "text": "7",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-123",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 336.0, 1265.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1160.0, 250.0, 20.0, 18.0 ],
                    "text": "6",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-124",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 336.0, 1245.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1160.0, 230.0, 20.0, 18.0 ],
                    "text": "5",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-125",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 336.0, 1225.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1160.0, 210.0, 20.0, 18.0 ],
                    "text": "4",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-126",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 336.0, 1205.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1160.0, 190.0, 20.0, 18.0 ],
                    "text": "3",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-147",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 336.0, 1185.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1160.0, 170.0, 20.0, 18.0 ],
                    "text": "2",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-148",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 336.0, 1165.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1160.0, 150.0, 20.0, 18.0 ],
                    "text": "1",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-149",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 336.0, 1145.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1160.0, 130.0, 20.0, 18.0 ],
                    "text": "0",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-157",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 596.0, 1325.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1420.0, 330.0, 20.0, 18.0 ],
                    "text": "10",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-158",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 596.0, 1305.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1420.0, 310.0, 20.0, 18.0 ],
                    "text": "9",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-159",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 596.0, 1285.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1420.0, 290.0, 20.0, 18.0 ],
                    "text": "8",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-160",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 596.0, 1265.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1420.0, 270.0, 20.0, 18.0 ],
                    "text": "7",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-172",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 596.0, 1245.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1420.0, 250.0, 20.0, 18.0 ],
                    "text": "6",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-174",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 596.0, 1225.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1420.0, 230.0, 20.0, 18.0 ],
                    "text": "5",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-176",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 596.0, 1205.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1420.0, 210.0, 20.0, 18.0 ],
                    "text": "4",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-177",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 596.0, 1185.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1420.0, 190.0, 20.0, 18.0 ],
                    "text": "3",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-184",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 596.0, 1165.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1420.0, 170.0, 20.0, 18.0 ],
                    "text": "2",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-186",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 596.0, 1145.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1420.0, 150.0, 20.0, 18.0 ],
                    "text": "1",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-226",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 556.0, 1105.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1380.0, 93.0, 20.0, 18.0 ],
                    "text": "10",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-229",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 536.0, 1105.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1360.0, 93.0, 20.0, 18.0 ],
                    "text": "9",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-231",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 516.0, 1105.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1340.0, 93.0, 20.0, 18.0 ],
                    "text": "8",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-233",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 496.0, 1105.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1320.0, 93.0, 20.0, 18.0 ],
                    "text": "7",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-234",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 476.0, 1105.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1300.0, 93.0, 20.0, 18.0 ],
                    "text": "6",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-235",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 456.0, 1105.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1280.0, 93.0, 20.0, 18.0 ],
                    "text": "5",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-236",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 436.0, 1105.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1260.0, 93.0, 20.0, 18.0 ],
                    "text": "4",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-237",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 416.0, 1105.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1240.0, 93.0, 20.0, 18.0 ],
                    "text": "3",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-238",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 396.0, 1105.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1220.0, 93.0, 20.0, 18.0 ],
                    "text": "2",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-239",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 376.0, 1105.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1200.0, 93.0, 20.0, 18.0 ],
                    "text": "1",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-240",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 356.0, 1105.0, 20.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1180.0, 93.0, 20.0, 18.0 ],
                    "text": "In",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 10.0,
                    "id": "obj-244",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 666.0, 788.0, 240.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 80.0, 281.0, 220.0, 18.0 ],
                    "text": "Or drag & drop your soundfiles below",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 88.0, 218.0, 82.0, 22.0 ],
                    "text": "mc.mixdown~"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 2,
                    "outlettype": [ "multichannelsignal", "multichannelsignal" ],
                    "patching_rect": [ 31.0, 61.0, 113.0, 22.0 ],
                    "text": "mc.abl.dsp.chorus~"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "data": {
                        "autosave": 1,
                        "snapshot": {
                            "filetype": "C74Snapshot",
                            "version": 2,
                            "minorversion": 0,
                            "name": "snapshotlist",
                            "origin": "vst~",
                            "type": "list",
                            "subtype": "Undefined",
                            "embed": 1,
                            "snapshot": {                            },
                            "snapshotlist": {
                                "current_snapshot": 0,
                                "entries": [
                                    {
                                        "filetype": "C74Snapshot",
                                        "version": 2,
                                        "minorversion": 0,
                                        "name": "",
                                        "origin": "",
                                        "type": "AudioUnit",
                                        "subtype": "AudioEffect",
                                        "embed": 0,
                                        "snapshot": {                                        },
                                        "fileref": {
                                            "name": "",
                                            "filename": "_20260101.maxsnap",
                                            "filepath": "~/Documents/Max 9/Snapshots",
                                            "filepos": -1,
                                            "snapshotfileid": "fbf14ca7c89cf87d970c576e925f84e9"
                                        }
                                    }
                                ]
                            }
                        }
                    },
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-8",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 9,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal", "multichannelsignal", "", "", "", "", "", "", "" ],
                    "patching_rect": [ 110.0, 15.0, 103.0, 22.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 1,
                        "parameter_mappable": 0,
                        "prefer": "AudioUnit"
                    },
                    "text": "mc.audiounit~",
                    "varname": "mc.audiounit~",
                    "viewvisibility": 0
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "data": {
                        "autosave": 1
                    },
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-5",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 5,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal", "multichannelsignal", "", "", "" ],
                    "patching_rect": [ 26.0, 15.0, 64.0, 22.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 1,
                        "patchername": "",
                        "patchername_fallback": "/Volumes/<none>/"
                    },
                    "text": "mc.amxd~",
                    "varname": "amxd~",
                    "viewvisibility": 0
                }
            },
            {
                "box": {
                    "attr": "freeze",
                    "id": "obj-13",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 614.0, 316.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "tides",
                    "id": "obj-9",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 777.0, 244.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "size",
                    "id": "obj-15",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 777.0, 220.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "phase",
                    "id": "obj-16",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 614.0, 292.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "waveform",
                    "id": "obj-11",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 777.0, 268.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "rate",
                    "id": "obj-12",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 614.0, 268.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "decay",
                    "id": "obj-10",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 614.0, 244.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "mix",
                    "id": "obj-7",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 777.0, 292.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "damping",
                    "id": "obj-6",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 614.0, 220.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 350.0, 394.0, 136.0, 22.0 ],
                    "text": "abl.dsp.tides~"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 161.0, 257.0, 99.0, 22.0 ],
                    "text": "abl.device.echo~"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 4,
                    "outlettype": [ "multichannelsignal", "signal", "signal", "" ],
                    "patching_rect": [ 186.0, 327.0, 98.0, 22.0 ],
                    "text": "Abl.ChannelEQ~",
                    "varname": "Abl.ChannelEQ~"
                }
            },
            {
                "box": {
                    "id": "obj-146",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 4,
                    "outlettype": [ "multichannelsignal", "signal", "signal", "" ],
                    "patching_rect": [ 426.0, 266.0, 106.0, 22.0 ],
                    "text": "Abl.PrismReverb~",
                    "varname": "Abl.PrismReverb~"
                }
            },
            {
                "box": {
                    "id": "obj-145",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 4,
                    "outlettype": [ "multichannelsignal", "signal", "signal", "" ],
                    "patching_rect": [ 297.0, 241.0, 82.0, 22.0 ],
                    "text": "Abl.DarkHall~",
                    "varname": "Abl.DarkHall~"
                }
            },
            {
                "box": {
                    "id": "obj-144",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 4,
                    "outlettype": [ "multichannelsignal", "signal", "signal", "" ],
                    "patching_rect": [ 325.0, 198.0, 115.0, 22.0 ],
                    "text": "Abl.SpectralReson~",
                    "varname": "Abl.SpectralReson~"
                }
            },
            {
                "box": {
                    "id": "obj-143",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 297.0, 102.0, 94.0, 22.0 ],
                    "text": "abl.dsp.vibrato~"
                }
            },
            {
                "box": {
                    "id": "obj-142",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 380.0, 157.0, 106.0, 22.0 ],
                    "text": "abl.dsp.distortion~"
                }
            },
            {
                "box": {
                    "id": "obj-140",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 193.0, 217.0, 97.0, 22.0 ],
                    "text": "abl.dsp.wander~"
                }
            },
            {
                "box": {
                    "id": "obj-138",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 161.0, 167.0, 136.0, 22.0 ],
                    "text": "abl.device.compressor~"
                }
            },
            {
                "box": {
                    "id": "obj-136",
                    "maxclass": "newobj",
                    "numinlets": 7,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 92.0, 141.0, 104.0, 22.0 ],
                    "text": "abl.dsp.shimmer~"
                }
            },
            {
                "box": {
                    "background": 1,
                    "fontface": 1,
                    "fontname": "Lato",
                    "fontsize": 20.0,
                    "id": "obj-241",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 956.0, 755.0, 172.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 90.0, 70.0, 180.0, 30.0 ],
                    "text": "RNBO Pedalboard",
                    "textcolor": [ 0.999999284744263, 0.999974429607391, 0.999991297721863, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "background": 1,
                    "fontface": 1,
                    "id": "obj-242",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 956.0, 735.0, 94.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 60.0, 40.0, 260.0, 20.0 ],
                    "text": "What's in there",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "background": 1,
                    "fontface": 1,
                    "id": "obj-243",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1836.0, 1245.0, 44.0, 20.0 ],
                    "text": "Matrix",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "background": 1,
                    "fontface": 1,
                    "id": "obj-245",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1237.0, 1097.0, 75.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1140.0, 420.0, 320.0, 20.0 ],
                    "text": "Audio Out",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "background": 1,
                    "id": "obj-246",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 476.0, 1495.0, 20.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 60.0, 60.0, 260.0, 130.0 ]
                }
            },
            {
                "box": {
                    "background": 1,
                    "fontface": 1,
                    "id": "obj-247",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 666.0, 735.0, 96.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 60.0, 200.0, 260.0, 20.0 ],
                    "text": "Soundfile Input",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "background": 1,
                    "id": "obj-248",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 386.0, 1495.0, 20.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 60.0, 220.0, 260.0, 190.0 ]
                }
            },
            {
                "box": {
                    "background": 1,
                    "id": "obj-249",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 446.0, 1495.0, 20.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1140.0, 440.0, 320.0, 120.0 ]
                }
            },
            {
                "box": {
                    "background": 1,
                    "fontface": 1,
                    "id": "obj-250",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1866.0, 1075.0, 48.0, 33.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 350.0, 40.0, 760.0, 20.0 ],
                    "text": "Guitar Pedals",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "background": 1,
                    "fontface": 1,
                    "id": "obj-251",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 426.0, 1395.0, 44.0, 33.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1140.0, 40.0, 320.0, 20.0 ],
                    "text": "Routing",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "background": 1,
                    "fontface": 1,
                    "id": "obj-252",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 373.0, 1271.0, 75.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 60.0, 420.0, 260.0, 20.0 ],
                    "text": "Live Input",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "background": 1,
                    "id": "obj-253",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 506.0, 1495.0, 20.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 60.0, 440.0, 260.0, 120.0 ]
                }
            },
            {
                "box": {
                    "background": 1,
                    "id": "obj-254",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 416.0, 1495.0, 20.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1140.0, 60.0, 320.0, 350.0 ]
                }
            },
            {
                "box": {
                    "background": 1,
                    "id": "obj-255",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 356.0, 1495.0, 20.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 350.0, 60.0, 760.0, 500.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 623.5, 267.0, 586.0, 267.0, 586.0, 381.0, 359.5, 381.0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-120", 1 ],
                    "source": [ "obj-100", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-120", 0 ],
                    "source": [ "obj-101", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 1 ],
                    "source": [ "obj-102", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-103", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 786.5, 291.0, 772.0, 291.0, 772.0, 381.0, 359.5, 381.0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-117", 0 ],
                    "source": [ "obj-119", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-118", 0 ],
                    "source": [ "obj-119", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-119", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "source": [ "obj-119", 9 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-119", 8 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "source": [ "obj-119", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "source": [ "obj-119", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 0 ],
                    "source": [ "obj-119", 17 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 0 ],
                    "source": [ "obj-119", 16 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 0 ],
                    "source": [ "obj-119", 15 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 0 ],
                    "source": [ "obj-119", 14 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "source": [ "obj-119", 13 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "source": [ "obj-119", 12 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-51", 0 ],
                    "source": [ "obj-119", 11 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "source": [ "obj-119", 10 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-62", 1 ],
                    "source": [ "obj-119", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-62", 0 ],
                    "source": [ "obj-119", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-85", 0 ],
                    "source": [ "obj-119", 21 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-86", 0 ],
                    "source": [ "obj-119", 20 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-87", 0 ],
                    "source": [ "obj-119", 19 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-88", 0 ],
                    "source": [ "obj-119", 18 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-99", 0 ],
                    "source": [ "obj-119", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 623.5, 291.0, 586.0, 291.0, 586.0, 381.0, 359.5, 381.0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 5 ],
                    "order": 0,
                    "source": [ "obj-120", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 4 ],
                    "order": 1,
                    "source": [ "obj-120", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "order": 1,
                    "source": [ "obj-120", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "order": 0,
                    "source": [ "obj-120", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 623.5, 381.0, 359.5, 381.0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 786.5, 243.0, 772.0, 243.0, 772.0, 381.0, 359.5, 381.0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-72", 0 ],
                    "source": [ "obj-154", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 623.5, 315.0, 586.0, 315.0, 586.0, 381.0, 359.5, 381.0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-196", 0 ],
                    "source": [ "obj-183", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-183", 0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-197", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 1 ],
                    "source": [ "obj-198", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-219", 1 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-220", 0 ],
                    "source": [ "obj-20", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-201", 0 ],
                    "source": [ "obj-200", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-197", 1 ],
                    "order": 1,
                    "source": [ "obj-201", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-198", 1 ],
                    "order": 0,
                    "source": [ "obj-201", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-199", 0 ],
                    "source": [ "obj-202", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-202", 0 ],
                    "source": [ "obj-203", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-203", 0 ],
                    "source": [ "obj-204", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-206", 0 ],
                    "source": [ "obj-205", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-204", 0 ],
                    "source": [ "obj-206", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-214", 0 ],
                    "order": 1,
                    "source": [ "obj-208", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-215", 1 ],
                    "order": 0,
                    "source": [ "obj-208", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-218", 0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-215", 0 ],
                    "source": [ "obj-214", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-209", 1 ],
                    "order": 1,
                    "source": [ "obj-215", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 0 ],
                    "order": 0,
                    "source": [ "obj-215", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-208", 0 ],
                    "source": [ "obj-218", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 0 ],
                    "source": [ "obj-219", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 1 ],
                    "source": [ "obj-220", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 0 ],
                    "source": [ "obj-221", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-225", 0 ],
                    "source": [ "obj-222", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-210", 1 ],
                    "order": 0,
                    "source": [ "obj-223", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-63", 0 ],
                    "order": 1,
                    "source": [ "obj-223", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-223", 0 ],
                    "source": [ "obj-224", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-223", 1 ],
                    "order": 0,
                    "source": [ "obj-225", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-224", 0 ],
                    "order": 1,
                    "source": [ "obj-225", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-63", 1 ],
                    "source": [ "obj-230", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-63", 0 ],
                    "source": [ "obj-230", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-60", 2 ],
                    "hidden": 1,
                    "source": [ "obj-29", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-60", 1 ],
                    "hidden": 1,
                    "source": [ "obj-30", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-60", 0 ],
                    "hidden": 1,
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 1 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 1 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 0 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 1 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 0 ],
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 1 ],
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 17 ],
                    "order": 0,
                    "source": [ "obj-39", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 16 ],
                    "order": 1,
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-135", 0 ],
                    "order": 1,
                    "source": [ "obj-39", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "order": 0,
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 3 ],
                    "order": 0,
                    "source": [ "obj-4", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 2 ],
                    "order": 1,
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-227", 0 ],
                    "order": 1,
                    "source": [ "obj-4", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-228", 0 ],
                    "order": 0,
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 15 ],
                    "order": 0,
                    "source": [ "obj-40", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 14 ],
                    "order": 1,
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-133", 0 ],
                    "order": 1,
                    "source": [ "obj-40", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-134", 0 ],
                    "order": 0,
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 13 ],
                    "order": 0,
                    "source": [ "obj-53", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 12 ],
                    "order": 1,
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-131", 0 ],
                    "order": 1,
                    "source": [ "obj-53", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-132", 0 ],
                    "order": 0,
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-200", 0 ],
                    "source": [ "obj-54", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-180", 0 ],
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-197", 0 ],
                    "source": [ "obj-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-198", 0 ],
                    "source": [ "obj-56", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-222", 0 ],
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-181", 0 ],
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 623.5, 243.0, 586.0, 243.0, 586.0, 381.0, 359.5, 381.0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "hidden": 1,
                    "source": [ "obj-60", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "hidden": 1,
                    "source": [ "obj-60", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "hidden": 1,
                    "source": [ "obj-60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-219", 1 ],
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-220", 1 ],
                    "source": [ "obj-61", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-230", 1 ],
                    "source": [ "obj-62", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-230", 0 ],
                    "source": [ "obj-62", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-72", 0 ],
                    "source": [ "obj-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 786.5, 381.0, 359.5, 381.0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 11 ],
                    "order": 0,
                    "source": [ "obj-70", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 10 ],
                    "order": 1,
                    "source": [ "obj-70", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-129", 0 ],
                    "order": 1,
                    "source": [ "obj-70", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-130", 0 ],
                    "order": 0,
                    "source": [ "obj-70", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-221", 0 ],
                    "source": [ "obj-72", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-97", 1 ],
                    "source": [ "obj-82", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-97", 0 ],
                    "source": [ "obj-83", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-93", 1 ],
                    "source": [ "obj-89", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 786.5, 267.0, 772.0, 267.0, 772.0, 381.0, 359.5, 381.0 ],
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-93", 0 ],
                    "source": [ "obj-90", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-94", 1 ],
                    "source": [ "obj-91", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-94", 0 ],
                    "source": [ "obj-92", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 21 ],
                    "order": 0,
                    "source": [ "obj-93", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 20 ],
                    "order": 1,
                    "source": [ "obj-93", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-150", 0 ],
                    "order": 1,
                    "source": [ "obj-93", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-151", 0 ],
                    "order": 0,
                    "source": [ "obj-93", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 19 ],
                    "order": 0,
                    "source": [ "obj-94", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 18 ],
                    "order": 1,
                    "source": [ "obj-94", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-137", 0 ],
                    "order": 1,
                    "source": [ "obj-94", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "order": 0,
                    "source": [ "obj-94", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-98", 1 ],
                    "source": [ "obj-95", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-98", 0 ],
                    "source": [ "obj-96", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 9 ],
                    "order": 0,
                    "source": [ "obj-97", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 8 ],
                    "order": 1,
                    "source": [ "obj-97", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 0 ],
                    "order": 0,
                    "source": [ "obj-97", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-84", 0 ],
                    "order": 1,
                    "source": [ "obj-97", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 7 ],
                    "order": 0,
                    "source": [ "obj-98", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 6 ],
                    "order": 1,
                    "source": [ "obj-98", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "order": 1,
                    "source": [ "obj-98", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "order": 0,
                    "source": [ "obj-98", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-119": [ "rnbo~", "rnbo~", 0 ],
            "obj-120": [ "FX2", "FX2", 0 ],
            "obj-144::obj-13": [ "View", "View", 0 ],
            "obj-144::obj-154": [ "Abl.SpectralReson", "Abl.SpectralReson", 0 ],
            "obj-144::obj-167": [ "ModOutB", "ModOutB", -1 ],
            "obj-144::obj-45": [ "ModInALed", "ModInALed", 0 ],
            "obj-144::obj-47": [ "ModInBLed", "ModInBLed", 0 ],
            "obj-144::obj-49": [ "ModInA", "ModInA", -1 ],
            "obj-144::obj-50": [ "ModInB", "ModInB", -1 ],
            "obj-144::obj-52": [ "ModOutA", "ModOutA", -1 ],
            "obj-144::obj-59": [ "ModOutALed", "ModOutALed", 0 ],
            "obj-144::obj-60": [ "ModOutBLed", "ModOutBLed", 0 ],
            "obj-144::obj-83::obj-116": [ "Voices", "Voices", 0 ],
            "obj-144::obj-83::obj-18": [ "Stretch", "Stretch", 0 ],
            "obj-144::obj-83::obj-19": [ "Harms", "Harms", 0 ],
            "obj-144::obj-83::obj-54": [ "Gain", "Gain", 0 ],
            "obj-144::obj-83::obj-55": [ "Unison", "Unison", 0 ],
            "obj-144::obj-83::obj-6": [ "Pitch", "Pitch", 0 ],
            "obj-144::obj-83::obj-8": [ "Shift", "Shift", 0 ],
            "obj-144::obj-83::obj-9": [ "Mix", "Mix", 0 ],
            "obj-144::obj-90::obj-116": [ "ModType", "ModType", 0 ],
            "obj-144::obj-90::obj-19": [ "Hdamp", "Hdamp", 0 ],
            "obj-144::obj-90::obj-54": [ "PitchMod", "PitchMod", 0 ],
            "obj-144::obj-90::obj-55": [ "ModRate", "ModRate", 0 ],
            "obj-144::obj-90::obj-6": [ "Decay", "Decay", 0 ],
            "obj-144::obj-90::obj-8": [ "Ldamp", "Ldamp", 0 ],
            "obj-144::obj-99": [ "Active", "Active", 0 ],
            "obj-145::obj-154": [ "Abl.DarkHall", "Abl.DarkHall", 0 ],
            "obj-145::obj-167": [ "ModOutB[1]", "ModOutB", -1 ],
            "obj-145::obj-19": [ "Freeze", "Freeze", 0 ],
            "obj-145::obj-45": [ "ModInALed[1]", "ModInALed", 0 ],
            "obj-145::obj-47": [ "ModInBLed[1]", "ModInBLed", 0 ],
            "obj-145::obj-49": [ "ModInA[1]", "ModInA", -1 ],
            "obj-145::obj-50": [ "ModInB[1]", "ModInB", -1 ],
            "obj-145::obj-51": [ "Bass", "Bass", 0 ],
            "obj-145::obj-52": [ "ModOutA[1]", "ModOutA", -1 ],
            "obj-145::obj-53": [ "Mix[1]", "Mix", 0 ],
            "obj-145::obj-54": [ "Mod", "Mod", 0 ],
            "obj-145::obj-55": [ "XBass", "XBass", 0 ],
            "obj-145::obj-59": [ "ModOutALed[1]", "ModOutALed", 0 ],
            "obj-145::obj-6": [ "Size", "Size", 0 ],
            "obj-145::obj-60": [ "ModOutBLed[1]", "ModOutBLed", 0 ],
            "obj-145::obj-8": [ "Shape", "Shape", 0 ],
            "obj-145::obj-81": [ "Decay[1]", "Decay", 0 ],
            "obj-145::obj-9": [ "Damp", "Damp", 0 ],
            "obj-145::obj-99": [ "Active[1]", "Active", 0 ],
            "obj-146::obj-154": [ "Abl.PrismReverb", "Abl.PrismReverb", 0 ],
            "obj-146::obj-167": [ "ModOutB[2]", "ModOutB", -1 ],
            "obj-146::obj-19": [ "Freeze[1]", "Freeze", 0 ],
            "obj-146::obj-45": [ "ModInALed[2]", "ModInALed", 0 ],
            "obj-146::obj-47": [ "ModInBLed[2]", "ModInBLed", 0 ],
            "obj-146::obj-49": [ "ModInA[2]", "ModInA", -1 ],
            "obj-146::obj-50": [ "ModInB[2]", "ModInB", -1 ],
            "obj-146::obj-51": [ "Low", "Low", 0 ],
            "obj-146::obj-52": [ "ModOutA[2]", "ModOutA", -1 ],
            "obj-146::obj-54": [ "Xover", "Xover", 0 ],
            "obj-146::obj-55": [ "High", "High", 0 ],
            "obj-146::obj-59": [ "ModOutALed[2]", "ModOutALed", 0 ],
            "obj-146::obj-6": [ "Size[1]", "Size", 0 ],
            "obj-146::obj-60": [ "ModOutBLed[2]", "ModOutBLed", 0 ],
            "obj-146::obj-8": [ "Mix[2]", "Mix", 0 ],
            "obj-146::obj-81": [ "Decay[2]", "Decay", 0 ],
            "obj-146::obj-99": [ "Active[2]", "Active", 0 ],
            "obj-20": [ "Input", "Gain", 0 ],
            "obj-21": [ "Adcs", "Adcs", 0 ],
            "obj-2::obj-112": [ "HighPass", "HighPass", 0 ],
            "obj-2::obj-154": [ "Abl.ChannelEQ", "Abl.ChannelEQ", 0 ],
            "obj-2::obj-167": [ "ModOutB[3]", "ModOutB", -1 ],
            "obj-2::obj-45": [ "ModInALed[3]", "ModInALed", 0 ],
            "obj-2::obj-47": [ "ModInBLed[3]", "ModInBLed", 0 ],
            "obj-2::obj-49": [ "ModInA[3]", "ModInA", -1 ],
            "obj-2::obj-50": [ "ModInB[3]", "ModInB", -1 ],
            "obj-2::obj-52": [ "ModOutA[3]", "ModOutA", -1 ],
            "obj-2::obj-59": [ "ModOutALed[3]", "ModOutALed", 0 ],
            "obj-2::obj-6": [ "Mid", "Mid", 0 ],
            "obj-2::obj-60": [ "ModOutBLed[3]", "ModOutBLed", 0 ],
            "obj-2::obj-8": [ "MidF", "MidF", 0 ],
            "obj-2::obj-81": [ "Low[1]", "Low", 0 ],
            "obj-2::obj-82": [ "Gain[1]", "Gain", 0 ],
            "obj-2::obj-9": [ "High[1]", "High", 0 ],
            "obj-2::obj-99": [ "Active[3]", "Active", 0 ],
            "obj-30": [ "Browse", "Browse", 0 ],
            "obj-39": [ "FX8", "FX8", 0 ],
            "obj-4": [ "FX1", "FX1", 0 ],
            "obj-40": [ "FX7", "FX7", 0 ],
            "obj-5": [ "amxd~", "amxd~", 0 ],
            "obj-53": [ "FX6", "FX6", 0 ],
            "obj-58": [ "Dacs", "Dacs", 0 ],
            "obj-61": [ "Playlist", "Playlist", 0 ],
            "obj-62": [ "Ouput", "Gain", 0 ],
            "obj-70": [ "FX5", "FX5", 0 ],
            "obj-72": [ "Matrix", "Matrix", 0 ],
            "obj-8": [ "vst~[2]", "vst~[2]", 0 ],
            "obj-93": [ "FX10", "FX10", 0 ],
            "obj-94": [ "FX9", "FX9", 0 ],
            "obj-97": [ "FX4", "FX4", 0 ],
            "obj-98": [ "FX3", "FX3", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-145::obj-45": {
                    "parameter_longname": "ModInALed[1]"
                },
                "obj-145::obj-47": {
                    "parameter_longname": "ModInBLed[1]"
                },
                "obj-145::obj-53": {
                    "parameter_longname": "Mix[1]"
                },
                "obj-145::obj-59": {
                    "parameter_longname": "ModOutALed[1]"
                },
                "obj-145::obj-60": {
                    "parameter_longname": "ModOutBLed[1]"
                },
                "obj-145::obj-81": {
                    "parameter_longname": "Decay[1]"
                },
                "obj-145::obj-99": {
                    "parameter_longname": "Active[1]"
                },
                "obj-146::obj-19": {
                    "parameter_longname": "Freeze[1]"
                },
                "obj-146::obj-45": {
                    "parameter_longname": "ModInALed[2]"
                },
                "obj-146::obj-47": {
                    "parameter_longname": "ModInBLed[2]"
                },
                "obj-146::obj-59": {
                    "parameter_longname": "ModOutALed[2]"
                },
                "obj-146::obj-6": {
                    "parameter_longname": "Size[1]"
                },
                "obj-146::obj-60": {
                    "parameter_longname": "ModOutBLed[2]"
                },
                "obj-146::obj-8": {
                    "parameter_longname": "Mix[2]"
                },
                "obj-146::obj-81": {
                    "parameter_longname": "Decay[2]"
                },
                "obj-146::obj-99": {
                    "parameter_longname": "Active[2]"
                },
                "obj-2::obj-45": {
                    "parameter_longname": "ModInALed[3]"
                },
                "obj-2::obj-47": {
                    "parameter_longname": "ModInBLed[3]"
                },
                "obj-2::obj-59": {
                    "parameter_longname": "ModOutALed[3]"
                },
                "obj-2::obj-60": {
                    "parameter_longname": "ModOutBLed[3]"
                },
                "obj-2::obj-81": {
                    "parameter_longname": "Low[1]"
                },
                "obj-2::obj-82": {
                    "parameter_longname": "Gain[1]"
                },
                "obj-2::obj-9": {
                    "parameter_longname": "High[1]"
                },
                "obj-2::obj-99": {
                    "parameter_longname": "Active[3]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}