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
        "rect": [ 34.0, 95.0, 1444.0, 853.0 ],
        "showontab": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 258.33332347869873, 34.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1598.0, 357.2916530370712, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1598.0, 404.2916530370712, 59.0, 22.0 ],
                    "text": "0., 1. 500"
                }
            },
            {
                "box": {
                    "clipheight": 91.0,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "vibes-a1.aif",
                                "filename": "vibes-a1.aif",
                                "filekind": "audiofile",
                                "id": "u880006054",
                                "loop": 0,
                                "content_state": {                                }
                            }
                        ]
                    },
                    "id": "obj-30",
                    "maxclass": "mc.playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "multichannelsignal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1587.2082682847977, 212.91665720939636, 150.0, 92.0 ],
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
                        }
                    }
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1737.2082682847977, 52.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1794.0, 209.91666865348816, 65.0, 22.0 ],
                    "text": "1., 0. 5000"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 1794.0, 265.91666865348816, 41.0, 22.0 ],
                    "text": "line 0."
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1794.0, 173.91666865348816, 48.0, 22.0 ],
                    "text": "del 100"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "int", "bang", "bang", "int", "stop" ],
                    "patching_rect": [ 1773.0, 117.91666865348816, 78.0, 22.0 ],
                    "text": "t 1 b b 1 stop"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1785.0, 768.0, 29.5, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1785.0, 731.0, 54.0, 22.0 ],
                    "text": "r START"
                }
            },
            {
                "box": {
                    "id": "obj-334",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "patching_rect": [ 1618.0, 768.0, 29.5, 22.0 ],
                    "text": "t i i"
                }
            },
            {
                "box": {
                    "id": "obj-333",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1642.0, 809.0, 73.20826828479767, 22.0 ],
                    "text": "gate"
                }
            },
            {
                "box": {
                    "id": "obj-331",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1618.0, 869.0, 69.0, 22.0 ],
                    "text": "pak f f f f"
                }
            },
            {
                "box": {
                    "id": "obj-330",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1618.0, 734.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-321",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 1870.8749276399612, 53.0, 41.0, 22.0 ],
                    "text": "sel 20"
                }
            },
            {
                "box": {
                    "id": "obj-317",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2022.0, 10.0, 36.0, 22.0 ],
                    "text": "r end"
                }
            },
            {
                "box": {
                    "id": "obj-316",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1149.9999561309814, 1124.9999570846558, 38.0, 22.0 ],
                    "text": "s end"
                }
            },
            {
                "box": {
                    "id": "obj-312",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1128.1249569654465, 934.3749643564224, 54.0, 22.0 ],
                    "text": "r START"
                }
            },
            {
                "box": {
                    "id": "obj-311",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 258.33332347869873, 142.70832788944244, 56.0, 22.0 ],
                    "text": "s START"
                }
            },
            {
                "box": {
                    "fontsize": 48.0,
                    "id": "obj-308",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 258.33332347869873, 65.62499749660492, 161.0, 62.0 ],
                    "text": "START"
                }
            },
            {
                "box": {
                    "id": "obj-306",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1219.7916201353073, 932.291631102562, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-303",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1219.7916201353073, 974.5, 38.0, 22.0 ],
                    "text": "jam 0"
                }
            },
            {
                "box": {
                    "id": "obj-301",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "int", "", "", "int" ],
                    "patching_rect": [ 1219.7916201353073, 1026.0416275262833, 65.0, 22.0 ],
                    "text": "counter 20"
                }
            },
            {
                "box": {
                    "id": "obj-300",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "int" ],
                    "patching_rect": [ 1313.458282828331, 987.6106989383698, 29.5, 22.0 ],
                    "text": "t b i"
                }
            },
            {
                "box": {
                    "id": "obj-295",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1219.958282828331, 1069.0266346931458, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-293",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1219.958282828331, 1111.0, 123.0, 22.0 ],
                    "text": "sprintf symout %i: %s"
                }
            },
            {
                "box": {
                    "clipheight": 91.0,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "/Users/danielbelquer/Downloads/Waveform_Scene/interference.mp3",
                                "filename": "interference.mp3",
                                "filekind": "audiofile",
                                "id": "u115010533",
                                "loop": 0,
                                "content_state": {                                }
                            }
                        ]
                    },
                    "id": "obj-271",
                    "maxclass": "mc.playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "multichannelsignal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1998.9582570791245, 179.58332514762878, 150.0, 92.0 ],
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
                        }
                    }
                }
            },
            {
                "box": {
                    "id": "obj-267",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1914.0, 209.74999833106995, 65.0, 22.0 ],
                    "text": "1., 0. 3000"
                }
            },
            {
                "box": {
                    "id": "obj-268",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 1914.0, 266.0, 41.0, 22.0 ],
                    "text": "line 0."
                }
            },
            {
                "box": {
                    "id": "obj-266",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1998.9582570791245, 565.0, 53.0, 22.0 ],
                    "text": "mc.*~ 1."
                }
            },
            {
                "box": {
                    "id": "obj-265",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1955.0, 52.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-263",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1914.0, 174.0, 55.0, 22.0 ],
                    "text": "del 5000"
                }
            },
            {
                "box": {
                    "id": "obj-262",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "int", "bang", "bang", "int", "stop" ],
                    "patching_rect": [ 1893.7499277591705, 117.91666865348816, 78.0, 22.0 ],
                    "text": "t 1 b b 1 stop"
                }
            },
            {
                "box": {
                    "id": "obj-259",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 2183.9582570791245, 133.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-257",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2183.9582570791245, 179.16665983200073, 65.0, 22.0 ],
                    "text": "0., 1. 5000"
                }
            },
            {
                "box": {
                    "id": "obj-255",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 2183.9582570791245, 214.58332514762878, 41.0, 22.0 ],
                    "text": "line 0."
                }
            },
            {
                "box": {
                    "id": "obj-242",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 2183.9582570791245, 280.2083226442337, 50.0, 22.0 ],
                    "text": "mc.sig~"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-243",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 2183.9582570791245, 247.91665720939636, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-245",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "signal", "signal", "signal" ],
                    "patching_rect": [ 1998.9582570791245, 605.0, 84.0, 22.0 ],
                    "text": "mc.unpack~ 4"
                }
            },
            {
                "box": {
                    "id": "obj-246",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1998.9582570791245, 357.2916530370712, 204.0, 22.0 ],
                    "text": "mc.mixdown~ 4 @pancontrolmode 1"
                }
            },
            {
                "box": {
                    "channels": 4,
                    "id": "obj-234",
                    "lastchannelcount": 4,
                    "maxclass": "mc.live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "multichannelsignal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1998.9582570791245, 393.7499849796295, 48.0, 136.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "mc.live.gain~",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "mc.live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "mc.live.gain~"
                }
            },
            {
                "box": {
                    "id": "obj-96",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1394.0, 661.0, 93.0, 22.0 ],
                    "text": "r selected_Card"
                }
            },
            {
                "box": {
                    "id": "obj-91",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1617.714731156826, 916.0, 101.0, 22.0 ],
                    "text": "color $1 $2 $3 $4"
                }
            },
            {
                "box": {
                    "id": "obj-64",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 402.5, 1111.0, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "obj-63",
                    "maxclass": "preset",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                    "patching_rect": [ 402.5, 1145.0, 21.0, 16.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 5, "obj-61", "live.slider", "float", 1.0, 5, "obj-60", "live.slider", "float", 1.5, 5, "obj-59", "live.slider", "float", 1.0 ]
                        }
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-61",
                    "maxclass": "live.slider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 554.0, 1186.0, 62.0, 95.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.slider[8]",
                            "parameter_mmax": 50.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "saturation",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "live.slider[3]"
                }
            },
            {
                "box": {
                    "id": "obj-60",
                    "maxclass": "live.slider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 484.0, 1186.0, 39.0, 95.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.slider[7]",
                            "parameter_mmax": 50.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "contrast",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "live.slider[2]"
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "live.slider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 395.5, 1186.0, 51.0, 95.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.slider[6]",
                            "parameter_mmax": 50.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "brightness",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "live.slider[1]"
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 484.0, 1293.0, 68.0, 22.0 ],
                    "text": "contrast $1"
                }
            },
            {
                "box": {
                    "id": "obj-57",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 554.0, 1293.0, 78.0, 22.0 ],
                    "text": "saturation $1"
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 395.5, 1293.0, 81.0, 22.0 ],
                    "text": "brightness $1"
                }
            },
            {
                "box": {
                    "id": "obj-50",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_gl_texture", "" ],
                    "patching_rect": [ 302.0, 1351.0, 123.0, 22.0 ],
                    "text": "jit.gl.pix @gen brcosa",
                    "varname": "jit.gl.pix_AA"
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 96.0, 768.0, 38.0, 22.0 ],
                    "text": "jam 0"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "linecount": 20,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 869.7916334867477, 374.0, 78.0, 275.0 ],
                    "text": "1 river\n2 lake\n3 mountain\n4 rainbow\n5 fog\n6 stone\n7 dew\n8 dusk\n9 marsh\n10 maelstron\n11 night\n12 wind\n13 desert\n14 dawn\n15 bubble\n16 ocean\n17 solstice\n18 spark\n19 valley\n20 storm"
                }
            },
            {
                "box": {
                    "id": "obj-229",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "int", "bang" ],
                    "patching_rect": [ 61.0, 638.0, 54.0, 22.0 ],
                    "text": "t 1 1 b"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-221",
                    "maxclass": "flonum",
                    "maximum": 2.0,
                    "minimum": -2.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1500.118112663428, 1069.0266346931458, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1479.6461367607117, 1064.6018555760384, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-220",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1473.4514459967613, 1118.5841608047485, 99.0, 22.0 ],
                    "text": "pack scale f 1. 1."
                }
            },
            {
                "box": {
                    "id": "obj-218",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 138.0, 931.1859198212624, 29.5, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-88",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 96.0, 1041.1859198212624, 77.0, 22.0 ],
                    "text": "pak color f f f"
                }
            },
            {
                "box": {
                    "id": "obj-80",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 910.0, 10.0, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "obj-75",
                    "maxclass": "preset",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                    "patching_rect": [ 910.0, 45.0, 20.0, 22.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 5, "obj-124", "number", "float", 0.9950000047683716, 5, "obj-135", "number", "float", 0.2630000114440918, 5, "obj-128", "number", "float", 0.925000011920929, 5, "obj-137", "number", "float", 0.8199999928474426, 5, "obj-123", "number", "float", 0.9800000190734863, 5, "obj-132", "number", "float", 0.2849999964237213, 5, "obj-111", "number", "float", 0.0949999988079071, 5, "obj-134", "number", "float", 0.10899999737739563 ]
                        }
                    ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-29",
                    "maxclass": "jit.fpsgui",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1204.5, 320.35400807857513, 80.0, 35.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 384.5, 131.1875, 80.0, 35.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "int", "stop" ],
                    "patching_rect": [ 1696.2082682847977, 565.0, 58.0, 22.0 ],
                    "text": "t b 1 stop"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1696.2082682847977, 624.0, 55.0, 22.0 ],
                    "text": "del 4000"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1696.2082682847977, 662.0, 65.0, 22.0 ],
                    "text": "1., 0. 1000"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 1696.2082682847977, 706.0, 41.0, 22.0 ],
                    "text": "line 0."
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1462.0, 695.0, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "obj-70",
                    "maxclass": "newobj",
                    "numinlets": 8,
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
                        "rect": [ 0.0, 0.0, 1000.0, 759.2 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-136",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 246.0, 100.0, 80.0, 22.0 ],
                                    "text": "pak f f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-133",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 100.0, 81.5, 22.0 ],
                                    "text": "pak f f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-130",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 246.0, 129.0, 182.0, 22.0 ],
                                    "text": "sendcornerpin upper_right $1 $2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-131",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 129.0, 175.0, 22.0 ],
                                    "text": "sendcornerpin upper_left $1 $2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-125",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 244.0, 218.0, 75.5, 22.0 ],
                                    "text": "pak f f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-118",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 218.0, 81.0, 22.0 ],
                                    "text": "pak f f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-117",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 244.0, 253.0, 180.0, 22.0 ],
                                    "text": "sendcornerpin lower_right $1 $2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-103",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 249.0, 173.0, 22.0 ],
                                    "text": "sendcornerpin lower_left $1 $2"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-14",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-16",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 85.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-19",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 120.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-27",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 155.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-29",
                                    "index": 5,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 244.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-31",
                                    "index": 6,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 279.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-55",
                                    "index": 7,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 314.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-60",
                                    "index": 8,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 349.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-61",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 141.5, 335.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-61", 0 ],
                                    "source": [ "obj-103", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-61", 0 ],
                                    "source": [ "obj-117", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-103", 0 ],
                                    "source": [ "obj-118", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-117", 0 ],
                                    "source": [ "obj-125", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-61", 0 ],
                                    "source": [ "obj-130", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-61", 0 ],
                                    "source": [ "obj-131", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-131", 0 ],
                                    "source": [ "obj-133", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-130", 0 ],
                                    "source": [ "obj-136", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-133", 0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-118", 0 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-133", 1 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-118", 1 ],
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-125", 0 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-136", 0 ],
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-125", 1 ],
                                    "source": [ "obj-55", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-136", 1 ],
                                    "source": [ "obj-60", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 965.0, 191.0, 205.0, 22.0 ],
                    "text": "p cornerpin"
                }
            },
            {
                "box": {
                    "id": "obj-138",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1463.0, 927.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-115",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1463.0, 957.0, 67.0, 22.0 ],
                    "text": "fontsize $1"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 194.0, 762.5, 91.0, 33.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 157.0, 1319.0, 91.0, 33.0 ],
                    "text": "seconds till crossfade"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 142.0, 768.0, 50.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 10 ],
                            "parameter_initial_enable": 1,
                            "parameter_invisible": 1,
                            "parameter_longname": "number[1]",
                            "parameter_modmode": 0,
                            "parameter_shortname": "number",
                            "parameter_type": 3
                        }
                    },
                    "varname": "number[1]"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 400.5, 285.0, 80.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 365.0, 267.0, 80.0, 20.0 ],
                    "text": "time paused"
                }
            },
            {
                "box": {
                    "id": "obj-90",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 344.0, 284.0, 50.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 5000 ],
                            "parameter_initial_enable": 1,
                            "parameter_invisible": 1,
                            "parameter_longname": "number",
                            "parameter_modmode": 0,
                            "parameter_shortname": "number",
                            "parameter_type": 3
                        }
                    },
                    "varname": "number"
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 302.0, 325.0, 61.0, 22.0 ],
                    "text": "pipe 5000"
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 388.0, 325.0, 48.0, 22.0 ],
                    "text": "pipe 50"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "int", "int", "int", "stop" ],
                    "patching_rect": [ 302.0, 245.0, 277.0, 22.0 ],
                    "text": "t i 0 i stop"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 847.0, 174.0, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "obj-174",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 61.0, 594.0, 93.0, 22.0 ],
                    "text": "r selected_Card"
                }
            },
            {
                "box": {
                    "id": "obj-153",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1696.2082682847977, 518.0, 93.0, 22.0 ],
                    "text": "r selected_Card"
                }
            },
            {
                "box": {
                    "id": "obj-154",
                    "maxclass": "preset",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                    "patching_rect": [ 1462.0, 740.0, 69.5, 63.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1052.5772606134415, 787.628821849823, 139.0, 40.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 5, "obj-74", "umenu", "int", 150, 5, "obj-41", "number", "float", 0.699999988079071, 5, "obj-330", "toggle", "int", 1, 5, "obj-40", "number", "float", 0.1340000033378601, 5, "obj-221", "number", "float", 2.0, 5, "obj-138", "number", "int", 54 ]
                        },
                        {
                            "number": 2,
                            "data": [ 5, "obj-74", "umenu", "int", 150, 5, "obj-41", "number", "float", 0.6000000238418579, 5, "obj-330", "toggle", "int", 1, 5, "obj-40", "number", "float", 0.0, 5, "obj-221", "number", "float", 2.0, 5, "obj-138", "number", "int", 54 ]
                        },
                        {
                            "number": 3,
                            "data": [ 5, "obj-74", "umenu", "int", 150, 5, "obj-41", "number", "float", 0.5569999814033508, 5, "obj-330", "toggle", "int", 1, 5, "obj-40", "number", "float", 0.0, 5, "obj-221", "number", "float", 2.0, 5, "obj-138", "number", "int", 45 ]
                        },
                        {
                            "number": 4,
                            "data": [ 5, "obj-74", "umenu", "int", 150, 5, "obj-41", "number", "float", 0.6000000238418579, 5, "obj-40", "number", "float", 0.0, 5, "obj-221", "number", "float", 2.0, 5, "obj-138", "number", "int", 54 ]
                        },
                        {
                            "number": 5,
                            "data": [ 5, "obj-74", "umenu", "int", 150, 5, "obj-41", "number", "float", 0.6000000238418579, 5, "obj-330", "toggle", "int", 0, 5, "obj-40", "number", "float", 0.0, 5, "obj-221", "number", "float", 2.0, 5, "obj-138", "number", "int", 54 ]
                        },
                        {
                            "number": 6,
                            "data": [ 5, "obj-74", "umenu", "int", 150, 5, "obj-41", "number", "float", 0.6000000238418579, 5, "obj-330", "toggle", "int", 0, 5, "obj-40", "number", "float", 0.1850000023841858, 5, "obj-221", "number", "float", 2.0, 5, "obj-138", "number", "int", 54 ]
                        },
                        {
                            "number": 7,
                            "data": [ 5, "obj-74", "umenu", "int", 150, 5, "obj-41", "number", "float", -0.15000000596046448, 5, "obj-330", "toggle", "int", 1, 5, "obj-40", "number", "float", 0.20000000298023224, 5, "obj-221", "number", "float", 2.0, 5, "obj-138", "number", "int", 54 ]
                        },
                        {
                            "number": 8,
                            "data": [ 5, "obj-74", "umenu", "int", 150, 5, "obj-41", "number", "float", 0.02800000086426735, 5, "obj-330", "toggle", "int", 1, 5, "obj-40", "number", "float", 0.0, 5, "obj-221", "number", "float", 2.0, 5, "obj-138", "number", "int", 54 ]
                        },
                        {
                            "number": 9,
                            "data": [ 5, "obj-74", "umenu", "int", 150, 5, "obj-41", "number", "float", 0.6000000238418579, 5, "obj-330", "toggle", "int", 1, 5, "obj-40", "number", "float", 0.0, 5, "obj-221", "number", "float", 2.0, 5, "obj-138", "number", "int", 54 ]
                        },
                        {
                            "number": 10,
                            "data": [ 5, "obj-74", "umenu", "int", 150, 5, "obj-41", "number", "float", 0.6000000238418579, 5, "obj-330", "toggle", "int", 1, 5, "obj-40", "number", "float", 0.0, 5, "obj-221", "number", "float", 2.0, 5, "obj-138", "number", "int", 47 ]
                        },
                        {
                            "number": 11,
                            "data": [ 5, "obj-74", "umenu", "int", 150, 5, "obj-41", "number", "float", 0.6000000238418579, 5, "obj-330", "toggle", "int", 1, 5, "obj-40", "number", "float", 0.0, 5, "obj-221", "number", "float", 2.0, 5, "obj-138", "number", "int", 54 ]
                        },
                        {
                            "number": 12,
                            "data": [ 5, "obj-74", "umenu", "int", 150, 5, "obj-41", "number", "float", 0.5139999985694885, 5, "obj-330", "toggle", "int", 1, 5, "obj-40", "number", "float", 0.023000000044703484, 5, "obj-221", "number", "float", 2.0, 5, "obj-138", "number", "int", 54 ]
                        },
                        {
                            "number": 13,
                            "data": [ 5, "obj-74", "umenu", "int", 150, 5, "obj-41", "number", "float", 0.6000000238418579, 5, "obj-330", "toggle", "int", 0, 5, "obj-40", "number", "float", 0.0, 5, "obj-221", "number", "float", 2.0, 5, "obj-138", "number", "int", 54 ]
                        },
                        {
                            "number": 14,
                            "data": [ 5, "obj-74", "umenu", "int", 150, 5, "obj-41", "number", "float", 0.6000000238418579, 5, "obj-330", "toggle", "int", 0, 5, "obj-40", "number", "float", 0.0, 5, "obj-221", "number", "float", 2.0, 5, "obj-138", "number", "int", 54 ]
                        },
                        {
                            "number": 15,
                            "data": [ 5, "obj-74", "umenu", "int", 150, 5, "obj-41", "number", "float", 0.6800000071525574, 5, "obj-330", "toggle", "int", 1, 5, "obj-40", "number", "float", 0.0, 5, "obj-221", "number", "float", 2.0, 5, "obj-138", "number", "int", 54 ]
                        },
                        {
                            "number": 16,
                            "data": [ 5, "obj-74", "umenu", "int", 150, 5, "obj-41", "number", "float", 0.6800000071525574, 5, "obj-330", "toggle", "int", 1, 5, "obj-40", "number", "float", 0.0, 5, "obj-221", "number", "float", 2.0, 5, "obj-138", "number", "int", 54 ]
                        },
                        {
                            "number": 17,
                            "data": [ 5, "obj-74", "umenu", "int", 150, 5, "obj-41", "number", "float", 0.6800000071525574, 5, "obj-330", "toggle", "int", 1, 5, "obj-40", "number", "float", 0.0, 5, "obj-221", "number", "float", 2.0, 5, "obj-138", "number", "int", 54 ]
                        },
                        {
                            "number": 18,
                            "data": [ 5, "obj-74", "umenu", "int", 150, 5, "obj-41", "number", "float", 0.5389999747276306, 5, "obj-330", "toggle", "int", 0, 5, "obj-40", "number", "float", 0.0, 5, "obj-221", "number", "float", 2.0, 5, "obj-138", "number", "int", 54 ]
                        },
                        {
                            "number": 19,
                            "data": [ 5, "obj-74", "umenu", "int", 150, 5, "obj-41", "number", "float", 0.6800000071525574, 5, "obj-330", "toggle", "int", 1, 5, "obj-40", "number", "float", 0.0, 5, "obj-221", "number", "float", 2.0, 5, "obj-138", "number", "int", 54 ]
                        },
                        {
                            "number": 20,
                            "data": [ 5, "obj-74", "umenu", "int", 150, 5, "obj-41", "number", "float", 0.08699999749660492, 5, "obj-330", "toggle", "int", 0, 5, "obj-40", "number", "float", -0.15000000596046448, 5, "obj-221", "number", "float", 2.0, 5, "obj-138", "number", "int", 48 ]
                        }
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-145",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 75.0, 218.0, 80.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 331.0, 32.0, 80.0, 20.0 ],
                    "text": "selected card"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-135",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 1,
                    "parameter_mappable": 0,
                    "patching_rect": [ 1172.0, 80.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 793.0, 16.0, 50.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "number[9]",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "number[9]",
                            "parameter_type": 0
                        }
                    },
                    "varname": "number[9]"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-137",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 1,
                    "parameter_mappable": 0,
                    "patching_rect": [ 1120.0, 80.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 732.0, 16.0, 50.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 1.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "number[7]",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "number[7]",
                            "parameter_type": 0
                        }
                    },
                    "varname": "number[7]"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-132",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 1,
                    "parameter_mappable": 0,
                    "patching_rect": [ 1043.0, 80.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 523.0, 16.0, 50.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "number[6]",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "number[6]",
                            "parameter_type": 0
                        }
                    },
                    "varname": "number[6]"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-134",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 1,
                    "parameter_mappable": 0,
                    "patching_rect": [ 992.0, 80.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 460.0, 16.0, 50.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "number[5]",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "number[5]",
                            "parameter_type": 0
                        }
                    },
                    "varname": "number[5]"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-124",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 1,
                    "parameter_mappable": 0,
                    "patching_rect": [ 1172.0, 134.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 793.0, 49.0, 50.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 1.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "number[8]",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "number[8]",
                            "parameter_type": 0
                        }
                    },
                    "varname": "number[8]"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-128",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 1,
                    "parameter_mappable": 0,
                    "patching_rect": [ 1120.0, 134.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 736.0, 49.0, 50.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 1.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "number[4]",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "number[4]",
                            "parameter_type": 0
                        }
                    },
                    "varname": "number[4]"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-123",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 1,
                    "parameter_mappable": 0,
                    "patching_rect": [ 1045.0, 134.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 522.0, 49.0, 50.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 1.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "number[3]",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "number[3]",
                            "parameter_type": 0
                        }
                    },
                    "varname": "number[3]"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-111",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 1,
                    "parameter_mappable": 0,
                    "patching_rect": [ 992.0, 134.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 460.0, 49.0, 50.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "number[2]",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "number[2]",
                            "parameter_type": 0
                        }
                    },
                    "varname": "number[2]"
                }
            },
            {
                "box": {
                    "id": "obj-93",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 116.0, 868.1859198212624, 59.0, 22.0 ],
                    "text": "1., 0. 600"
                }
            },
            {
                "box": {
                    "id": "obj-86",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 116.0, 899.1859198212624, 41.0, 22.0 ],
                    "text": "line 1."
                }
            },
            {
                "box": {
                    "id": "obj-65",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "int", "", "", "int" ],
                    "patching_rect": [ 61.0, 807.9646667838097, 100.0, 22.0 ],
                    "text": "counter 10"
                }
            },
            {
                "box": {
                    "id": "obj-56",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 61.0, 690.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 61.0, 729.0, 69.0, 22.0 ],
                    "text": "metro 1000"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.269595890603871, 0.408853959740371, 0.595943257030903, 1.0 ],
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
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
                        "rect": [ 0.0, 26.0, 1444.0, 827.0 ],
                        "openinpresentation": 1,
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 327.0, 66.0, 70.0, 22.0 ],
                                    "text": "loadmess 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "preset",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                                    "patching_rect": [ 315.0, 117.0, 100.0, 40.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 15.0, 123.0, 100.0, 40.0 ],
                                    "preset_data": [
                                        {
                                            "number": 1,
                                            "data": [ 5, "obj-48", "slider", "float", 255.0, 7, "obj-42", "swatch", "list", 1, 3, 143, 5, "obj-45", "slider", "float", 255.0, 7, "obj-23", "swatch", "list", 254, 168, 33, 5, "obj-69", "slider", "float", 255.0 ]
                                        }
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "patching_rect": [ 542.0, 629.0, 50.0, 22.0 ],
                                    "text": "console"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 601.0, 585.0, 35.0, 22.0 ],
                                    "text": "clear"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-7",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 307.5, 604.0, 86.0, 17.0 ],
                                    "text": "mode preset strobe"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-72",
                                    "linecount": 80,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 918.0, 649.0, 283.0, 1079.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 80,
                                    "presentation_rect": [ 264.0, 307.0, 283.0, 1079.0 ],
                                    "text": "Channel Value Function (11ch)\n**1 0 - 255 PAN MOVEMENT 8bit\n\n**2 0 - 255 PAN FINE 16bit\n\n**3 0 - 255 TILT MOVEMENT 8bit\n\n**4 0 - 255 TILT FINE 16bit\n\n**5 COLORS\n0 - 7 WHITE\n8 - 14 RED\n15 - 21 ORANGE\n22 - 28 YELLOW\n29 - 35 GREEN\n36 - 42 BLUE\n43 - 49 LIGHT BLUE\n50 - 56 PINK\n57 - 127 SPLIT COLORS\n128 - 189 COLOR SCROLL FAST - SLOW\n190 - 193 STOP\n194 - 255 COLOR SCROLL SLOW - FAST\n\n**6 GOBO WHEEL\n0 - 7 OPEN\n8 - 15 GOBO 1\n16 - 23 GOBO 2\n24 - 31 GOBO 3\n32 - 39 GOBO 4\n40 - 47 GOBO 5\n48 - 55 GOBO 6\n56 - 63 GOBO 7\n64 - 71 OPEN SHAKE\n72 - 79 GOBO 1 SHAKE\n80 - 87 GOBO 2 SHAKE\n88 - 95 GOBO 3 SHAKE\n96 - 103 GOBO 4 SHAKE\n104 - 111 GOBO 5 SHAKE\n112 - 119 GOBO 6 SHAKE\n120 - 127 GOBO 7 SHAKE\n128 - 189 GOBO SCROLL FAST - SLOW\n190 - 193 STOP\n194 - 255 GOBO SCROLL SLOW - FAST\n\n**7 SHUTTER/STROBE\n0 - 7 BLACKOUT\n8 - 15 SHUTTER OPEN\n16 - 131 STROBING SLOW - FAST\n132 - 139 SHUTTER OPEN\n140 - 181 SHUTTER SLOW OPEN - FAST CLOSE\n182 - 189 SHUTTER OPEN\n190 - 231 SHUTTER FAST OPEN - SLOW CLOSE\n232 - 239 SHUTTER OPEN\n240 - 247 RANDOM STROBE\n248 - 255 SHUTTER OPEN\n\n**8 0 - 255 DIMMER 0% - 100%\n\n**9 0 - 255 MOVEMENT SPEED FAST - SLOW\n\n**10 FUNCTION\n1 - 69 NO FUNCTION\n70 - 79 BLACKOUT WITH PAN/TILT\n80 - 89 NO BLACKOUT WITH PAN/TILT\n90 - 99 BLACKOUT WITH COLOR CHANGE\n100 - 109 NO BLACKOUT WITH COLOR CHANGE\n110 - 119 BLACKOUT WITH GOBO CHANGE\n120 - 129 NO BLACKOUT WITH GOBO CHANGE\n130 - 199 NO FUNCTION\n200 - 209 RESET ALL\n210 - 249 NO FUNCTION\n250 - 255 SOUND ACTIVE MODE\n\n**11 DIMMER CURVES\n0 - 41 STANDARD\n42 - 84 STAGE\n85 - 127 TV\n128 - 170 ARCHITECTURAL\n171 - 213 THEATER\n214 - 255 DEFAULT TO UNIT CURVE SETTING"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-3",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 661.0, 171.0, 81.0, 27.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 2,
                                    "presentation_rect": [ 304.0, 85.0, 81.0, 27.0 ],
                                    "text": "ADJ ch9\nR G B Dimmer"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
                                    "id": "obj-41",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
                                    "patching_rect": [ 660.0, 240.0, 51.0, 22.0 ],
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_macro_title"
                                        }
                                    },
                                    "saved_newobj_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_macro_title"
                                        }
                                    },
                                    "text": "unjoin 3"
                                }
                            },
                            {
                                "box": {
                                    "compatibility": 1,
                                    "id": "obj-42",
                                    "maxclass": "swatch",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 660.0, 198.0, 128.0, 32.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 15.0, 82.0, 128.0, 32.0 ],
                                    "saturation": 252
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
                                    "id": "obj-43",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 739.0, 442.0, 29.5, 22.0 ],
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_macro_title"
                                        }
                                    },
                                    "saved_newobj_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_macro_title"
                                        }
                                    },
                                    "text": "* 1."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
                                    "id": "obj-44",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 713.0, 474.0, 29.5, 22.0 ],
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_macro_title"
                                        }
                                    },
                                    "saved_newobj_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_macro_title"
                                        }
                                    },
                                    "text": "* 1."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
                                    "id": "obj-46",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 687.0, 442.0, 29.5, 22.0 ],
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_macro_title"
                                        }
                                    },
                                    "saved_newobj_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_macro_title"
                                        }
                                    },
                                    "text": "* 1."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 660.0, 474.0, 29.5, 22.0 ],
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_macro_title"
                                        }
                                    },
                                    "saved_newobj_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_macro_title"
                                        }
                                    },
                                    "text": "* 1."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
                                    "id": "obj-48",
                                    "knobcolor": [ 0.9200214744, 0.8580397367, 0.6762769818, 1.0 ],
                                    "maxclass": "slider",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "orientation": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 739.0, 391.0, 65.0, 29.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 149.0, 82.0, 150.0, 32.0 ],
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_macro_title"
                                        },
                                        "valueof": {
                                            "parameter_linknames": 1,
                                            "parameter_longname": "slider8[1]",
                                            "parameter_mmax": 255.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "ch",
                                            "parameter_type": 0
                                        }
                                    },
                                    "size": 256.0,
                                    "varname": "slider8[1]"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
                                    "id": "obj-51",
                                    "knobcolor": [ 0.9200214744, 0.8580397367, 0.6762769818, 1.0 ],
                                    "maxclass": "slider",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 713.0, 280.0, 20.0, 140.0 ],
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_macro_title"
                                        },
                                        "valueof": {
                                            "parameter_linknames": 1,
                                            "parameter_longname": "slider7[1]",
                                            "parameter_mmax": 255.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "ch",
                                            "parameter_type": 0
                                        }
                                    },
                                    "size": 256.0,
                                    "varname": "slider7[1]"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
                                    "id": "obj-52",
                                    "knobcolor": [ 0.9200214744, 0.8580397367, 0.6762769818, 1.0 ],
                                    "maxclass": "slider",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 687.0, 280.0, 20.0, 140.0 ],
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_macro_title"
                                        },
                                        "valueof": {
                                            "parameter_linknames": 1,
                                            "parameter_longname": "slider6[1]",
                                            "parameter_mmax": 255.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "ch",
                                            "parameter_type": 0
                                        }
                                    },
                                    "size": 256.0,
                                    "varname": "slider6[1]"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
                                    "id": "obj-53",
                                    "knobcolor": [ 0.9200214744, 0.8580397367, 0.6762769818, 1.0 ],
                                    "maxclass": "slider",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 660.0, 280.0, 20.0, 140.0 ],
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_macro_title"
                                        },
                                        "valueof": {
                                            "parameter_linknames": 1,
                                            "parameter_longname": "slider5[1]",
                                            "parameter_mmax": 255.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "ch",
                                            "parameter_type": 0
                                        }
                                    },
                                    "size": 256.0,
                                    "varname": "slider5[1]"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
                                    "patching_rect": [ 460.0, 251.0, 51.0, 22.0 ],
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_macro_title"
                                        }
                                    },
                                    "saved_newobj_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_macro_title"
                                        }
                                    },
                                    "text": "unjoin 3"
                                }
                            },
                            {
                                "box": {
                                    "compatibility": 1,
                                    "id": "obj-23",
                                    "maxclass": "swatch",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 460.0, 198.0, 128.0, 32.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 17.0, 44.0, 128.0, 32.0 ],
                                    "saturation": 251
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-101",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 304.0, 637.0, 35.0, 22.0 ],
                                    "text": "open"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-49",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 491.0, 315.0, 19.0, 17.0 ],
                                    "text": "G"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-34",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 545.0, 315.0, 19.0, 17.0 ],
                                    "text": "W"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-36",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 518.0, 315.0, 19.0, 17.0 ],
                                    "text": "B"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
                                    "id": "obj-45",
                                    "knobcolor": [ 0.9200214744, 0.8580397367, 0.6762769818, 1.0 ],
                                    "maxclass": "slider",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 539.0, 336.0, 20.0, 140.0 ],
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_macro_title"
                                        },
                                        "valueof": {
                                            "parameter_linknames": 1,
                                            "parameter_longname": "slider8",
                                            "parameter_mmax": 255.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "ch",
                                            "parameter_type": 0
                                        }
                                    },
                                    "size": 256.0,
                                    "varname": "slider8"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
                                    "id": "obj-47",
                                    "knobcolor": [ 0.9200214744, 0.8580397367, 0.6762769818, 1.0 ],
                                    "maxclass": "slider",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 513.0, 336.0, 20.0, 140.0 ],
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_macro_title"
                                        },
                                        "valueof": {
                                            "parameter_linknames": 1,
                                            "parameter_longname": "slider7",
                                            "parameter_mmax": 255.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "ch",
                                            "parameter_type": 0
                                        }
                                    },
                                    "size": 256.0,
                                    "varname": "slider7"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
                                    "id": "obj-50",
                                    "knobcolor": [ 0.9200214744, 0.8580397367, 0.6762769818, 1.0 ],
                                    "maxclass": "slider",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 487.0, 336.0, 20.0, 140.0 ],
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_macro_title"
                                        },
                                        "valueof": {
                                            "parameter_linknames": 1,
                                            "parameter_longname": "slider6",
                                            "parameter_mmax": 255.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "ch",
                                            "parameter_type": 0
                                        }
                                    },
                                    "size": 256.0,
                                    "varname": "slider6"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-54",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 466.0, 315.0, 19.0, 17.0 ],
                                    "text": "R"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-55",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 341.0, 390.0, 19.0, 17.0 ],
                                    "text": "M"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-59",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 252.0, 615.0, 39.0, 19.0 ],
                                    "text": "getport"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-60",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 667.0, 608.0, 93.0, 17.0 ],
                                    "text": "available serial ports"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
                                    "color": [ 0.75, 0.75, 0.75, 1.0 ],
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-61",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 810.0, 542.0, 48.0, 19.0 ],
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_macro_title"
                                        }
                                    },
                                    "saved_newobj_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_macro_title"
                                        }
                                    },
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
                                    "color": [ 0.75, 0.75, 0.75, 1.0 ],
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-62",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 380.0, 748.0, 40.0, 19.0 ],
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_macro_title"
                                        }
                                    },
                                    "saved_newobj_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_macro_title"
                                        }
                                    },
                                    "text": "zl iter 1"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
                                    "color": [ 0.75, 0.75, 0.75, 1.0 ],
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-63",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 380.0, 774.0, 76.0, 19.0 ],
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_macro_title"
                                        }
                                    },
                                    "saved_newobj_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_macro_title"
                                        }
                                    },
                                    "text": "prepend append"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
                                    "color": [ 0.75, 0.75, 0.75, 1.0 ],
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-64",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 354.0, 722.0, 45.0, 19.0 ],
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_macro_title"
                                        }
                                    },
                                    "saved_newobj_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_macro_title"
                                        }
                                    },
                                    "text": "zl slice 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-65",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 252.0, 658.0, 32.5, 19.0 ],
                                    "text": "close"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
                                    "color": [ 0.75, 0.75, 0.75, 1.0 ],
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-66",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "print", "clear" ],
                                    "patching_rect": [ 810.0, 571.0, 100.0, 19.0 ],
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_macro_title"
                                        }
                                    },
                                    "saved_newobj_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_macro_title"
                                        }
                                    },
                                    "text": "t print clear"
                                }
                            },
                            {
                                "box": {
                                    "allowdrag": 0,
                                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bgfillcolor_angle": 270.0,
                                    "bgfillcolor_color": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1 ],
                                    "bgfillcolor_proportion": 0.39,
                                    "bgfillcolor_type": "color",
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-30",
                                    "items": [ "debug-console", ",", "Bluetooth-Incoming-Port", ",", "ATH-M50xBT2" ],
                                    "maxclass": "umenu",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "int", "", "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 636.0, 623.0, 124.0, 19.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 8.0, 7.0, 124.0, 19.0 ],
                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-67",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 457.0, 171.0, 161.0, 27.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 2,
                                    "presentation_rect": [ 304.0, 43.0, 161.0, 27.0 ],
                                    "text": "COIDAK ch1\nMode Preset Strobe Dimmer R G B W"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
                                    "id": "obj-68",
                                    "knobcolor": [ 0.9200214744, 0.8580397367, 0.6762769818, 1.0 ],
                                    "maxclass": "slider",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 460.0, 336.0, 20.0, 140.0 ],
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_macro_title"
                                        },
                                        "valueof": {
                                            "parameter_linknames": 1,
                                            "parameter_longname": "slider5",
                                            "parameter_mmax": 255.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "ch",
                                            "parameter_type": 0
                                        }
                                    },
                                    "size": 256.0,
                                    "varname": "slider5"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
                                    "id": "obj-69",
                                    "maxclass": "slider",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "orientation": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 341.0, 414.0, 92.0, 17.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 149.0, 44.0, 150.0, 25.0 ],
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_macro_title"
                                        },
                                        "valueof": {
                                            "parameter_linknames": 1,
                                            "parameter_longname": "slider4",
                                            "parameter_mmax": 255.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "ch",
                                            "parameter_type": 0
                                        }
                                    },
                                    "size": 256.0,
                                    "varname": "slider4"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-73",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 636.0, 649.0, 50.0, 19.0 ],
                                    "text": "serport $1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-74",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 252.0, 637.0, 32.5, 19.0 ],
                                    "text": "print"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-75",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 252.0, 679.0, 39.0, 19.0 ],
                                    "text": "refresh"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
                                    "color": [ 0.75, 0.75, 0.75, 1.0 ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-76",
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
                                        "rect": [ 991.0, 258.0, 289.0, 316.0 ],
                                        "default_fontsize": 9.0,
                                        "statusbarvisible": 0,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-38",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 94.0, 279.600006, 19.0, 19.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "color": [ 0.75, 0.75, 0.75, 1.0 ],
                                                    "fontname": "Arial",
                                                    "fontsize": 9.0,
                                                    "id": "obj-37",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 42.0, 145.142853, 32.0, 19.0 ],
                                                    "text": "+ 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 9.0,
                                                    "id": "obj-28",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 132.0, 288.600006, 50.0, 17.0 ],
                                                    "text": "databits 8"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 9.0,
                                                    "id": "obj-25",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 132.0, 271.600006, 74.0, 17.0 ],
                                                    "text": "buffer size 2048"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 9.0,
                                                    "id": "obj-24",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 132.0, 254.600006, 80.0, 17.0 ],
                                                    "text": "baud rate 115200"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "color": [ 0.75, 0.75, 0.75, 1.0 ],
                                                    "fontname": "Arial",
                                                    "fontsize": 9.0,
                                                    "id": "obj-13",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "int", "" ],
                                                    "patching_rect": [ 42.0, 253.142853, 69.0, 19.0 ],
                                                    "text": "serial e 115200"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "color": [ 0.75, 0.75, 0.75, 1.0 ],
                                                    "fontname": "Arial",
                                                    "fontsize": 9.0,
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 42.0, 226.142853, 58.0, 19.0 ],
                                                    "text": "append 231"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "color": [ 0.75, 0.75, 0.75, 1.0 ],
                                                    "fontname": "Arial",
                                                    "fontsize": 9.0,
                                                    "id": "obj-8",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 42.0, 199.142853, 45.0, 19.0 ],
                                                    "text": "zl join"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 9.0,
                                                    "id": "obj-7",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 42.0, 172.142853, 61.0, 19.0 ],
                                                    "text": "126 6 $1 0 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "color": [ 0.75, 0.75, 0.75, 1.0 ],
                                                    "fontname": "Arial",
                                                    "fontsize": 9.0,
                                                    "id": "obj-5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 42.0, 118.14286, 32.0, 19.0 ],
                                                    "text": "zl len"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "color": [ 0.75, 0.75, 0.75, 1.0 ],
                                                    "fontname": "Arial",
                                                    "fontsize": 9.0,
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 42.0, 91.14286, 45.0, 19.0 ],
                                                    "text": "t l l"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "color": [ 0.75, 0.75, 0.75, 1.0 ],
                                                    "fontname": "Arial",
                                                    "fontsize": 9.0,
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 42.0, 64.0, 145.0, 19.0 ],
                                                    "text": "route list"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-1",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "print" ],
                                                    "patching_rect": [ 42.0, 6.0, 19.0, 19.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                                                    "destination": [ "obj-38", 0 ],
                                                    "source": [ "obj-13", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                                                    "destination": [ "obj-13", 0 ],
                                                    "midpoints": [ 177.5, 248.571426, 51.5, 248.571426 ],
                                                    "source": [ "obj-2", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                                                    "destination": [ "obj-4", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                                                    "destination": [ "obj-7", 0 ],
                                                    "source": [ "obj-37", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-4", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                                                    "destination": [ "obj-8", 1 ],
                                                    "source": [ "obj-4", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                                                    "destination": [ "obj-37", 0 ],
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                                                    "destination": [ "obj-8", 0 ],
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                                                    "destination": [ "obj-9", 0 ],
                                                    "source": [ "obj-8", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                                                    "destination": [ "obj-13", 0 ],
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            }
                                        ],
                                        "default_bgcolor": [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
                                        "saved_attribute_attributes": {
                                            "bgcolor": {
                                                "expression": "themecolor.live_macro_title"
                                            }
                                        }
                                    },
                                    "patching_rect": [ 354.0, 696.0, 91.0, 22.0 ],
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_macro_title"
                                        }
                                    },
                                    "saved_newobj_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_macro_title"
                                        }
                                    },
                                    "saved_object_attributes": {
                                        "bgcolor": [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
                                        "fontsize": 9.0
                                    },
                                    "text": "p DMXUSBPro"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.261531128329206, 0.261531061881087, 0.261531079296546, 1.0 ],
                                    "color": [ 0.75, 0.75, 0.75, 1.0 ],
                                    "fontname": "Arial",
                                    "fontsize": 9.0,
                                    "id": "obj-77",
                                    "maxclass": "newobj",
                                    "numinlets": 12,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 354.0, 623.0, 134.5, 19.0 ],
                                    "text": "pak 0 0 0 0 0 0 0 0 0 0 0 0"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-76", 0 ],
                                    "source": [ "obj-101", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-77", 8 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-47", 0 ],
                                    "source": [ "obj-19", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "source": [ "obj-19", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-68", 0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "order": 1,
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "order": 0,
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.0, 0.0, 0.0, 0.9 ],
                                    "destination": [ "obj-73", 0 ],
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "order": 3,
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 0 ],
                                    "order": 1,
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 0 ],
                                    "order": 2,
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-48", 0 ],
                                    "order": 0,
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-69", 0 ],
                                    "order": 4,
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-51", 0 ],
                                    "source": [ "obj-41", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-52", 0 ],
                                    "source": [ "obj-41", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-53", 0 ],
                                    "source": [ "obj-41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-41", 0 ],
                                    "source": [ "obj-42", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-77", 11 ],
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-77", 10 ],
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-77", 7 ],
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-77", 9 ],
                                    "source": [ "obj-46", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-77", 6 ],
                                    "source": [ "obj-47", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-43", 0 ],
                                    "source": [ "obj-48", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-77", 5 ],
                                    "source": [ "obj-50", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-44", 0 ],
                                    "source": [ "obj-51", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-46", 0 ],
                                    "source": [ "obj-52", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.4994344711303711, 0.5546687841415405, 0.7444629073143005, 1.0 ],
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-53", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "destination": [ "obj-76", 0 ],
                                    "source": [ "obj-59", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "destination": [ "obj-66", 0 ],
                                    "source": [ "obj-61", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "destination": [ "obj-63", 0 ],
                                    "source": [ "obj-62", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "destination": [ "obj-30", 0 ],
                                    "midpoints": [ 389.5, 800.5, 788.5, 800.5, 788.5, 598.5, 645.5, 598.5 ],
                                    "source": [ "obj-63", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "destination": [ "obj-62", 0 ],
                                    "source": [ "obj-64", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "destination": [ "obj-76", 0 ],
                                    "source": [ "obj-65", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "destination": [ "obj-30", 0 ],
                                    "source": [ "obj-66", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "destination": [ "obj-76", 0 ],
                                    "source": [ "obj-66", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-77", 4 ],
                                    "source": [ "obj-68", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-77", 3 ],
                                    "source": [ "obj-69", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "destination": [ "obj-76", 0 ],
                                    "source": [ "obj-73", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "destination": [ "obj-76", 0 ],
                                    "source": [ "obj-74", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "destination": [ "obj-76", 0 ],
                                    "source": [ "obj-75", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "destination": [ "obj-64", 0 ],
                                    "source": [ "obj-76", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-76", 0 ],
                                    "source": [ "obj-77", 0 ]
                                }
                            }
                        ],
                        "default_bgcolor": [ 0.269595890603871, 0.408853959740371, 0.595943257030903, 1.0 ],
                        "saved_attribute_attributes": {
                            "bgcolor": {
                                "expression": "themecolor.live_selection"
                            }
                        }
                    },
                    "patching_rect": [ 18.0, 14.0, 54.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_selection"
                        }
                    },
                    "saved_newobj_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_selection"
                        }
                    },
                    "saved_object_attributes": {
                        "bgcolor": [ 0.269595890603871, 0.408853959740371, 0.595943257030903, 1.0 ]
                    },
                    "text": "p LIGHT"
                }
            },
            {
                "box": {
                    "id": "obj-62",
                    "maxclass": "number",
                    "maximum": 20,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 25.0, 217.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 70.0, 243.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-41",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": -1.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1595.5753496289253, 987.6106989383698, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 249.0, 404.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-40",
                    "maxclass": "flonum",
                    "maximum": 2.0,
                    "minimum": -2.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1541.5930444002151, 987.6106989383698, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 195.0, 404.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1487.610739171505, 1023.0089318752289, 182.0, 22.0 ],
                    "text": "pak position f f f"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1314.958282828331, 941.6666307449341, 93.0, 22.0 ],
                    "text": "r selected_Card"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 302.0, 189.0, 93.0, 22.0 ],
                    "text": "r selected_Card"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1870.8749276399612, 10.0, 93.0, 22.0 ],
                    "text": "r selected_Card"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 292.70832216739655, 95.0, 22.0 ],
                    "text": "s selected_Card"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "live.slider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "orientation": 1,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 116.0, 979.8806105852127, 115.0, 41.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 268.0, 156.0, 150.0, 41.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.slider",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "fadeInOut",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "live.slider"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-71",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1696.2082682847977, 768.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 73.0, 404.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "number",
                    "maximum": 20,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1323.958282828331, 1037.4999604225159, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "coll_data": {
                        "count": 20,
                        "data": [
                            {
                                "key": 1,
                                "value": [ "river" ]
                            },
                            {
                                "key": 2,
                                "value": [ "lake" ]
                            },
                            {
                                "key": 3,
                                "value": [ "mountain" ]
                            },
                            {
                                "key": 4,
                                "value": [ "rainbow" ]
                            },
                            {
                                "key": 5,
                                "value": [ "fog" ]
                            },
                            {
                                "key": 6,
                                "value": [ "stone" ]
                            },
                            {
                                "key": 7,
                                "value": [ "dew" ]
                            },
                            {
                                "key": 8,
                                "value": [ "dusk" ]
                            },
                            {
                                "key": 9,
                                "value": [ "marsh" ]
                            },
                            {
                                "key": 10,
                                "value": [ "maelstron" ]
                            },
                            {
                                "key": 11,
                                "value": [ "night" ]
                            },
                            {
                                "key": 12,
                                "value": [ "wind" ]
                            },
                            {
                                "key": 13,
                                "value": [ "desert" ]
                            },
                            {
                                "key": 14,
                                "value": [ "dawn" ]
                            },
                            {
                                "key": 15,
                                "value": [ "bubble" ]
                            },
                            {
                                "key": 16,
                                "value": [ "ocean" ]
                            },
                            {
                                "key": 17,
                                "value": [ "solstice" ]
                            },
                            {
                                "key": 18,
                                "value": [ "spark" ]
                            },
                            {
                                "key": 19,
                                "value": [ "valley" ]
                            },
                            {
                                "key": 20,
                                "value": [ "storm" ]
                            }
                        ]
                    },
                    "id": "obj-35",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 1323.958282828331, 1078.124958872795, 121.0, 22.0 ],
                    "saved_object_attributes": {
                        "embed": 1,
                        "precision": 6
                    },
                    "text": "coll cards @embed 1"
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1219.958282828331, 1154.1666226387024, 75.0, 22.0 ],
                    "text": "prepend text"
                }
            },
            {
                "box": {
                    "id": "obj-67",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1499.7180428504944, 1154.1666226387024, 37.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hidden": 1,
                    "id": "obj-68",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1749.0, 878.6666307449341, 64.0, 23.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-69",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1749.0, 913.6666307449341, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-72",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1749.0, 940.6666307449341, 48.0, 23.0 ],
                    "text": "fontlist"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-97",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1723.0, 1002.0, 74.0, 23.0 ],
                    "text": "tosymbol"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-73",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1723.0, 1030.0, 85.0, 23.0 ],
                    "text": "prepend font"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-74",
                    "items": [ "Ableton Sans", ",", "Ableton Sans Regular Italic", ",", "Ableton Sans ExtraLight", ",", "Ableton Sans ExtraLight Italic", ",", "Ableton Sans Light", ",", "Ableton Sans Light Italic", ",", "Ableton Sans Medium", ",", "Ableton Sans Medium Italic", ",", "Ableton Sans Bold", ",", "Ableton Sans Bold Italic", ",", "Ableton Sans Bold Bold", ",", "Ableton Sans Bold", ",", "Ableton Sans Light Light", ",", "Ableton Sans Light", ",", "Ableton Sans Medium Medium", ",", "Ableton Sans Medium", ",", "Ableton Sans Small", ",", "Ableton Sans Small Regular Italic", ",", "Ableton Sans Small Bold", ",", "Ableton Sans Small Bold Italic", ",", "Academy Engraved LET Plain", ",", "Al Bayan Plain", ",", "Al Bayan Bold", ",", "Al Nile", ",", "Al Nile Bold", ",", "Al Tarikh", ",", "American Typewriter", ",", "American Typewriter Light", ",", "American Typewriter Semibold", ",", "American Typewriter Bold", ",", "American Typewriter Condensed", ",", "American Typewriter Condensed Light", ",", "American Typewriter Condensed Bold", ",", "Andale Mono", ",", "Apple Braille Outline 6 Dot", ",", "Apple Braille Outline 8 Dot", ",", "Apple Braille Pinpoint 6 Dot", ",", "Apple Braille Pinpoint 8 Dot", ",", "Apple Braille", ",", "Apple Chancery Chancery", ",", "Apple Color Emoji", ",", "Apple SD Gothic Neo", ",", "Apple SD Gothic Neo Thin", ",", "Apple SD Gothic Neo UltraLight", ",", "Apple SD Gothic Neo Light", ",", "Apple SD Gothic Neo Medium", ",", "Apple SD Gothic Neo SemiBold", ",", "Apple SD Gothic Neo Bold", ",", "Apple SD Gothic Neo ExtraBold", ",", "Apple SD Gothic Neo Heavy", ",", "Apple Symbols", ",", "AppleGothic", ",", "AppleMyungjo", ",", "Arial", ",", "Arial Italic", ",", "Arial Bold", ",", "Arial Bold Italic", ",", "Arial Black", ",", "Arial Hebrew", ",", "Arial Hebrew Light", ",", "Arial Hebrew Bold", ",", "Arial Hebrew Scholar", ",", "Arial Hebrew Scholar Light", ",", "Arial Hebrew Scholar Bold", ",", "Arial Narrow", ",", "Arial Narrow Italic", ",", "Arial Narrow Bold", ",", "Arial Narrow Bold Italic", ",", "Arial Rounded MT Bold", ",", "Arial Unicode MS", ",", "Avenir Book", ",", "Avenir Roman", ",", "Avenir Book Oblique", ",", "Avenir Oblique", ",", "Avenir Light", ",", "Avenir Light Oblique", ",", "Avenir Medium", ",", "Avenir Medium Oblique", ",", "Avenir Heavy", ",", "Avenir Heavy Oblique", ",", "Avenir Black", ",", "Avenir Black Oblique", ",", "Avenir Next", ",", "Avenir Next Italic", ",", "Avenir Next Ultra Light", ",", "Avenir Next Ultra Light Italic", ",", "Avenir Next Medium", ",", "Avenir Next Medium Italic", ",", "Avenir Next Demi Bold", ",", "Avenir Next Demi Bold Italic", ",", "Avenir Next Bold", ",", "Avenir Next Bold Italic", ",", "Avenir Next Heavy", ",", "Avenir Next Heavy Italic", ",", "Avenir Next Condensed", ",", "Avenir Next Condensed Italic", ",", "Avenir Next Condensed Ultra Light", ",", "Avenir Next Condensed Ultra Light Italic", ",", "Avenir Next Condensed Medium", ",", "Avenir Next Condensed Medium Italic", ",", "Avenir Next Condensed Demi Bold", ",", "Avenir Next Condensed Demi Bold Italic", ",", "Avenir Next Condensed Bold", ",", "Avenir Next Condensed Bold Italic", ",", "Avenir Next Condensed Heavy", ",", "Avenir Next Condensed Heavy Italic", ",", "Ayuthaya", ",", "Baghdad", ",", "Bangla MN", ",", "Bangla MN Bold", ",", "Bangla Sangam MN", ",", "Bangla Sangam MN Bold", ",", "Baskerville", ",", "Baskerville Italic", ",", "Baskerville SemiBold", ",", "Baskerville SemiBold Italic", ",", "Baskerville Bold", ",", "Baskerville Bold Italic", ",", "Beirut", ",", "Big Caslon Medium", ",", "Bodoni 72 Book", ",", "Bodoni 72 Book Italic", ",", "Bodoni 72 Bold", ",", "Bodoni 72 Oldstyle Book", ",", "Bodoni 72 Oldstyle Book Italic", ",", "Bodoni 72 Oldstyle Bold", ",", "Bodoni 72 Smallcaps Book", ",", "Bodoni Ornaments", ",", "Bradley Hand Bold", ",", "Brush Script MT Italic", ",", "Chalkboard", ",", "Chalkboard Bold", ",", "Chalkboard SE", ",", "Chalkboard SE Light", ",", "Chalkboard SE Bold", ",", "Chalkduster", ",", "Charter Roman", ",", "Charter Italic", ",", "Charter Bold", ",", "Charter Bold Italic", ",", "Charter Black", ",", "Charter Black Italic", ",", "Cochin", ",", "Cochin Italic", ",", "Cochin Bold", ",", "Cochin Bold Italic", ",", "Comic Sans MS", ",", "Comic Sans MS Bold", ",", "Copperplate", ",", "Copperplate Light", ",", "Copperplate Bold", ",", "Corsiva Hebrew", ",", "Corsiva Hebrew Bold", ",", "Courier New", ",", "Courier New Italic", ",", "Courier New Bold", ",", "Courier New Bold Italic", ",", "Damascus", ",", "Damascus Light", ",", "Damascus Medium", ",", "Damascus Semi Bold", ",", "Damascus Bold", ",", "DecoType Naskh", ",", "Devanagari MT", ",", "Devanagari MT Bold", ",", "Devanagari Sangam MN", ",", "Devanagari Sangam MN Bold", ",", "Didot", ",", "Didot Italic", ",", "Didot Bold", ",", "DIN Alternate Bold", ",", "DIN Condensed Bold", ",", "Diwan Kufi", ",", "Diwan Thuluth", ",", "Euphemia UCAS", ",", "Euphemia UCAS Italic", ",", "Euphemia UCAS Bold", ",", "Farah", ",", "Farisi", ",", "Futura Medium", ",", "Futura Medium Italic", ",", "Futura Bold", ",", "Futura Condensed Medium", ",", "Futura Condensed ExtraBold", ",", "Galvji", ",", "Galvji Oblique", ",", "Galvji Bold", ",", "Galvji Bold Oblique", ",", "GB18030 Bitmap", ",", "Geeza Pro", ",", "Geeza Pro Bold", ",", "Geneva", ",", "Georgia", ",", "Georgia Italic", ",", "Georgia Bold", ",", "Georgia Bold Italic", ",", "Gill Sans", ",", "Gill Sans Italic", ",", "Gill Sans Light", ",", "Gill Sans Light Italic", ",", "Gill Sans SemiBold", ",", "Gill Sans SemiBold Italic", ",", "Gill Sans Bold", ",", "Gill Sans Bold Italic", ",", "Gill Sans UltraBold", ",", "Grantha Sangam MN", ",", "Grantha Sangam MN Bold", ",", "Gujarati MT", ",", "Gujarati MT Bold", ",", "Gujarati Sangam MN", ",", "Gujarati Sangam MN Bold", ",", "Gurmukhi MN", ",", "Gurmukhi MN Bold", ",", "Gurmukhi MT", ",", "Gurmukhi Sangam MN", ",", "Gurmukhi Sangam MN Bold", ",", "Heiti SC Light", ",", "Heiti SC Medium", ",", "Heiti TC Light", ",", "Heiti TC Medium", ",", "Helvetica", ",", "Helvetica Oblique", ",", "Helvetica Light", ",", "Helvetica Light Oblique", ",", "Helvetica Bold", ",", "Helvetica Bold Oblique", ",", "Helvetica Neue", ",", "Helvetica Neue Italic", ",", "Helvetica Neue UltraLight", ",", "Helvetica Neue UltraLight Italic", ",", "Helvetica Neue Thin", ",", "Helvetica Neue Thin Italic", ",", "Helvetica Neue Light", ",", "Helvetica Neue Light Italic", ",", "Helvetica Neue Medium", ",", "Helvetica Neue Medium Italic", ",", "Helvetica Neue Bold", ",", "Helvetica Neue Bold Italic", ",", "Helvetica Neue Condensed Bold", ",", "Helvetica Neue Condensed Black", ",", "Herculanum", ",", "Hiragino Maru Gothic ProN W4", ",", "Hiragino Mincho ProN W3", ",", "Hiragino Mincho ProN W6", ",", "Hiragino Sans W0", ",", "Hiragino Sans W1", ",", "Hiragino Sans W2", ",", "Hiragino Sans W3", ",", "Hiragino Sans W4", ",", "Hiragino Sans W5", ",", "Hiragino Sans W6", ",", "Hiragino Sans W7", ",", "Hiragino Sans W8", ",", "Hiragino Sans W9", ",", "Hiragino Sans GB W3", ",", "Hiragino Sans GB W6", ",", "Hoefler Text", ",", "Hoefler Text Ornaments", ",", "Hoefler Text Italic", ",", "Hoefler Text Black", ",", "Hoefler Text Black Italic", ",", "Impact", ",", "InaiMathi", ",", "InaiMathi Bold", ",", "ITF Devanagari Book", ",", "ITF Devanagari Light", ",", "ITF Devanagari Medium", ",", "ITF Devanagari Demi", ",", "ITF Devanagari Bold", ",", "ITF Devanagari Marathi Book", ",", "ITF Devanagari Marathi Light", ",", "ITF Devanagari Marathi Medium", ",", "ITF Devanagari Marathi Demi", ",", "ITF Devanagari Marathi Bold", ",", "Kailasa", ",", "Kailasa Bold", ",", "Kannada MN", ",", "Kannada MN Bold", ",", "Kannada Sangam MN", ",", "Kannada Sangam MN Bold", ",", "Karla", ",", "Karla Italic", ",", "Karla ExtraLight", ",", "Karla ExtraLight Italic", ",", "Karla ExtraLight", ",", "Karla ExtraLight Italic", ",", "Karla Light", ",", "Karla Light", ",", "Karla Light Italic", ",", "Karla Light Italic", ",", "Karla Medium", ",", "Karla Medium", ",", "Karla Medium Italic", ",", "Karla Medium Italic", ",", "Karla SemiBold", ",", "Karla SemiBold Italic", ",", "Karla Bold", ",", "Karla Bold", ",", "Karla Bold Italic", ",", "Karla Bold Italic", ",", "Karla ExtraBold", ",", "Karla ExtraBold", ",", "Karla ExtraBold Italic", ",", "Karla ExtraBold Italic", ",", "Kefa III", ",", "Kefa III Light", ",", "Kefa III Bold", ",", "Kefa III ExtraBold", ",", "Khmer MN", ",", "Khmer MN Bold", ",", "Khmer Sangam MN", ",", "Kohinoor Bangla", ",", "Kohinoor Bangla Light", ",", "Kohinoor Bangla Medium", ",", "Kohinoor Bangla Semibold", ",", "Kohinoor Bangla Bold", ",", "Kohinoor Devanagari", ",", "Kohinoor Devanagari Light", ",", "Kohinoor Devanagari Medium", ",", "Kohinoor Devanagari Semibold", ",", "Kohinoor Devanagari Bold", ",", "Kohinoor Gujarati", ",", "Kohinoor Gujarati Light", ",", "Kohinoor Gujarati Medium", ",", "Kohinoor Gujarati Semibold", ",", "Kohinoor Gujarati Bold", ",", "Kohinoor Telugu", ",", "Kohinoor Telugu Light", ",", "Kohinoor Telugu Medium", ",", "Kohinoor Telugu Semibold", ",", "Kohinoor Telugu Bold", ",", "Kokonor", ",", "Krungthep", ",", "KufiStandardGK", ",", "Lao MN", ",", "Lao MN Bold", ",", "Lao Sangam MN", ",", "Lato", ",", "Lato Italic", ",", "Lato Hairline", ",", "Lato Hairline Italic", ",", "Lato Thin", ",", "Lato Thin Italic", ",", "Lato Light", ",", "Lato Light Italic", ",", "Lato Medium", ",", "Lato Medium Italic", ",", "Lato Semibold", ",", "Lato Semibold Italic", ",", "Lato Bold", ",", "Lato Bold Italic", ",", "Lato Heavy", ",", "Lato Heavy Italic", ",", "Lato Black", ",", "Lato Black Italic", ",", "Lucida Grande", ",", "Lucida Grande Bold", ",", "Luminari", ",", "Malayalam MN", ",", "Malayalam MN Bold", ",", "Malayalam Sangam MN", ",", "Malayalam Sangam MN Bold", ",", "Manrope", ",", "Manrope ExtraLight", ",", "Manrope Light", ",", "Manrope Medium", ",", "Manrope SemiBold", ",", "Manrope Bold", ",", "Manrope ExtraBold", ",", "Marker Felt Thin", ",", "Marker Felt Wide", ",", "Menlo", ",", "Menlo Italic", ",", "Menlo Bold", ",", "Menlo Bold Italic", ",", "Microsoft Sans Serif", ",", "Mishafi", ",", "Mishafi Gold", ",", "Monaco", ",", "Mshtakan", ",", "Mshtakan Oblique", ",", "Mshtakan Bold", ",", "Mshtakan BoldOblique", ",", "Mukta Mahee", ",", "Mukta Mahee ExtraLight", ",", "Mukta Mahee Light", ",", "Mukta Mahee Medium", ",", "Mukta Mahee SemiBold", ",", "Mukta Mahee Bold", ",", "Mukta Mahee ExtraBold", ",", "Muna", ",", "Muna Bold", ",", "Muna Black", ",", "Myanmar MN", ",", "Myanmar MN Bold", ",", "Myanmar Sangam MN", ",", "Myanmar Sangam MN Bold", ",", "Nadeem", ",", "Nasalization", ",", "New Peninim MT", ",", "New Peninim MT Inclined", ",", "New Peninim MT Bold", ",", "New Peninim MT Bold Inclined", ",", "Noteworthy Light", ",", "Noteworthy Bold", ",", "Noto Nastaliq Urdu", ",", "Noto Nastaliq Urdu Bold", ",", "Noto Sans Batak", ",", "Noto Sans Kannada", ",", "Noto Sans Kannada ExtraLight", ",", "Noto Sans Kannada Thin", ",", "Noto Sans Kannada Light", ",", "Noto Sans Kannada Medium", ",", "Noto Sans Kannada SemiBold", ",", "Noto Sans Kannada Bold", ",", "Noto Sans Kannada ExtraBold", ",", "Noto Sans Kannada Black", ",", "Noto Sans Myanmar", ",", "Noto Sans Myanmar ExtraLight", ",", "Noto Sans Myanmar Thin", ",", "Noto Sans Myanmar Light", ",", "Noto Sans Myanmar Medium", ",", "Noto Sans Myanmar SemiBold", ",", "Noto Sans Myanmar Bold", ",", "Noto Sans Myanmar ExtraBold", ",", "Noto Sans Myanmar Black", ",", "Noto Sans NKo", ",", "Noto Sans Oriya", ",", "Noto Sans Oriya Bold", ",", "Noto Sans Syriac", ",", "Noto Sans Syriac Thin", ",", "Noto Sans Syriac ExtraLight", ",", "Noto Sans Syriac Light", ",", "Noto Sans Syriac Medium", ",", "Noto Sans Syriac SemiBold", ",", "Noto Sans Syriac Bold", ",", "Noto Sans Syriac ExtraBold", ",", "Noto Sans Syriac Black", ",", "Noto Sans Tagalog", ",", "Noto Serif Myanmar", ",", "Noto Serif Myanmar ExtraLight", ",", "Noto Serif Myanmar Thin", ",", "Noto Serif Myanmar Light", ",", "Noto Serif Myanmar Medium", ",", "Noto Serif Myanmar SemiBold", ",", "Noto Serif Myanmar Bold", ",", "Noto Serif Myanmar ExtraBold", ",", "Noto Serif Myanmar Black", ",", "NYU Perstare", ",", "NYU Perstare", ",", "NYU Perstare Italic", ",", "NYU Perstare Italic", ",", "NYU Perstare Thin", ",", "NYU Perstare Thin Italic", ",", "NYU Perstare Light", ",", "NYU Perstare Light", ",", "NYU Perstare Light Italic", ",", "NYU Perstare Light Italic", ",", "NYU Perstare Medium", ",", "NYU Perstare Medium", ",", "NYU Perstare Medium Italic", ",", "NYU Perstare Medium Italic", ",", "NYU Perstare Bold", ",", "NYU Perstare Bold", ",", "NYU Perstare Bold Italic", ",", "NYU Perstare Bold Italic", ",", "NYU Perstare Black", ",", "NYU Perstare Black", ",", "NYU Perstare Black Italic", ",", "NYU Perstare Black Italic", ",", "NYU Perstare Ultra", ",", "NYU Perstare Ultra", ",", "NYU Perstare Ultra Italic", ",", "NYU Perstare Ultra Italic", ",", "NYU Perstare Condensed", ",", "NYU Perstare Condensed Italic", ",", "NYU Perstare Condensed Thin", ",", "NYU Perstare Condensed Thin Italic", ",", "NYU Perstare Condensed Light", ",", "NYU Perstare Condensed Light Italic", ",", "NYU Perstare Condensed Medium", ",", "NYU Perstare Condensed Medium Italic", ",", "NYU Perstare Condensed Bold", ",", "NYU Perstare Condensed Bold Italic", ",", "NYU Perstare Condensed Black", ",", "NYU Perstare Condensed Black Italic", ",", "NYU Perstare Condensed Ultra", ",", "NYU Perstare Condensed Ultra Italic", ",", "NYU Perstare Condensed", ",", "NYU Perstare Condensed Italic", ",", "NYU Perstare Condensed Light", ",", "NYU Perstare Condensed Light Italic", ",", "NYU Perstare Condensed Medium", ",", "NYU Perstare Condensed Medium Italic", ",", "NYU Perstare Condensed Bold", ",", "NYU Perstare Condensed Bold Italic", ",", "NYU Perstare Condensed Black", ",", "NYU Perstare Condensed Black Italic", ",", "NYU Perstare Condensed Ultra", ",", "NYU Perstare Condensed Ultra Italic", ",", "Optima", ",", "Optima Italic", ",", "Optima Bold", ",", "Optima Bold Italic", ",", "Optima ExtraBlack", ",", "Oriya MN", ",", "Oriya MN Bold", ",", "Oriya Sangam MN", ",", "Oriya Sangam MN Bold", ",", "Palatino", ",", "Palatino Italic", ",", "Palatino Bold", ",", "Palatino Bold Italic", ",", "Papyrus", ",", "Papyrus Condensed", ",", "Party LET Plain", ",", "Phosphate Inline", ",", "Phosphate Solid", ",", "PingFang HK", ",", "PingFang HK Ultralight", ",", "PingFang HK Thin", ",", "PingFang HK Light", ",", "PingFang HK Medium", ",", "PingFang HK Semibold", ",", "PingFang MO", ",", "PingFang MO Ultralight", ",", "PingFang MO Thin", ",", "PingFang MO Light", ",", "PingFang MO Medium", ",", "PingFang MO Semibold", ",", "PingFang SC", ",", "PingFang SC Ultralight", ",", "PingFang SC Thin", ",", "PingFang SC Light", ",", "PingFang SC Medium", ",", "PingFang SC Semibold", ",", "PingFang TC", ",", "PingFang TC Ultralight", ",", "PingFang TC Thin", ",", "PingFang TC Light", ",", "PingFang TC Medium", ",", "PingFang TC Semibold", ",", "Plantagenet Cherokee", ",", "Prata", ",", "PT Mono", ",", "PT Mono Bold", ",", "PT Sans", ",", "PT Sans Italic", ",", "PT Sans Bold", ",", "PT Sans Bold Italic", ",", "PT Sans Caption", ",", "PT Sans Caption Bold", ",", "PT Sans Narrow", ",", "PT Sans Narrow Bold", ",", "PT Serif", ",", "PT Serif Italic", ",", "PT Serif Bold", ",", "PT Serif Bold Italic", ",", "PT Serif Caption", ",", "PT Serif Caption Italic", ",", "Raanana", ",", "Raanana Bold", ",", "Rockwell", ",", "Rockwell Italic", ",", "Rockwell Bold", ",", "Rockwell Bold Italic", ",", "Sana", ",", "Sathu", ",", "Savoye LET Plain", ",", "Shree Devanagari 714", ",", "Shree Devanagari 714 Italic", ",", "Shree Devanagari 714 Bold", ",", "Shree Devanagari 714 Bold Italic", ",", "SignPainter HouseScript", ",", "SignPainter HouseScript Semibold", ",", "Silom", ",", "Sinhala MN", ",", "Sinhala MN Bold", ",", "Sinhala Sangam MN", ",", "Sinhala Sangam MN Bold", ",", "Skia", ",", "Skia Light", ",", "Skia Bold", ",", "Skia Black", ",", "Skia Extended", ",", "Skia Light Extended", ",", "Skia Black Extended", ",", "Skia Condensed", ",", "Skia Light Condensed", ",", "Skia Black Condensed", ",", "Snell Roundhand", ",", "Snell Roundhand Bold", ",", "Snell Roundhand Black", ",", "Songti SC", ",", "Songti SC Light", ",", "Songti SC Bold", ",", "Songti SC Black", ",", "Songti TC", ",", "Songti TC Light", ",", "Songti TC Bold", ",", "STIX Two Math", ",", "STIX Two Text", ",", "STIX Two Text Italic", ",", "STIX Two Text Medium", ",", "STIX Two Text Medium Italic", ",", "STIX Two Text SemiBold", ",", "STIX Two Text SemiBold Italic", ",", "STIX Two Text Bold", ",", "STIX Two Text Bold Italic", ",", "STSong", ",", "Sukhumvit Set Text", ",", "Sukhumvit Set Light", ",", "Sukhumvit Set Medium", ",", "Sukhumvit Set Semi Bold", ",", "Sukhumvit Set Bold", ",", "Sukhumvit Set Thin", ",", "Symbol", ",", "Tahoma", ",", "Tahoma Bold", ",", "Tamil MN", ",", "Tamil MN Bold", ",", "Tamil Sangam MN", ",", "Tamil Sangam MN Bold", ",", "Telugu MN", ",", "Telugu MN Bold", ",", "Telugu Sangam MN", ",", "Telugu Sangam MN Bold", ",", "Thonburi", ",", "Thonburi Light", ",", "Thonburi Bold", ",", "Times New Roman", ",", "Times New Roman Italic", ",", "Times New Roman Bold", ",", "Times New Roman Bold Italic", ",", "Trattatello", ",", "Trebuchet MS", ",", "Trebuchet MS Italic", ",", "Trebuchet MS Bold", ",", "Trebuchet MS Bold Italic", ",", "Verdana", ",", "Verdana Italic", ",", "Verdana Bold", ",", "Verdana Bold Italic", ",", "Waseem", ",", "Waseem Light", ",", "Webdings", ",", "Wingdings", ",", "Wingdings 2", ",", "Wingdings 3", ",", "Zapf Dingbats", ",", "Zapfino" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1723.0, 974.0, 139.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 210.0, 587.0, 139.0, 23.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Verdana",
                    "fontsize": 12.0,
                    "id": "obj-76",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1459.0930444002151, 1202.0832874774933, 215.0, 23.0 ],
                    "text": "jit.gl.text cards @layer 1 @align 1"
                }
            },
            {
                "box": {
                    "id": "obj-104",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 847.0, 226.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-89",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "jit_gl_texture", "bang", "" ],
                    "patching_rect": [ 965.0, 284.0, 498.0, 22.0 ],
                    "text": "jit.world cards @output_texture 1 @dim 768 988 @erase_color 0 0 0 1 @preserve_aspect 1"
                }
            },
            {
                "box": {
                    "id": "obj-107",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 302.0, 1391.0, 373.0, 22.0 ],
                    "text": "jit.gl.videoplane cards @preserve_aspect 1 @scale 1. 1. 1. @layer 0"
                }
            },
            {
                "box": {
                    "clipheight": 36.333333333333336,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/01river.mp4",
                                "filename": "01river.mp4",
                                "filekind": "moviefile",
                                "id": "u012009342",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/02lake.mp4",
                                "filename": "02lake.mp4",
                                "filekind": "moviefile",
                                "id": "u318009323",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/03mountain.mp4",
                                "filename": "03mountain.mp4",
                                "filekind": "moviefile",
                                "id": "u529009324",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/04rainbow.mp4",
                                "filename": "04rainbow.mp4",
                                "filekind": "moviefile",
                                "id": "u880009325",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/05fog.mp4",
                                "filename": "05fog.mp4",
                                "filekind": "moviefile",
                                "id": "u185009326",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/06stone.mp4",
                                "filename": "06stone.mp4",
                                "filekind": "moviefile",
                                "id": "u101009327",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/07dew.mp4",
                                "filename": "07dew.mp4",
                                "filekind": "moviefile",
                                "id": "u040009328",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/08dusk.mp4",
                                "filename": "08dusk.mp4",
                                "filekind": "moviefile",
                                "id": "u970009329",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/09marsh.mp4",
                                "filename": "09marsh.mp4",
                                "filekind": "moviefile",
                                "id": "u147009330",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/10maesltron.mp4",
                                "filename": "10maesltron.mp4",
                                "filekind": "moviefile",
                                "id": "u972009331",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/11night.mp4",
                                "filename": "11night.mp4",
                                "filekind": "moviefile",
                                "id": "u927009332",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/12wind.mp4",
                                "filename": "12wind.mp4",
                                "filekind": "moviefile",
                                "id": "u648009333",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/13desert.mp4",
                                "filename": "13desert.mp4",
                                "filekind": "moviefile",
                                "id": "u242009334",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/14dawn.mp4",
                                "filename": "14dawn.mp4",
                                "filekind": "moviefile",
                                "id": "u343009335",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/15bubble.mp4",
                                "filename": "15bubble.mp4",
                                "filekind": "moviefile",
                                "id": "u983009336",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/16ocean.mp4",
                                "filename": "16ocean.mp4",
                                "filekind": "moviefile",
                                "id": "u069009337",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/17solstice.mp4",
                                "filename": "17solstice.mp4",
                                "filekind": "moviefile",
                                "id": "u453009338",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/18spark.mp4",
                                "filename": "18spark.mp4",
                                "filekind": "moviefile",
                                "id": "u809009339",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/19valley.mp4",
                                "filename": "19valley.mp4",
                                "filekind": "moviefile",
                                "id": "u605009340",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            },
                            {
                                "absolutepath": "/Users/danielbelquer/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos/20storm.mp4",
                                "filename": "20storm.mp4",
                                "filekind": "moviefile",
                                "id": "u284009341",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "drawto": "",
                    "expansion": "grow",
                    "id": "obj-127",
                    "loop": 1,
                    "maxclass": "jit.playlist",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "jit_gl_texture", "", "dictionary" ],
                    "output_texture": 1,
                    "parameter_enable": 0,
                    "patching_rect": [ 302.0, 374.0, 551.0, 726.6666666666667 ],
                    "presentation": 1,
                    "presentation_rect": [ 460.0, 84.0, 383.0, 727.0 ],
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
                        }
                    }
                }
            },
            {
                "box": {
                    "attr": "enable_cornerpin",
                    "id": "obj-129",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1104.0, 245.0, 150.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 580.0, 47.0, 143.0, 22.0 ],
                    "text_width": 117.0
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "int", "int" ],
                    "patching_rect": [ 25.0, 172.0, 58.0, 22.0 ],
                    "text": "change 0"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 0,
                    "patching_rect": [ 1998.9582570791245, 652.0, 83.93738561868668, 22.0 ],
                    "text": "dac~ 1 3 4 2"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 25.0, 115.0, 82.0, 22.0 ],
                    "text": "route /apriltag"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 25.0, 57.0, 97.0, 22.0 ],
                    "text": "udpreceive 5001"
                }
            },
            {
                "box": {
                    "attr": "floating",
                    "id": "obj-94",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1104.0, 221.0, 150.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 580.0, 16.0, 100.0, 22.0 ],
                    "text_width": 76.0
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 0 ],
                    "midpoints": [ 1794.5, 792.0, 1758.0, 792.0, 1758.0, 753.0, 1705.7082682847977, 753.0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-89", 0 ],
                    "source": [ "obj-104", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-154", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 1 ],
                    "source": [ "obj-111", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 1472.5, 1104.0, 1458.0, 1104.0, 1458.0, 1188.0, 1468.5930444002151, 1188.0 ],
                    "source": [ "obj-115", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 3 ],
                    "source": [ "obj-123", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 6 ],
                    "source": [ "obj-124", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "source": [ "obj-127", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 4 ],
                    "source": [ "obj-128", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-89", 0 ],
                    "source": [ "obj-129", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-62", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 2 ],
                    "source": [ "obj-132", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 0 ],
                    "source": [ "obj-134", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 7 ],
                    "source": [ "obj-135", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 5 ],
                    "source": [ "obj-137", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-115", 0 ],
                    "source": [ "obj-138", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-51", 0 ],
                    "source": [ "obj-153", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-138", 0 ],
                    "midpoints": [ 1471.5, 804.0, 1472.5, 804.0 ],
                    "order": 5,
                    "source": [ "obj-154", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-221", 0 ],
                    "midpoints": [ 1471.5, 912.0, 1449.0, 912.0, 1449.0, 1056.0, 1509.618112663428, 1056.0 ],
                    "order": 4,
                    "source": [ "obj-154", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-330", 0 ],
                    "midpoints": [ 1471.5, 858.5, 1605.0, 858.5, 1605.0, 729.0, 1627.5, 729.0 ],
                    "order": 1,
                    "source": [ "obj-154", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "midpoints": [ 1471.5, 912.0, 1551.0930444002151, 912.0 ],
                    "order": 3,
                    "source": [ "obj-154", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "midpoints": [ 1471.5, 912.0, 1602.0, 912.0, 1602.0, 984.0, 1605.0753496289253, 984.0 ],
                    "order": 2,
                    "source": [ "obj-154", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-74", 0 ],
                    "midpoints": [ 1471.5, 912.0, 1602.0, 912.0, 1602.0, 958.015625, 1732.5, 958.015625 ],
                    "order": 0,
                    "source": [ "obj-154", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-266", 1 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-229", 0 ],
                    "source": [ "obj-174", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 0 ],
                    "midpoints": [ 147.5, 966.3046875, 123.0, 966.3046875, 123.0, 966.44140625, 48.0, 966.44140625, 48.0, 687.0, 70.5, 687.0 ],
                    "source": [ "obj-218", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-321", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 1482.9514459967613, 1188.0, 1468.5930444002151, 1188.0 ],
                    "source": [ "obj-220", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-220", 1 ],
                    "source": [ "obj-221", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "source": [ "obj-229", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 0 ],
                    "source": [ "obj-229", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "midpoints": [ 88.0, 674.3767836093903, 29.19607310509309, 674.3767836093903, 29.19607310509309, 931.1063175236341, 125.5, 931.1063175236341 ],
                    "source": [ "obj-229", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-23", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-23", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-266", 0 ],
                    "midpoints": [ 1782.5, 159.0, 1875.3828125, 159.0, 1875.3828125, 552.0, 2008.4582570791245, 552.0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "source": [ "obj-23", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-23", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-266", 0 ],
                    "source": [ "obj-234", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-246", 1 ],
                    "source": [ "obj-242", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-242", 0 ],
                    "source": [ "obj-243", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 3 ],
                    "source": [ "obj-245", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 2 ],
                    "source": [ "obj-245", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 1 ],
                    "source": [ "obj-245", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "source": [ "obj-245", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-234", 0 ],
                    "source": [ "obj-246", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-243", 0 ],
                    "source": [ "obj-255", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-255", 0 ],
                    "source": [ "obj-257", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-257", 0 ],
                    "source": [ "obj-259", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-300", 0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-259", 0 ],
                    "source": [ "obj-262", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-263", 0 ],
                    "source": [ "obj-262", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-263", 0 ],
                    "source": [ "obj-262", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-266", 0 ],
                    "midpoints": [ 1903.2499277591705, 252.0, 1983.0, 252.0, 1983.0, 552.0, 2008.4582570791245, 552.0 ],
                    "source": [ "obj-262", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-271", 0 ],
                    "source": [ "obj-262", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-267", 0 ],
                    "source": [ "obj-263", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-262", 0 ],
                    "source": [ "obj-265", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-245", 0 ],
                    "source": [ "obj-266", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-268", 0 ],
                    "source": [ "obj-267", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-266", 1 ],
                    "source": [ "obj-268", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-246", 0 ],
                    "source": [ "obj-271", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 0 ],
                    "source": [ "obj-293", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-293", 0 ],
                    "order": 0,
                    "source": [ "obj-295", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-316", 0 ],
                    "order": 1,
                    "source": [ "obj-295", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-246", 0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-301", 0 ],
                    "source": [ "obj-300", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "source": [ "obj-300", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-295", 0 ],
                    "source": [ "obj-301", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-301", 0 ],
                    "source": [ "obj-303", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-303", 0 ],
                    "source": [ "obj-306", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-311", 0 ],
                    "source": [ "obj-308", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-303", 0 ],
                    "source": [ "obj-312", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-127", 0 ],
                    "midpoints": [ 483.5, 360.0, 311.5, 360.0 ],
                    "source": [ "obj-32", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 0 ],
                    "source": [ "obj-32", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "midpoints": [ 569.5, 279.0, 311.5, 279.0 ],
                    "source": [ "obj-32", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-321", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-262", 0 ],
                    "source": [ "obj-321", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-255", 0 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-334", 0 ],
                    "source": [ "obj-330", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-91", 0 ],
                    "source": [ "obj-331", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-331", 2 ],
                    "order": 0,
                    "source": [ "obj-333", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-331", 1 ],
                    "order": 1,
                    "source": [ "obj-333", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-331", 0 ],
                    "order": 2,
                    "source": [ "obj-333", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-331", 2 ],
                    "order": 0,
                    "source": [ "obj-334", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-331", 1 ],
                    "order": 1,
                    "source": [ "obj-334", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-331", 0 ],
                    "order": 2,
                    "source": [ "obj-334", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-333", 0 ],
                    "source": [ "obj-334", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-293", 1 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 1229.458282828331, 1188.0, 1468.5930444002151, 1188.0 ],
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 1497.110739171505, 1056.0, 1458.0, 1056.0, 1458.0, 1188.0, 1468.5930444002151, 1188.0 ],
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-308", 0 ],
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 1 ],
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 2 ],
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-127", 0 ],
                    "source": [ "obj-48", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-65", 0 ],
                    "midpoints": [ 105.5, 801.2713958919048, 70.5, 801.2713958919048 ],
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 0 ],
                    "source": [ "obj-50", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "midpoints": [ 1744.7082682847977, 611.577689409256, 1705.7082682847977, 611.577689409256 ],
                    "source": [ "obj-51", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 0 ],
                    "midpoints": [ 1725.2082682847977, 601.32421875, 1686.0, 601.32421875, 1686.0, 753.0, 1705.7082682847977, 753.0 ],
                    "source": [ "obj-51", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-127", 0 ],
                    "source": [ "obj-52", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-65", 0 ],
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "source": [ "obj-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-55", 0 ],
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-104", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
                    "source": [ "obj-60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-57", 0 ],
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-62", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "order": 2,
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-60", 0 ],
                    "order": 1,
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "order": 0,
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-63", 0 ],
                    "source": [ "obj-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-93", 0 ],
                    "midpoints": [ 151.5, 855.0, 125.5, 855.0 ],
                    "source": [ "obj-65", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 1509.2180428504944, 1188.0, 1468.5930444002151, 1188.0 ],
                    "source": [ "obj-67", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-69", 0 ],
                    "hidden": 1,
                    "source": [ "obj-68", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-72", 0 ],
                    "source": [ "obj-69", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-89", 0 ],
                    "source": [ "obj-70", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-331", 3 ],
                    "order": 1,
                    "source": [ "obj-71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-333", 1 ],
                    "order": 0,
                    "source": [ "obj-71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-74", 0 ],
                    "source": [ "obj-72", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 1732.5, 1188.0, 1468.5930444002151, 1188.0 ],
                    "source": [ "obj-73", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-97", 0 ],
                    "midpoints": [ 1792.5, 996.0, 1732.5, 996.0 ],
                    "source": [ "obj-74", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-111", 0 ],
                    "midpoints": [ 912.0, 120.0, 1001.5, 120.0 ],
                    "order": 6,
                    "source": [ "obj-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-123", 0 ],
                    "midpoints": [ 912.0, 120.0, 1054.5, 120.0 ],
                    "order": 4,
                    "source": [ "obj-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-124", 0 ],
                    "midpoints": [ 912.0, 120.0, 1181.5, 120.0 ],
                    "order": 0,
                    "source": [ "obj-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 0 ],
                    "midpoints": [ 912.0, 120.0, 1129.5, 120.0 ],
                    "order": 2,
                    "source": [ "obj-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-132", 0 ],
                    "midpoints": [ 912.0, 78.0, 987.0, 78.0, 987.0, 75.0, 1052.5, 75.0 ],
                    "order": 5,
                    "source": [ "obj-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-134", 0 ],
                    "midpoints": [ 912.0, 78.0, 987.0, 78.0, 987.0, 75.0, 1001.5, 75.0 ],
                    "order": 7,
                    "source": [ "obj-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-135", 0 ],
                    "midpoints": [ 912.0, 114.0, 1107.0, 114.0, 1107.0, 66.0, 1181.5, 66.0 ],
                    "order": 1,
                    "source": [ "obj-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-137", 0 ],
                    "midpoints": [ 912.0, 114.0, 1107.0, 114.0, 1107.0, 75.0, 1129.5, 75.0 ],
                    "order": 3,
                    "source": [ "obj-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-88", 3 ],
                    "order": 0,
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-88", 2 ],
                    "order": 1,
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-88", 1 ],
                    "order": 2,
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-75", 0 ],
                    "source": [ "obj-80", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-218", 0 ],
                    "source": [ "obj-86", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-86", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 0 ],
                    "source": [ "obj-88", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "source": [ "obj-89", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-65", 4 ],
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 1 ],
                    "source": [ "obj-90", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 1627.214731156826, 972.0, 1530.0, 972.0, 1530.0, 990.0, 1458.0, 990.0, 1458.0, 1188.0, 1468.5930444002151, 1188.0 ],
                    "source": [ "obj-91", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-86", 0 ],
                    "source": [ "obj-93", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-89", 0 ],
                    "source": [ "obj-94", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-154", 0 ],
                    "source": [ "obj-96", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-73", 0 ],
                    "source": [ "obj-97", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-111": [ "number[2]", "number[2]", 0 ],
            "obj-123": [ "number[3]", "number[3]", 0 ],
            "obj-124": [ "number[8]", "number[8]", 0 ],
            "obj-128": [ "number[4]", "number[4]", 0 ],
            "obj-132": [ "number[6]", "number[6]", 0 ],
            "obj-134": [ "number[5]", "number[5]", 0 ],
            "obj-135": [ "number[9]", "number[9]", 0 ],
            "obj-137": [ "number[7]", "number[7]", 0 ],
            "obj-234": [ "mc.live.gain~", "mc.live.gain~", 0 ],
            "obj-3::obj-45": [ "slider8", "ch", 0 ],
            "obj-3::obj-47": [ "slider7", "ch", 0 ],
            "obj-3::obj-48": [ "slider8[1]", "ch", 0 ],
            "obj-3::obj-50": [ "slider6", "ch", 0 ],
            "obj-3::obj-51": [ "slider7[1]", "ch", 0 ],
            "obj-3::obj-52": [ "slider6[1]", "ch", 0 ],
            "obj-3::obj-53": [ "slider5[1]", "ch", 0 ],
            "obj-3::obj-68": [ "slider5", "ch", 0 ],
            "obj-3::obj-69": [ "slider4", "ch", 0 ],
            "obj-59": [ "live.slider[6]", "brightness", 0 ],
            "obj-60": [ "live.slider[7]", "contrast", 0 ],
            "obj-61": [ "live.slider[8]", "saturation", 0 ],
            "obj-8": [ "live.slider", "fadeInOut", 0 ],
            "obj-9": [ "number[1]", "number", 0 ],
            "obj-90": [ "number", "number", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "toolbaradditions": [ "Data Knot", "ABL Effect Modules", "AudioMix" ]
    }
}