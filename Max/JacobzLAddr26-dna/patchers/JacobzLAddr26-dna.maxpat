{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 134.0, 167.0, 965.0, 642.0 ],
        "openinpresentation": 1,
        "showontab": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1458.0, 147.0, 29.5, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1458.0, 117.0, 54.0, 22.0 ],
                    "text": "r START"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "linecount": 21,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1998.0, 113.0, 150.0, 288.0 ],
                    "text": "1, rio;\n2, lago;\n3, montanha;\n4, arco-íris;\n5, névoa;\n6, pedra;\n7, orvalho;\n8, crepúsculo;\n9, pântano;\n10, redemoinho;\n11, noite;\n12, vento;\n13, deserto;\n14, alvorada;\n15, bolha;\n16, oceano;\n17, solstício;\n18, faísca;\n19, vale;\n20, tempestade;\n21, \"CARTA REPETIDA\";"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.8549019607843137, 0.0, 0.0, 1.0 ],
                    "id": "obj-201",
                    "maxclass": "live.text",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 2095.0, 425.0, 44.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 205.0, 373.0, 44.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "live.text[4]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.text",
                            "parameter_type": 2
                        }
                    },
                    "text": "",
                    "texton": "",
                    "varname": "live.text[4]"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.0, 0.854901960784314, 0.282352941176471, 1.0 ],
                    "id": "obj-199",
                    "maxclass": "live.text",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 2035.0, 425.0, 44.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 205.0, 392.0, 44.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": "themecolor.live_macro_assignment"
                        },
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "live.text[3]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.text",
                            "parameter_type": 2
                        }
                    },
                    "text": "",
                    "texton": "",
                    "varname": "live.text[3]"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.262745098039216, 0.568627450980392, 0.901960784313726, 1.0 ],
                    "id": "obj-194",
                    "maxclass": "live.text",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1897.0, 425.0, 44.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 205.0, 411.0, 44.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": "themecolor.live_freeze_color"
                        },
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "live.text[2]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.text",
                            "parameter_type": 2
                        }
                    },
                    "text": "",
                    "texton": "",
                    "varname": "live.text[2]"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-193",
                    "maxclass": "live.text",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1848.0, 425.0, 44.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 205.0, 337.0, 44.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "live.text[1]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.text",
                            "parameter_type": 2
                        }
                    },
                    "text": "",
                    "texton": "",
                    "varname": "live.text[1]"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "id": "obj-192",
                    "maxclass": "live.text",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1972.0, 425.0, 44.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 205.0, 355.0, 44.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "live.text",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.text",
                            "parameter_type": 2
                        }
                    },
                    "text": "",
                    "texton": "",
                    "varname": "live.text"
                }
            },
            {
                "box": {
                    "id": "obj-186",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 847.0, 880.0, 335.0, 33.0 ],
                    "text": "[master 0.25]              → [v8 dna_frame.js]\n[setall 0 255 255 255, bang] → [jit.matrix dna 3 char 213 1 …]"
                }
            },
            {
                "box": {
                    "id": "obj-130",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1972.0, 483.0, 150.0, 22.0 ],
                    "text": "setall 0 255 255 255, bang"
                }
            },
            {
                "box": {
                    "id": "obj-118",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 233.0, 36.0, 150.0, 47.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 275.0, 27.0, 307.0, 20.0 ],
                    "text": "*****CONNECT TO ESP32-CAM wireless network first!!!"
                }
            },
            {
                "box": {
                    "id": "obj-96",
                    "linecount": 13,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 86.0, 388.0, 150.0, 181.0 ],
                    "presentation": 1,
                    "presentation_linecount": 7,
                    "presentation_rect": [ 189.0, 564.0, 462.0, 100.0 ],
                    "text": "TODO:\npresets para cada luz\ntexto repeated card (carta repetida) muda a cor conforme a carta para mais contraste\nCriar projeção do final\nbotão on off\nelevar espcam, colocar buraco em tampa só com lente para esconder eletrônicos\nmontar caixa de descarte"
                }
            },
            {
                "box": {
                    "id": "obj-276",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 224.5, 286.0, 81.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 191.75341260433197, 72.0, 81.0, 20.0 ],
                    "text": "camera pulse"
                }
            },
            {
                "box": {
                    "id": "obj-274",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 2243.835453271866, 405.4794225692749, 48.0, 22.0 ],
                    "text": "del 100"
                }
            },
            {
                "box": {
                    "id": "obj-271",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2337.75, 439.8424748182297, 29.5, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-270",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2337.75, 405.59590196609497, 93.0, 22.0 ],
                    "text": "r selected_Card"
                }
            },
            {
                "box": {
                    "id": "obj-268",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1119.1780008077621, 75.34246027469635, 55.0, 22.0 ],
                    "text": "pipe 100"
                }
            },
            {
                "box": {
                    "id": "obj-265",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 342.0, 575.9000000000001, 71.0, 22.0 ],
                    "text": "routepass 0"
                }
            },
            {
                "box": {
                    "id": "obj-248",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 309.0, 284.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 165.75341260433197, 72.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-232",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "int", "int", "bang", "bang" ],
                    "patching_rect": [ 1415.0, 993.1506127119064, 93.931609749794, 22.0 ],
                    "text": "t 21 21 b b"
                }
            },
            {
                "box": {
                    "id": "obj-214",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 394.0, 685.0, 34.0, 22.0 ],
                    "text": "sel 0"
                }
            },
            {
                "box": {
                    "id": "obj-213",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 394.0, 642.0, 33.0, 22.0 ],
                    "text": "== 1"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "linecount": 21,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1815.0683611631393, 117.0, 150.0, 288.0 ],
                    "text": "1, river;\r2, lake;\r3, mountain;\r4, rainbow;\r5, fog;\r6, stone;\r7, dew;\r8, dusk;\r9, marsh;\r10, maelstron;\r11, night;\r12, wind;\r13, desert;\r14, dawn;\r15, bubble;\r16, ocean;\r17, solstice;\r18, spark;\r19, valley;\r20, storm;\r21, \"REPEATED CARD\";"
                }
            },
            {
                "box": {
                    "id": "obj-188",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1490.0, 1116.0, 65.0, 22.0 ],
                    "text": "0., 1. 1000"
                }
            },
            {
                "box": {
                    "id": "obj-133",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1227.0, 239.0, 31.0, 22.0 ],
                    "text": "stop"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1227.0, 194.0, 48.0, 22.0 ],
                    "text": "del 100"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-172",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1783.0, 821.0, 101.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 415.0, 301.0, 101.0, 20.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.live_meter_bg"
                        }
                    },
                    "text": "DNA LED Lights",
                    "textcolor": [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-163",
                    "maxclass": "live.slider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 792.0, 528.0, 39.0, 95.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 596.800008893013, 428.8000063896179, 39.0, 95.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 1 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.slider[10]",
                            "parameter_mmax": 5.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "contrast",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "live.slider[11]"
                }
            },
            {
                "box": {
                    "id": "obj-165",
                    "maxclass": "live.slider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 731.0, 528.0, 51.0, 95.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 544.0000081062317, 428.8000063896179, 51.0, 95.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 1 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.slider[11]",
                            "parameter_mmax": 3.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "brightness",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "live.slider[12]"
                }
            },
            {
                "box": {
                    "id": "obj-162",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 731.0, 638.0, 111.0, 22.0 ],
                    "text": "prepend brightness"
                }
            },
            {
                "box": {
                    "id": "obj-161",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 792.0, 671.0, 99.0, 22.0 ],
                    "text": "prepend contrast"
                }
            },
            {
                "box": {
                    "id": "obj-117",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1253.0, 774.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-114",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1253.0, 801.0, 32.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 211.0, 461.0, 32.0, 22.0 ],
                    "text": "print"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-110",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 0.0, 26.0, 965.0, 616.0 ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 921.0, 113.0, 29.5, 22.0 ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 921.0, 85.0, 54.0, 22.0 ],
                                    "text": "r START"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 564.0, 113.0, 29.5, 22.0 ],
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
                                    "patching_rect": [ 564.0, 85.0, 93.0, 22.0 ],
                                    "text": "r selected_Card"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "lastchannelcount": 0,
                                    "maxclass": "live.gain~",
                                    "numinlets": 2,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 266.0, 423.0, 48.0, 136.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_longname": "live.gain~[4]",
                                            "parameter_mmax": 6.0,
                                            "parameter_mmin": -70.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "live.gain~[4]",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 4
                                        }
                                    },
                                    "varname": "live.gain~[4]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-49",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 0,
                                    "patching_rect": [ 666.0, 362.0, 83.93738561868668, 22.0 ],
                                    "text": "dac~ 1 3 4 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1011.0, 362.0, 83.93738561868668, 22.0 ],
                                    "text": "dac~ 1 3 4 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-190",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 0,
                                    "patching_rect": [ 833.0, 362.0, 83.93738561868668, 22.0 ],
                                    "text": "dac~ 1 3 4 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-189",
                                    "lastchannelcount": 0,
                                    "maxclass": "live.gain~",
                                    "numinlets": 2,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 833.0, 197.0, 48.0, 136.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_longname": "live.gain~[3]",
                                            "parameter_mmax": 6.0,
                                            "parameter_mmin": -70.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "live.gain~",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 4
                                        }
                                    },
                                    "varname": "live.gain~[3]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-188",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 833.0, 113.0, 29.5, 22.0 ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "clipheight": 39.0,
                                    "data": {
                                        "clips": [
                                            {
                                                "absolutepath": "Chimes_end_Prep.mp3",
                                                "filename": "Chimes_end_Prep.mp3",
                                                "filekind": "audiofile",
                                                "id": "u608013046",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            }
                                        ]
                                    },
                                    "id": "obj-186",
                                    "maxclass": "playlist~",
                                    "mode": "basic",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 833.0, 143.0, 137.33300590515137, 39.0 ],
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
                                    "id": "obj-182",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 495.0, 113.0, 29.5, 22.0 ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-180",
                                    "lastchannelcount": 0,
                                    "maxclass": "live.gain~",
                                    "numinlets": 2,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 495.0, 197.0, 48.0, 136.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_longname": "live.gain~[2]",
                                            "parameter_mmax": 6.0,
                                            "parameter_mmin": -70.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "live.gain~",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 4
                                        }
                                    },
                                    "varname": "live.gain~[2]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-179",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 0,
                                    "patching_rect": [ 495.0, 362.0, 83.93738561868668, 22.0 ],
                                    "text": "dac~ 1 3 4 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-178",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 495.0, 85.0, 54.0, 22.0 ],
                                    "text": "r START"
                                }
                            },
                            {
                                "box": {
                                    "clipheight": 35.0,
                                    "data": {
                                        "clips": [
                                            {
                                                "absolutepath": "AlujaTechno.mp3",
                                                "filename": "AlujaTechno.mp3",
                                                "filekind": "audiofile",
                                                "id": "u337003859",
                                                "selection": [ 0.021052631578947368, 0.9473684210526315 ],
                                                "loop": 1,
                                                "content_state": {
                                                    "loop": 1
                                                }
                                            }
                                        ]
                                    },
                                    "id": "obj-167",
                                    "maxclass": "playlist~",
                                    "mode": "basic",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 495.0, 146.0, 135.0, 36.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 1386.0, 151.0, 150.0, 30.0 ],
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
                                    "id": "obj-165",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1011.0, 113.0, 29.5, 22.0 ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-163",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1011.0, 85.0, 36.0, 22.0 ],
                                    "text": "r end"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-162",
                                    "lastchannelcount": 0,
                                    "maxclass": "live.gain~",
                                    "numinlets": 2,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1011.0, 197.0, 48.0, 136.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_longname": "live.gain~[1]",
                                            "parameter_mmax": 6.0,
                                            "parameter_mmin": -70.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "live.gain~",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 4
                                        }
                                    },
                                    "varname": "live.gain~[1]"
                                }
                            },
                            {
                                "box": {
                                    "clipheight": 38.0,
                                    "data": {
                                        "clips": [
                                            {
                                                "absolutepath": "Desejo.mp3",
                                                "filename": "Desejo.mp3",
                                                "filekind": "audiofile",
                                                "id": "u652003351",
                                                "selection": [ 0.02142857142857143, 1.0 ],
                                                "loop": 0,
                                                "content_state": {                                                }
                                            }
                                        ]
                                    },
                                    "id": "obj-161",
                                    "maxclass": "playlist~",
                                    "mode": "basic",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 1011.0, 143.0, 159.0, 39.0 ],
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
                                    "id": "obj-117",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 666.0, 113.0, 29.5, 22.0 ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-114",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 666.0, 85.0, 84.0, 22.0 ],
                                    "text": "r filter_Repeat"
                                }
                            },
                            {
                                "box": {
                                    "clipheight": 39.0,
                                    "data": {
                                        "clips": [
                                            {
                                                "absolutepath": "vibes-a1.aif",
                                                "filename": "vibes-a1.aif",
                                                "filekind": "audiofile",
                                                "id": "u303007653",
                                                "loop": 0,
                                                "content_state": {                                                }
                                            }
                                        ]
                                    },
                                    "id": "obj-113",
                                    "maxclass": "playlist~",
                                    "mode": "basic",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 667.0, 143.0, 133.33300590515137, 39.0 ],
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
                                    "id": "obj-110",
                                    "lastchannelcount": 0,
                                    "maxclass": "live.gain~",
                                    "numinlets": 2,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 666.0, 197.0, 48.0, 136.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_longname": "live.gain~",
                                            "parameter_mmax": 6.0,
                                            "parameter_mmin": -70.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "live.gain~",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 4
                                        }
                                    },
                                    "varname": "live.gain~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-317",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 833.0, 85.0, 68.0, 22.0 ],
                                    "text": "r prep_End"
                                }
                            },
                            {
                                "box": {
                                    "clipheight": 91.0,
                                    "data": {
                                        "clips": [
                                            {
                                                "absolutepath": "interference.mp3",
                                                "filename": "interference.mp3",
                                                "filekind": "audiofile",
                                                "id": "u115010533",
                                                "loop": 0,
                                                "content_state": {                                                }
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
                                    "patching_rect": [ 154.0, 182.0, 150.0, 92.0 ],
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
                                    "patching_rect": [ 84.0, 213.0, 65.0, 22.0 ],
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
                                    "patching_rect": [ 84.0, 269.0, 41.0, 22.0 ],
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
                                    "patching_rect": [ 154.0, 568.0, 53.0, 22.0 ],
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
                                    "patching_rect": [ 110.0, 72.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-263",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 84.0, 177.0, 55.0, 22.0 ],
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
                                    "patching_rect": [ 49.0, 112.0, 159.0, 22.0 ],
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
                                    "patching_rect": [ 339.0, 182.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-257",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 339.0, 217.0, 65.0, 22.0 ],
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
                                    "patching_rect": [ 339.0, 248.0, 41.0, 22.0 ],
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
                                    "patching_rect": [ 339.0, 320.0, 50.0, 22.0 ],
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
                                    "patching_rect": [ 339.0, 281.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-245",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "signal", "signal", "signal", "signal" ],
                                    "patching_rect": [ 154.0, 607.0, 84.0, 22.0 ],
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
                                    "patching_rect": [ 154.0, 361.0, 204.0, 22.0 ],
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
                                    "patching_rect": [ 154.0, 398.0, 48.0, 136.0 ],
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
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 49.0, 35.0, 93.0, 22.0 ],
                                    "text": "r selected_Card"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 0,
                                    "patching_rect": [ 154.0, 657.0, 83.93738561868668, 22.0 ],
                                    "text": "dac~ 1 3 4 2"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 1 ],
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-49", 3 ],
                                    "order": 0,
                                    "source": [ "obj-110", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-49", 2 ],
                                    "order": 1,
                                    "source": [ "obj-110", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-49", 1 ],
                                    "order": 0,
                                    "source": [ "obj-110", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-49", 0 ],
                                    "order": 1,
                                    "source": [ "obj-110", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-110", 1 ],
                                    "source": [ "obj-113", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-110", 0 ],
                                    "source": [ "obj-113", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-117", 0 ],
                                    "source": [ "obj-114", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-113", 0 ],
                                    "source": [ "obj-117", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-162", 1 ],
                                    "source": [ "obj-161", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-162", 0 ],
                                    "source": [ "obj-161", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 3 ],
                                    "order": 0,
                                    "source": [ "obj-162", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 2 ],
                                    "order": 1,
                                    "source": [ "obj-162", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "order": 0,
                                    "source": [ "obj-162", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "order": 1,
                                    "source": [ "obj-162", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-165", 0 ],
                                    "source": [ "obj-163", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-161", 0 ],
                                    "source": [ "obj-165", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-180", 1 ],
                                    "source": [ "obj-167", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-180", 0 ],
                                    "source": [ "obj-167", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-182", 0 ],
                                    "source": [ "obj-178", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-179", 3 ],
                                    "order": 0,
                                    "source": [ "obj-180", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-179", 2 ],
                                    "order": 1,
                                    "source": [ "obj-180", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-179", 1 ],
                                    "order": 0,
                                    "source": [ "obj-180", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-179", 0 ],
                                    "order": 1,
                                    "source": [ "obj-180", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-167", 0 ],
                                    "source": [ "obj-182", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-189", 1 ],
                                    "source": [ "obj-186", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-189", 0 ],
                                    "source": [ "obj-186", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-186", 0 ],
                                    "source": [ "obj-188", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-190", 3 ],
                                    "order": 0,
                                    "source": [ "obj-189", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-190", 2 ],
                                    "order": 1,
                                    "source": [ "obj-189", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-190", 1 ],
                                    "order": 0,
                                    "source": [ "obj-189", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-190", 0 ],
                                    "order": 1,
                                    "source": [ "obj-189", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-262", 0 ],
                                    "source": [ "obj-22", 0 ]
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
                                    "destination": [ "obj-259", 0 ],
                                    "midpoints": [ 128.5, 162.0, 348.5, 162.0 ],
                                    "source": [ "obj-262", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-263", 0 ],
                                    "midpoints": [ 198.5, 148.20703125, 93.5, 148.20703125 ],
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
                                    "midpoints": [ 58.5, 255.0, 152.39587706327438, 255.0, 152.39587706327438, 563.3125, 163.5, 563.3125 ],
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
                                    "midpoints": [ 93.5, 545.70703125, 197.5, 545.70703125 ],
                                    "source": [ "obj-268", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "order": 0,
                                    "source": [ "obj-271", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-246", 0 ],
                                    "order": 1,
                                    "source": [ "obj-271", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-188", 0 ],
                                    "source": [ "obj-317", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-167", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-186", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 51.0, 41.0, 105.0, 22.0 ],
                    "style": "redness",
                    "text": "p AUDIO_CARDS"
                }
            },
            {
                "box": {
                    "id": "obj-200",
                    "maxclass": "playbar",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "int" ],
                    "patching_rect": [ 1416.0, 284.0, 320.0, 16.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 321.0, 125.0, 177.0, 16.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-197",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 543.0, 413.0, 93.0, 22.0 ],
                    "text": "r selected_Card"
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_gl_texture", "" ],
                    "patching_rect": [ 2291.0, 723.0, 70.0, 22.0 ],
                    "text": "jit.gl.texture"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1376.0, 239.0, 49.0, 22.0 ],
                    "text": "read $1"
                }
            },
            {
                "box": {
                    "autopopulate": 1,
                    "id": "obj-38",
                    "items": [ "00START.mp4", ",", "01river.mov", ",", "02lake.mov", ",", "03mountain.mov", ",", "04rainbow.mov", ",", "05fog.mov", ",", "06stone.mov", ",", "07dew.mov", ",", "08dusk.mov", ",", "09marsh.mov", ",", "10maesltron.mov", ",", "11night.mov", ",", "12wind.mov", ",", "13desert.mov", ",", "14dawn.mov", ",", "15bubble.mov", ",", "16ocean.mov", ",", "17solstice.mov", ",", "18spark.mov", ",", "19valley.mov", ",", "20storm.mov" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1335.0, 194.0, 100.0, 22.0 ],
                    "prefix": "~/CODE/GitHub/jacobz_laddr26/Jacobz Laddr Cards/Cards Videos ProRes/",
                    "presentation": 1,
                    "presentation_rect": [ 552.0, 94.0, 171.2000025510788, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "linecount": 6,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 232.66667938232422, 48.0, 252.0, 100.0 ],
                    "text": "TO DO:\n- clean patch and presentation mode\n- introduce audible alarm when camera is off (Python)\n- create a midi button on ipad/sl73 for ending the show whenever\n"
                }
            },
            {
                "box": {
                    "id": "obj-198",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2243.835453271866, 439.8424748182297, 29.5, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-196",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2243.835453271866, 365.75339806079865, 54.0, 22.0 ],
                    "text": "r START"
                }
            },
            {
                "box": {
                    "id": "obj-195",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 525.0, 695.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-184",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 525.0, 583.0, 70.0, 22.0 ],
                    "text": "s prep_End"
                }
            },
            {
                "box": {
                    "id": "obj-183",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 525.0, 550.0, 41.0, 22.0 ],
                    "text": "sel 20"
                }
            },
            {
                "box": {
                    "id": "obj-177",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 635.0, 542.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-175",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "int" ],
                    "patching_rect": [ 584.0, 695.0, 32.0, 22.0 ],
                    "text": "t b 0"
                }
            },
            {
                "box": {
                    "id": "obj-158",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1407.5, 147.0, 29.5, 22.0 ],
                    "text": "21"
                }
            },
            {
                "box": {
                    "id": "obj-156",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1407.5, 117.0, 36.0, 22.0 ],
                    "text": "r end"
                }
            },
            {
                "box": {
                    "id": "obj-155",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 584.0, 746.0, 38.0, 22.0 ],
                    "text": "s end"
                }
            },
            {
                "box": {
                    "id": "obj-152",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "int", "", "", "int" ],
                    "patching_rect": [ 525.0, 657.0, 78.0, 22.0 ],
                    "text": "counter 60"
                }
            },
            {
                "box": {
                    "id": "obj-148",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 635.0, 579.0, 69.0, 22.0 ],
                    "text": "metro 1000"
                }
            },
            {
                "box": {
                    "id": "obj-147",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 635.0, 502.0, 22.0, 22.0 ],
                    "text": "t 1"
                }
            },
            {
                "box": {
                    "id": "obj-143",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 525.0, 518.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-139",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 525.0, 370.0, 38.0, 22.0 ],
                    "text": "jam 0"
                }
            },
            {
                "box": {
                    "id": "obj-125",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "int", "", "", "int" ],
                    "patching_rect": [ 525.0, 465.0, 128.0, 22.0 ],
                    "text": "counter 20"
                }
            },
            {
                "box": {
                    "id": "obj-122",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 939.0, 1274.0, 77.0, 22.0 ],
                    "text": "route symbol"
                }
            },
            {
                "box": {
                    "id": "obj-121",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1415.0, 953.4245882034302, 84.0, 22.0 ],
                    "text": "r filter_Repeat"
                }
            },
            {
                "box": {
                    "id": "obj-108",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "clear" ],
                    "patching_rect": [ 341.0, 370.0, 51.0, 22.0 ],
                    "text": "t b clear"
                }
            },
            {
                "box": {
                    "id": "obj-106",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 341.0, 319.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-105",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 394.0, 720.0, 79.0, 35.0 ],
                    "text": "s filter_Repeat"
                }
            },
            {
                "box": {
                    "id": "obj-98",
                    "linecount": 4,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 341.0, 454.0, 103.0, 62.0 ],
                    "text": "1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20"
                }
            },
            {
                "box": {
                    "id": "obj-54",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 223.0, 691.0, 32.0, 22.0 ],
                    "text": "gate"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "patching_rect": [ 236.0, 542.0, 125.0, 22.0 ],
                    "text": "histo"
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 423.0, 198.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-334",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "patching_rect": [ 1312.0, 1218.0, 41.0, 22.0 ],
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
                    "patching_rect": [ 1335.0, 1258.0, 73.20826828479767, 22.0 ],
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
                    "patching_rect": [ 1335.0, 1323.0, 99.0, 22.0 ],
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
                    "patching_rect": [ 1312.0, 1177.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-311",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 342.0, 608.2191338539124, 56.0, 22.0 ],
                    "text": "s START"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-308",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 423.0, 230.0, 47.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 158.90409803390503, 112.32875895500183, 47.0, 22.0 ],
                    "text": "START"
                }
            },
            {
                "box": {
                    "id": "obj-91",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1335.0, 1369.0, 101.0, 22.0 ],
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
                    "patching_rect": [ 2391.0, 572.0, 70.0, 22.0 ],
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
                    "patching_rect": [ 2391.0, 609.0, 21.0, 16.0 ],
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
                    "orientation": 1,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 2553.0, 661.0, 78.0, 41.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 614.6000091433525, 231.80000281333923, 100.0, 41.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.live_dial_triangle"
                        },
                        "valueof": {
                            "parameter_longname": "live.slider[8]",
                            "parameter_mmax": 50.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "saturation",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "textcolor": [ 0.85, 0.85, 0.85, 1.0 ],
                    "varname": "live.slider[3]"
                }
            },
            {
                "box": {
                    "id": "obj-60",
                    "maxclass": "live.slider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "orientation": 1,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 2474.0, 661.0, 68.0, 41.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 613.6000091433525, 188.80000281333923, 102.0, 41.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.live_dial_triangle"
                        },
                        "valueof": {
                            "parameter_longname": "live.slider[7]",
                            "parameter_mmax": 50.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "contrast",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "textcolor": [ 0.85, 0.85, 0.85, 1.0 ],
                    "varname": "live.slider[2]"
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "live.slider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "orientation": 1,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 2384.0, 661.0, 51.0, 41.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 613.6000091433525, 145.80000281333923, 102.0, 41.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.live_dial_triangle"
                        },
                        "valueof": {
                            "parameter_longname": "live.slider[6]",
                            "parameter_mmax": 50.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "brightness",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "textcolor": [ 0.85, 0.85, 0.85, 1.0 ],
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
                    "patching_rect": [ 2474.0, 723.0, 68.0, 22.0 ],
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
                    "patching_rect": [ 2553.0, 723.0, 78.0, 22.0 ],
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
                    "patching_rect": [ 2384.0, 723.0, 81.0, 22.0 ],
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
                    "patching_rect": [ 2291.0, 828.0, 123.0, 22.0 ],
                    "text": "jit.gl.pix @gen brcosa",
                    "varname": "jit.gl.pix_AA"
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
                    "patching_rect": [ 1219.0, 1523.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-220",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1192.0, 1573.0, 99.0, 22.0 ],
                    "text": "pack scale f 1. 1."
                }
            },
            {
                "box": {
                    "id": "obj-88",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2202.739565849304, 564.5, 77.0, 22.0 ],
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
                    "patching_rect": [ 298.0, 876.0, 70.0, 22.0 ],
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
                    "patching_rect": [ 298.0, 911.0, 20.0, 22.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 5, "obj-124", "number", "float", 0.9950000047683716, 5, "obj-135", "number", "float", 0.26499998569488525, 5, "obj-128", "number", "float", 0.925000011920929, 5, "obj-137", "number", "float", 0.8199999928474426, 5, "obj-123", "number", "float", 0.9800000190734863, 5, "obj-132", "number", "float", 0.289000004529953, 5, "obj-111", "number", "float", 0.0949999988079071, 5, "obj-134", "number", "float", 0.10899999737739563 ]
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
                    "patching_rect": [ 592.0, 1207.0, 80.0, 35.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 511.2000076174736, 195.0, 80.0, 35.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "int", "int", "bang", "bang" ],
                    "patching_rect": [ 939.0, 1005.4793789386749, 115.0, 22.0 ],
                    "text": "t i i b b"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1415.0, 1076.0, 55.0, 22.0 ],
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
                    "patching_rect": [ 1415.0, 1116.0, 65.0, 22.0 ],
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
                    "patching_rect": [ 1415.0, 1159.0, 41.0, 22.0 ],
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
                    "patching_rect": [ 1179.0, 1133.0, 70.0, 22.0 ],
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
                            "revision": 4,
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
                    "patching_rect": [ 352.0, 1077.0, 205.0, 22.0 ],
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
                    "patching_rect": [ 1179.0, 1379.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-115",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1179.0, 1409.0, 67.0, 22.0 ],
                    "text": "fontsize $1"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1216.0, 154.0, 80.0, 20.0 ],
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
                    "patching_rect": [ 1161.0, 153.0, 50.0, 22.0 ],
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
                    "patching_rect": [ 1119.0, 194.0, 61.0, 22.0 ],
                    "text": "pipe 5000"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "start", "bang", "int" ],
                    "patching_rect": [ 1119.0, 117.0, 235.0, 22.0 ],
                    "text": "t start b i"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 234.0, 1060.0, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "obj-153",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 939.0, 954.7944511175156, 157.0, 22.0 ],
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
                    "patching_rect": [ 1179.0, 1193.0, 70.0, 71.0 ],
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
                        },
                        {
                            "number": 21,
                            "data": [ 5, "obj-74", "umenu", "int", 150, 5, "obj-330", "toggle", "int", 1, 5, "obj-41", "number", "float", 0.1599999964237213, 5, "obj-40", "number", "float", 0.0, 5, "obj-221", "number", "float", 2.0, 5, "obj-138", "number", "int", 34 ]
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
                    "patching_rect": [ 285.0, 403.0, 80.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 217.0, 94.0, 80.0, 20.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.live_arranger_grid_tiles"
                        }
                    },
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
                    "patching_rect": [ 538.0, 980.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 552.0, 156.0, 50.0, 22.0 ],
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
                    "patching_rect": [ 484.8571428571429, 980.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 501.0, 156.0, 50.0, 22.0 ],
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
                    "patching_rect": [ 405.14285714285717, 964.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 269.0, 156.0, 50.0, 22.0 ],
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
                    "patching_rect": [ 352.0, 964.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 217.0, 156.0, 50.0, 22.0 ],
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
                    "patching_rect": [ 559.0, 1020.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 552.0, 254.0, 50.0, 22.0 ],
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
                    "patching_rect": [ 507.0, 1020.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 500.0, 254.0, 50.0, 22.0 ],
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
                    "patching_rect": [ 432.0, 1020.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 269.0, 254.0, 50.0, 22.0 ],
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
                    "patching_rect": [ 379.0, 1020.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 217.0, 254.0, 50.0, 22.0 ],
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
                    "bgcolor": [ 0.269595890603871, 0.408853959740371, 0.595943257030903, 1.0 ],
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 0.0, 26.0, 965.0, 616.0 ],
                        "openinpresentation": 1,
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-58",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 595.0, 284.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-37",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 460.0, 494.0, 45.0, 23.0 ],
                                    "text": "/ 255."
                                }
                            },
                            {
                                "box": {
                                    "clip": 0,
                                    "id": "obj-38",
                                    "maxclass": "dial",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 460.0, 440.0, 40.0, 40.0 ],
                                    "size": 256.0
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-39",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 460.0, 526.0, 81.0, 23.0 ],
                                    "text": "hsl $1 1. 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-40",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 460.0, 399.0, 129.0, 22.0 ],
                                    "text": "random @range 0 255"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-56",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 460.0, 354.0, 55.0, 22.0 ],
                                    "text": "del 3000"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-35",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 462.0, 654.0, 97.0, 22.0 ],
                                    "text": "scale 0. 1. 0 255"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 662.0, 654.0, 97.0, 22.0 ],
                                    "text": "scale 0. 1. 0 255"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-29",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 662.0, 494.0, 45.0, 23.0 ],
                                    "text": "/ 255."
                                }
                            },
                            {
                                "box": {
                                    "clip": 0,
                                    "id": "obj-31",
                                    "maxclass": "dial",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 662.0, 440.0, 40.0, 40.0 ],
                                    "size": 256.0
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-32",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 662.0, 526.0, 81.0, 23.0 ],
                                    "text": "hsl $1 1. 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 662.0, 399.0, 129.0, 22.0 ],
                                    "text": "random @range 0 255"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 662.0, 354.0, 55.0, 22.0 ],
                                    "text": "del 3000"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 473.0, 183.0, 72.0, 22.0 ],
                                    "text": "0, 255 1000"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 473.0, 147.0, 55.0, 22.0 ],
                                    "text": "del 5000"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "bang", "bang", "bang" ],
                                    "patching_rect": [ 473.0, 83.0, 42.0, 22.0 ],
                                    "text": "t b b b"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 410.0, 56.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 496.0, 213.0, 72.0, 22.0 ],
                                    "text": "255, 0 300"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "patching_rect": [ 473.0, 261.0, 40.0, 22.0 ],
                                    "text": "line 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 473.0, 43.0, 93.0, 22.0 ],
                                    "text": "r selected_Card"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 305.0, 261.0, 70.0, 22.0 ],
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
                                    "patching_rect": [ 305.0, 312.0, 100.0, 40.0 ],
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
                                    "patching_rect": [ 544.0, 1075.0, 50.0, 22.0 ],
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
                                    "patching_rect": [ 603.0, 1031.0, 35.0, 22.0 ],
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
                                    "patching_rect": [ 309.0, 1050.0, 86.0, 17.0 ],
                                    "text": "mode preset strobe"
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
                                    "patching_rect": [ 674.0, 571.0, 81.0, 27.0 ],
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
                                    "patching_rect": [ 662.0, 686.0, 51.0, 22.0 ],
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
                                    "id": "obj-42",
                                    "maxclass": "swatch",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 662.0, 600.0, 128.0, 32.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 15.0, 82.0, 128.0, 32.0 ],
                                    "saturation": 1.0
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
                                    "patching_rect": [ 741.0, 888.0, 29.5, 22.0 ],
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
                                    "patching_rect": [ 715.0, 920.0, 29.5, 22.0 ],
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
                                    "patching_rect": [ 689.0, 888.0, 29.5, 22.0 ],
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
                                    "patching_rect": [ 662.0, 920.0, 29.5, 22.0 ],
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
                                    "patching_rect": [ 741.0, 837.0, 65.0, 29.0 ],
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
                                    "patching_rect": [ 715.0, 726.0, 20.0, 140.0 ],
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
                                    "patching_rect": [ 689.0, 726.0, 20.0, 140.0 ],
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
                                    "patching_rect": [ 662.0, 726.0, 20.0, 140.0 ],
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
                                    "patching_rect": [ 462.0, 697.0, 51.0, 22.0 ],
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
                                    "id": "obj-23",
                                    "maxclass": "swatch",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 462.0, 600.0, 128.0, 32.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 17.0, 44.0, 128.0, 32.0 ],
                                    "saturation": 1.0
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-101",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 306.0, 1083.0, 35.0, 22.0 ],
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
                                    "patching_rect": [ 493.0, 761.0, 19.0, 17.0 ],
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
                                    "patching_rect": [ 547.0, 761.0, 19.0, 17.0 ],
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
                                    "patching_rect": [ 520.0, 761.0, 19.0, 17.0 ],
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
                                    "patching_rect": [ 541.0, 782.0, 20.0, 140.0 ],
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
                                    "patching_rect": [ 515.0, 782.0, 20.0, 140.0 ],
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
                                    "patching_rect": [ 489.0, 782.0, 20.0, 140.0 ],
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
                                    "patching_rect": [ 468.0, 761.0, 19.0, 17.0 ],
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
                                    "patching_rect": [ 343.0, 836.0, 19.0, 17.0 ],
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
                                    "patching_rect": [ 254.0, 1061.0, 39.0, 19.0 ],
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
                                    "patching_rect": [ 669.0, 1054.0, 93.0, 17.0 ],
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
                                    "patching_rect": [ 812.0, 988.0, 48.0, 19.0 ],
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
                                    "patching_rect": [ 382.0, 1194.0, 40.0, 19.0 ],
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
                                    "patching_rect": [ 382.0, 1220.0, 76.0, 19.0 ],
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
                                    "patching_rect": [ 356.0, 1168.0, 45.0, 19.0 ],
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
                                    "patching_rect": [ 254.0, 1104.0, 32.5, 19.0 ],
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
                                    "patching_rect": [ 812.0, 1017.0, 100.0, 19.0 ],
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
                                    "items": [ "debug-console", ",", "Bluetooth-Incoming-Port", ",", "usbserial-0001" ],
                                    "maxclass": "umenu",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "int", "", "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 638.0, 1069.0, 124.0, 19.0 ],
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
                                    "patching_rect": [ 476.0, 571.0, 161.0, 27.0 ],
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
                                    "patching_rect": [ 462.0, 782.0, 20.0, 140.0 ],
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
                                    "patching_rect": [ 343.0, 860.0, 92.0, 17.0 ],
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
                                    "patching_rect": [ 638.0, 1095.0, 50.0, 19.0 ],
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
                                    "patching_rect": [ 254.0, 1083.0, 32.5, 19.0 ],
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
                                    "patching_rect": [ 254.0, 1125.0, 39.0, 19.0 ],
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
                                            "revision": 4,
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
                                    "patching_rect": [ 356.0, 1142.0, 91.0, 22.0 ],
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
                                    "patching_rect": [ 356.0, 1069.0, 134.5, 19.0 ],
                                    "text": "pak 0 0 0 0 0 0 0 0 0 0 0 0"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-76", 0 ],
                                    "source": [ "obj-101", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-13", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "midpoints": [ 494.0, 131.49609375, 671.5, 131.49609375 ],
                                    "order": 0,
                                    "source": [ "obj-13", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-56", 0 ],
                                    "midpoints": [ 494.0, 129.3203125, 459.0, 129.3203125, 459.0, 339.0, 469.5, 339.0 ],
                                    "order": 1,
                                    "source": [ "obj-13", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-16", 0 ]
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
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-35", 0 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-31", 0 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-32", 0 ],
                                    "source": [ "obj-29", 0 ]
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
                                    "destination": [ "obj-29", 0 ],
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 0 ],
                                    "source": [ "obj-32", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-41", 0 ],
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-39", 0 ],
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 0 ],
                                    "source": [ "obj-38", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-39", 0 ]
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
                                    "destination": [ "obj-38", 0 ],
                                    "source": [ "obj-40", 0 ]
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
                                    "destination": [ "obj-33", 0 ],
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
                                    "destination": [ "obj-40", 0 ],
                                    "source": [ "obj-56", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "order": 0,
                                    "source": [ "obj-58", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-40", 0 ],
                                    "order": 1,
                                    "source": [ "obj-58", 0 ]
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
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-6", 0 ]
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
                                    "midpoints": [ 391.5, 1246.5, 790.5, 1246.5, 790.5, 1044.5, 647.5, 1044.5 ],
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
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-48", 0 ],
                                    "order": 0,
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-69", 0 ],
                                    "order": 1,
                                    "source": [ "obj-8", 0 ]
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
                    "patching_rect": [ 51.0, 87.0, 54.0, 22.0 ],
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
                    "style": "redness",
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
                    "patching_rect": [ 236.0, 402.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 217.0, 118.0, 50.0, 22.0 ]
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
                    "patching_rect": [ 1422.3333333333335, 1539.0, 50.0, 22.0 ]
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
                    "patching_rect": [ 1368.0, 1539.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1313.6666666666667, 1573.0, 182.0, 22.0 ],
                    "text": "pak position f f f"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1119.1780008077621, 34.246572852134705, 93.0, 22.0 ],
                    "text": "r selected_Card"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 223.0, 729.3561615943909, 95.0, 22.0 ],
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
                    "patching_rect": [ 2243.835453271866, 497.376717209816, 115.0, 41.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 324.0, 75.0, 171.0, 41.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.live_dial_needle"
                        },
                        "valueof": {
                            "parameter_longname": "live.slider",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "fadeInOut",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "textcolor": [ 0.85, 0.85, 0.85, 1.0 ],
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
                    "patching_rect": [ 1415.0, 1219.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "number",
                    "maximum": 22,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 939.0, 1196.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.250980392156863, 0.203921568627451, 0.937254901960784, 1.0 ],
                    "coll_data": {
                        "count": 21,
                        "data": [
                            {
                                "key": 1,
                                "value": [ "rio" ]
                            },
                            {
                                "key": 2,
                                "value": [ "lago" ]
                            },
                            {
                                "key": 3,
                                "value": [ "montanha" ]
                            },
                            {
                                "key": 4,
                                "value": [ "arco-íris" ]
                            },
                            {
                                "key": 5,
                                "value": [ "névoa" ]
                            },
                            {
                                "key": 6,
                                "value": [ "pedra" ]
                            },
                            {
                                "key": 7,
                                "value": [ "orvalho" ]
                            },
                            {
                                "key": 8,
                                "value": [ "crepúsculo" ]
                            },
                            {
                                "key": 9,
                                "value": [ "pântano" ]
                            },
                            {
                                "key": 10,
                                "value": [ "redemoinho" ]
                            },
                            {
                                "key": 11,
                                "value": [ "noite" ]
                            },
                            {
                                "key": 12,
                                "value": [ "vento" ]
                            },
                            {
                                "key": 13,
                                "value": [ "deserto" ]
                            },
                            {
                                "key": 14,
                                "value": [ "alvorada" ]
                            },
                            {
                                "key": 15,
                                "value": [ "bolha" ]
                            },
                            {
                                "key": 16,
                                "value": [ "oceano" ]
                            },
                            {
                                "key": 17,
                                "value": [ "solstício" ]
                            },
                            {
                                "key": 18,
                                "value": [ "fagulha" ]
                            },
                            {
                                "key": 19,
                                "value": [ "vale" ]
                            },
                            {
                                "key": 20,
                                "value": [ "tempestade" ]
                            },
                            {
                                "key": 21,
                                "value": [ "CARTA REPETIDA" ]
                            }
                        ]
                    },
                    "id": "obj-35",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 939.0, 1230.0, 121.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_midi_assignment"
                        }
                    },
                    "saved_newobj_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_midi_assignment"
                        }
                    },
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
                    "patching_rect": [ 939.0, 1310.0, 75.0, 22.0 ],
                    "text": "prepend text"
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
                    "patching_rect": [ 1465.0, 1333.0, 64.0, 23.0 ],
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
                    "patching_rect": [ 1465.0, 1366.0, 24.0, 24.0 ]
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
                    "patching_rect": [ 1465.0, 1393.0, 48.0, 23.0 ],
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
                    "patching_rect": [ 1439.0, 1456.0, 74.0, 23.0 ],
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
                    "patching_rect": [ 1439.0, 1483.0, 85.0, 23.0 ],
                    "text": "prepend font"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-74",
                    "items": [ "Ableton Sans", ",", "Ableton Sans Regular Italic", ",", "Ableton Sans ExtraLight", ",", "Ableton Sans ExtraLight Italic", ",", "Ableton Sans Light", ",", "Ableton Sans Light Italic", ",", "Ableton Sans Medium", ",", "Ableton Sans Medium Italic", ",", "Ableton Sans Bold", ",", "Ableton Sans Bold Italic", ",", "Ableton Sans Bold Bold", ",", "Ableton Sans Bold", ",", "Ableton Sans Light Light", ",", "Ableton Sans Light", ",", "Ableton Sans Medium Medium", ",", "Ableton Sans Medium", ",", "Ableton Sans Small", ",", "Ableton Sans Small Regular Italic", ",", "Ableton Sans Small Bold", ",", "Ableton Sans Small Bold Italic", ",", "Academy Engraved LET Plain", ",", "Al Bayan Plain", ",", "Al Bayan Bold", ",", "Al Nile", ",", "Al Nile Bold", ",", "Al Tarikh", ",", "American Typewriter", ",", "American Typewriter Light", ",", "American Typewriter Semibold", ",", "American Typewriter Bold", ",", "American Typewriter Condensed", ",", "American Typewriter Condensed Light", ",", "American Typewriter Condensed Bold", ",", "Andale Mono", ",", "Apple Braille Outline 6 Dot", ",", "Apple Braille Outline 8 Dot", ",", "Apple Braille Pinpoint 6 Dot", ",", "Apple Braille Pinpoint 8 Dot", ",", "Apple Braille", ",", "Apple Chancery Chancery", ",", "Apple Color Emoji", ",", "Apple SD Gothic Neo", ",", "Apple SD Gothic Neo Thin", ",", "Apple SD Gothic Neo UltraLight", ",", "Apple SD Gothic Neo Light", ",", "Apple SD Gothic Neo Medium", ",", "Apple SD Gothic Neo SemiBold", ",", "Apple SD Gothic Neo Bold", ",", "Apple SD Gothic Neo ExtraBold", ",", "Apple SD Gothic Neo Heavy", ",", "Apple Symbols", ",", "AppleGothic", ",", "AppleMyungjo", ",", "Arial", ",", "Arial Italic", ",", "Arial Bold", ",", "Arial Bold Italic", ",", "Arial Black", ",", "Arial Hebrew", ",", "Arial Hebrew Light", ",", "Arial Hebrew Bold", ",", "Arial Hebrew Scholar", ",", "Arial Hebrew Scholar Light", ",", "Arial Hebrew Scholar Bold", ",", "Arial Narrow", ",", "Arial Narrow Italic", ",", "Arial Narrow Bold", ",", "Arial Narrow Bold Italic", ",", "Arial Rounded MT Bold", ",", "Arial Unicode MS", ",", "Avenir Book", ",", "Avenir Roman", ",", "Avenir Book Oblique", ",", "Avenir Oblique", ",", "Avenir Light", ",", "Avenir Light Oblique", ",", "Avenir Medium", ",", "Avenir Medium Oblique", ",", "Avenir Heavy", ",", "Avenir Heavy Oblique", ",", "Avenir Black", ",", "Avenir Black Oblique", ",", "Avenir Next", ",", "Avenir Next Italic", ",", "Avenir Next Ultra Light", ",", "Avenir Next Ultra Light Italic", ",", "Avenir Next Medium", ",", "Avenir Next Medium Italic", ",", "Avenir Next Demi Bold", ",", "Avenir Next Demi Bold Italic", ",", "Avenir Next Bold", ",", "Avenir Next Bold Italic", ",", "Avenir Next Heavy", ",", "Avenir Next Heavy Italic", ",", "Avenir Next Condensed", ",", "Avenir Next Condensed Italic", ",", "Avenir Next Condensed Ultra Light", ",", "Avenir Next Condensed Ultra Light Italic", ",", "Avenir Next Condensed Medium", ",", "Avenir Next Condensed Medium Italic", ",", "Avenir Next Condensed Demi Bold", ",", "Avenir Next Condensed Demi Bold Italic", ",", "Avenir Next Condensed Bold", ",", "Avenir Next Condensed Bold Italic", ",", "Avenir Next Condensed Heavy", ",", "Avenir Next Condensed Heavy Italic", ",", "Ayuthaya", ",", "Baghdad", ",", "Bangla MN", ",", "Bangla MN Bold", ",", "Bangla Sangam MN", ",", "Bangla Sangam MN Bold", ",", "Baskerville", ",", "Baskerville Italic", ",", "Baskerville SemiBold", ",", "Baskerville SemiBold Italic", ",", "Baskerville Bold", ",", "Baskerville Bold Italic", ",", "Beirut", ",", "Big Caslon Medium", ",", "Bodoni 72 Book", ",", "Bodoni 72 Book Italic", ",", "Bodoni 72 Bold", ",", "Bodoni 72 Oldstyle Book", ",", "Bodoni 72 Oldstyle Book Italic", ",", "Bodoni 72 Oldstyle Bold", ",", "Bodoni 72 Smallcaps Book", ",", "Bodoni Ornaments", ",", "Bradley Hand Bold", ",", "Brush Script MT Italic", ",", "Canela Text", ",", "Canela Text Regular Italic", ",", "Canela Text Medium", ",", "Canela Text Medium Italic", ",", "Canela Text Bold", ",", "Canela Text Bold Italic", ",", "Chalkboard", ",", "Chalkboard Bold", ",", "Chalkboard SE", ",", "Chalkboard SE Light", ",", "Chalkboard SE Bold", ",", "Chalkduster", ",", "Charter Roman", ",", "Charter Italic", ",", "Charter Bold", ",", "Charter Bold Italic", ",", "Charter Black", ",", "Charter Black Italic", ",", "Cochin", ",", "Cochin Italic", ",", "Cochin Bold", ",", "Cochin Bold Italic", ",", "Comic Sans MS", ",", "Comic Sans MS Bold", ",", "Copperplate", ",", "Copperplate Light", ",", "Copperplate Bold", ",", "Cormorant Garamond", ",", "Cormorant Garamond Italic", ",", "Cormorant Garamond Light", ",", "Cormorant Garamond Light Italic", ",", "Cormorant Garamond Medium", ",", "Cormorant Garamond Medium Italic", ",", "Cormorant Garamond SemiBold", ",", "Cormorant Garamond SemiBold Italic", ",", "Cormorant Garamond Bold", ",", "Cormorant Garamond Bold Italic", ",", "Corsiva Hebrew", ",", "Corsiva Hebrew Bold", ",", "Courier New", ",", "Courier New Italic", ",", "Courier New Bold", ",", "Courier New Bold Italic", ",", "Damascus", ",", "Damascus Light", ",", "Damascus Medium", ",", "Damascus Semi Bold", ",", "Damascus Bold", ",", "DecoType Naskh", ",", "Devanagari MT", ",", "Devanagari MT Bold", ",", "Devanagari Sangam MN", ",", "Devanagari Sangam MN Bold", ",", "Didot", ",", "Didot Italic", ",", "Didot Bold", ",", "DIN Alternate Bold", ",", "DIN Condensed Bold", ",", "Diwan Kufi", ",", "Diwan Thuluth", ",", "EB Garamond", ",", "EB Garamond Italic", ",", "EB Garamond Medium", ",", "EB Garamond Medium Italic", ",", "EB Garamond SemiBold", ",", "EB Garamond SemiBold Italic", ",", "EB Garamond Bold", ",", "EB Garamond Bold Italic", ",", "EB Garamond ExtraBold", ",", "EB Garamond ExtraBold Italic", ",", "Euphemia UCAS", ",", "Euphemia UCAS Italic", ",", "Euphemia UCAS Bold", ",", "Farah", ",", "Farisi", ",", "Futura Medium", ",", "Futura Medium Italic", ",", "Futura Bold", ",", "Futura Condensed Medium", ",", "Futura Condensed ExtraBold", ",", "Galvji", ",", "Galvji Oblique", ",", "Galvji Bold", ",", "Galvji Bold Oblique", ",", "GB18030 Bitmap", ",", "Geeza Pro", ",", "Geeza Pro Bold", ",", "Geneva", ",", "Georgia", ",", "Georgia Italic", ",", "Georgia Bold", ",", "Georgia Bold Italic", ",", "Gill Sans", ",", "Gill Sans Italic", ",", "Gill Sans Light", ",", "Gill Sans Light Italic", ",", "Gill Sans SemiBold", ",", "Gill Sans SemiBold Italic", ",", "Gill Sans Bold", ",", "Gill Sans Bold Italic", ",", "Gill Sans UltraBold", ",", "Grantha Sangam MN", ",", "Grantha Sangam MN Bold", ",", "Gujarati MT", ",", "Gujarati MT Bold", ",", "Gujarati Sangam MN", ",", "Gujarati Sangam MN Bold", ",", "Gurmukhi MN", ",", "Gurmukhi MN Bold", ",", "Gurmukhi MT", ",", "Gurmukhi Sangam MN", ",", "Gurmukhi Sangam MN Bold", ",", "Heiti SC Light", ",", "Heiti SC Medium", ",", "Heiti TC Light", ",", "Heiti TC Medium", ",", "Helvetica", ",", "Helvetica Oblique", ",", "Helvetica Light", ",", "Helvetica Light Oblique", ",", "Helvetica Bold", ",", "Helvetica Bold Oblique", ",", "Helvetica Neue", ",", "Helvetica Neue Italic", ",", "Helvetica Neue UltraLight", ",", "Helvetica Neue UltraLight Italic", ",", "Helvetica Neue Thin", ",", "Helvetica Neue Thin Italic", ",", "Helvetica Neue Light", ",", "Helvetica Neue Light Italic", ",", "Helvetica Neue Medium", ",", "Helvetica Neue Medium Italic", ",", "Helvetica Neue Bold", ",", "Helvetica Neue Bold Italic", ",", "Helvetica Neue Condensed Bold", ",", "Helvetica Neue Condensed Black", ",", "Herculanum", ",", "Hiragino Maru Gothic ProN W4", ",", "Hiragino Mincho ProN W3", ",", "Hiragino Mincho ProN W6", ",", "Hiragino Sans W0", ",", "Hiragino Sans W1", ",", "Hiragino Sans W2", ",", "Hiragino Sans W3", ",", "Hiragino Sans W4", ",", "Hiragino Sans W5", ",", "Hiragino Sans W6", ",", "Hiragino Sans W7", ",", "Hiragino Sans W8", ",", "Hiragino Sans W9", ",", "Hiragino Sans GB W3", ",", "Hiragino Sans GB W6", ",", "Hoefler Text", ",", "Hoefler Text Ornaments", ",", "Hoefler Text Italic", ",", "Hoefler Text Black", ",", "Hoefler Text Black Italic", ",", "Impact", ",", "InaiMathi", ",", "InaiMathi Bold", ",", "ITF Devanagari Book", ",", "ITF Devanagari Light", ",", "ITF Devanagari Medium", ",", "ITF Devanagari Demi", ",", "ITF Devanagari Bold", ",", "ITF Devanagari Marathi Book", ",", "ITF Devanagari Marathi Light", ",", "ITF Devanagari Marathi Medium", ",", "ITF Devanagari Marathi Demi", ",", "ITF Devanagari Marathi Bold", ",", "Kailasa", ",", "Kailasa Bold", ",", "Kannada MN", ",", "Kannada MN Bold", ",", "Kannada Sangam MN", ",", "Kannada Sangam MN Bold", ",", "Karla", ",", "Karla Italic", ",", "Karla ExtraLight", ",", "Karla ExtraLight Italic", ",", "Karla ExtraLight", ",", "Karla ExtraLight Italic", ",", "Karla Light", ",", "Karla Light", ",", "Karla Light Italic", ",", "Karla Light Italic", ",", "Karla Medium", ",", "Karla Medium", ",", "Karla Medium Italic", ",", "Karla Medium Italic", ",", "Karla SemiBold", ",", "Karla SemiBold Italic", ",", "Karla Bold", ",", "Karla Bold", ",", "Karla Bold Italic", ",", "Karla Bold Italic", ",", "Karla ExtraBold", ",", "Karla ExtraBold", ",", "Karla ExtraBold Italic", ",", "Karla ExtraBold Italic", ",", "Kefa III", ",", "Kefa III Light", ",", "Kefa III Bold", ",", "Kefa III ExtraBold", ",", "Khmer MN", ",", "Khmer MN Bold", ",", "Khmer Sangam MN", ",", "Kohinoor Bangla", ",", "Kohinoor Bangla Light", ",", "Kohinoor Bangla Medium", ",", "Kohinoor Bangla Semibold", ",", "Kohinoor Bangla Bold", ",", "Kohinoor Devanagari", ",", "Kohinoor Devanagari Light", ",", "Kohinoor Devanagari Medium", ",", "Kohinoor Devanagari Semibold", ",", "Kohinoor Devanagari Bold", ",", "Kohinoor Gujarati", ",", "Kohinoor Gujarati Light", ",", "Kohinoor Gujarati Medium", ",", "Kohinoor Gujarati Semibold", ",", "Kohinoor Gujarati Bold", ",", "Kohinoor Telugu", ",", "Kohinoor Telugu Light", ",", "Kohinoor Telugu Medium", ",", "Kohinoor Telugu Semibold", ",", "Kohinoor Telugu Bold", ",", "Kokonor", ",", "Krungthep", ",", "KufiStandardGK", ",", "Lao MN", ",", "Lao MN Bold", ",", "Lao Sangam MN", ",", "Lato", ",", "Lato Italic", ",", "Lato Hairline", ",", "Lato Hairline Italic", ",", "Lato Thin", ",", "Lato Thin Italic", ",", "Lato Light", ",", "Lato Light Italic", ",", "Lato Medium", ",", "Lato Medium Italic", ",", "Lato Semibold", ",", "Lato Semibold Italic", ",", "Lato Bold", ",", "Lato Bold Italic", ",", "Lato Heavy", ",", "Lato Heavy Italic", ",", "Lato Black", ",", "Lato Black Italic", ",", "Lucida Grande", ",", "Lucida Grande Bold", ",", "Luminari", ",", "Malayalam MN", ",", "Malayalam MN Bold", ",", "Malayalam Sangam MN", ",", "Malayalam Sangam MN Bold", ",", "Manrope", ",", "Manrope ExtraLight", ",", "Manrope Light", ",", "Manrope Medium", ",", "Manrope SemiBold", ",", "Manrope Bold", ",", "Manrope ExtraBold", ",", "Marker Felt Thin", ",", "Marker Felt Wide", ",", "Menlo", ",", "Menlo Italic", ",", "Menlo Bold", ",", "Menlo Bold Italic", ",", "Microsoft Sans Serif", ",", "Mishafi", ",", "Mishafi Gold", ",", "Monaco", ",", "Mshtakan", ",", "Mshtakan Oblique", ",", "Mshtakan Bold", ",", "Mshtakan BoldOblique", ",", "Mukta Mahee", ",", "Mukta Mahee ExtraLight", ",", "Mukta Mahee Light", ",", "Mukta Mahee Medium", ",", "Mukta Mahee SemiBold", ",", "Mukta Mahee Bold", ",", "Mukta Mahee ExtraBold", ",", "Muna", ",", "Muna Bold", ",", "Muna Black", ",", "Myanmar MN", ",", "Myanmar MN Bold", ",", "Myanmar Sangam MN", ",", "Myanmar Sangam MN Bold", ",", "Nadeem", ",", "Nasalization", ",", "New Peninim MT", ",", "New Peninim MT Inclined", ",", "New Peninim MT Bold", ",", "New Peninim MT Bold Inclined", ",", "Noteworthy Light", ",", "Noteworthy Bold", ",", "Noto Nastaliq Urdu", ",", "Noto Nastaliq Urdu Bold", ",", "Noto Sans Batak", ",", "Noto Sans Kannada", ",", "Noto Sans Kannada ExtraLight", ",", "Noto Sans Kannada Thin", ",", "Noto Sans Kannada Light", ",", "Noto Sans Kannada Medium", ",", "Noto Sans Kannada SemiBold", ",", "Noto Sans Kannada Bold", ",", "Noto Sans Kannada ExtraBold", ",", "Noto Sans Kannada Black", ",", "Noto Sans Myanmar", ",", "Noto Sans Myanmar ExtraLight", ",", "Noto Sans Myanmar Thin", ",", "Noto Sans Myanmar Light", ",", "Noto Sans Myanmar Medium", ",", "Noto Sans Myanmar SemiBold", ",", "Noto Sans Myanmar Bold", ",", "Noto Sans Myanmar ExtraBold", ",", "Noto Sans Myanmar Black", ",", "Noto Sans NKo", ",", "Noto Sans Oriya", ",", "Noto Sans Oriya Bold", ",", "Noto Sans Syriac", ",", "Noto Sans Syriac Thin", ",", "Noto Sans Syriac ExtraLight", ",", "Noto Sans Syriac Light", ",", "Noto Sans Syriac Medium", ",", "Noto Sans Syriac SemiBold", ",", "Noto Sans Syriac Bold", ",", "Noto Sans Syriac ExtraBold", ",", "Noto Sans Syriac Black", ",", "Noto Sans Tagalog", ",", "Noto Serif Myanmar", ",", "Noto Serif Myanmar ExtraLight", ",", "Noto Serif Myanmar Thin", ",", "Noto Serif Myanmar Light", ",", "Noto Serif Myanmar Medium", ",", "Noto Serif Myanmar SemiBold", ",", "Noto Serif Myanmar Bold", ",", "Noto Serif Myanmar ExtraBold", ",", "Noto Serif Myanmar Black", ",", "NYU Perstare", ",", "NYU Perstare", ",", "NYU Perstare Italic", ",", "NYU Perstare Italic", ",", "NYU Perstare Thin", ",", "NYU Perstare Thin Italic", ",", "NYU Perstare Light", ",", "NYU Perstare Light", ",", "NYU Perstare Light Italic", ",", "NYU Perstare Light Italic", ",", "NYU Perstare Medium", ",", "NYU Perstare Medium", ",", "NYU Perstare Medium Italic", ",", "NYU Perstare Medium Italic", ",", "NYU Perstare Bold", ",", "NYU Perstare Bold", ",", "NYU Perstare Bold Italic", ",", "NYU Perstare Bold Italic", ",", "NYU Perstare Black", ",", "NYU Perstare Black", ",", "NYU Perstare Black Italic", ",", "NYU Perstare Black Italic", ",", "NYU Perstare Ultra", ",", "NYU Perstare Ultra", ",", "NYU Perstare Ultra Italic", ",", "NYU Perstare Ultra Italic", ",", "NYU Perstare Condensed", ",", "NYU Perstare Condensed Italic", ",", "NYU Perstare Condensed Thin", ",", "NYU Perstare Condensed Thin Italic", ",", "NYU Perstare Condensed Light", ",", "NYU Perstare Condensed Light Italic", ",", "NYU Perstare Condensed Medium", ",", "NYU Perstare Condensed Medium Italic", ",", "NYU Perstare Condensed Bold", ",", "NYU Perstare Condensed Bold Italic", ",", "NYU Perstare Condensed Black", ",", "NYU Perstare Condensed Black Italic", ",", "NYU Perstare Condensed Ultra", ",", "NYU Perstare Condensed Ultra Italic", ",", "NYU Perstare Condensed", ",", "NYU Perstare Condensed Italic", ",", "NYU Perstare Condensed Light", ",", "NYU Perstare Condensed Light Italic", ",", "NYU Perstare Condensed Medium", ",", "NYU Perstare Condensed Medium Italic", ",", "NYU Perstare Condensed Bold", ",", "NYU Perstare Condensed Bold Italic", ",", "NYU Perstare Condensed Black", ",", "NYU Perstare Condensed Black Italic", ",", "NYU Perstare Condensed Ultra", ",", "NYU Perstare Condensed Ultra Italic", ",", "Optima", ",", "Optima Italic", ",", "Optima Bold", ",", "Optima Bold Italic", ",", "Optima ExtraBlack", ",", "Oriya MN", ",", "Oriya MN Bold", ",", "Oriya Sangam MN", ",", "Oriya Sangam MN Bold", ",", "Palatino", ",", "Palatino Italic", ",", "Palatino Bold", ",", "Palatino Bold Italic", ",", "Papyrus", ",", "Papyrus Condensed", ",", "Party LET Plain", ",", "Phosphate Inline", ",", "Phosphate Solid", ",", "PingFang HK", ",", "PingFang HK Ultralight", ",", "PingFang HK Thin", ",", "PingFang HK Light", ",", "PingFang HK Medium", ",", "PingFang HK Semibold", ",", "PingFang MO", ",", "PingFang MO Ultralight", ",", "PingFang MO Thin", ",", "PingFang MO Light", ",", "PingFang MO Medium", ",", "PingFang MO Semibold", ",", "PingFang SC", ",", "PingFang SC Ultralight", ",", "PingFang SC Thin", ",", "PingFang SC Light", ",", "PingFang SC Medium", ",", "PingFang SC Semibold", ",", "PingFang TC", ",", "PingFang TC Ultralight", ",", "PingFang TC Thin", ",", "PingFang TC Light", ",", "PingFang TC Medium", ",", "PingFang TC Semibold", ",", "Plantagenet Cherokee", ",", "Prata", ",", "Proxima Nova", ",", "Proxima Nova Italic", ",", "Proxima Nova Light", ",", "Proxima Nova Light Italic", ",", "Proxima Nova Medium", ",", "Proxima Nova Medium Italic", ",", "Proxima Nova Semibold", ",", "Proxima Nova Semibold Italic", ",", "Proxima Nova Bold", ",", "Proxima Nova Bold Italic", ",", "Proxima Nova Extrabold", ",", "Proxima Nova Extrabold Italic", ",", "PT Mono", ",", "PT Mono Bold", ",", "PT Sans", ",", "PT Sans Italic", ",", "PT Sans Bold", ",", "PT Sans Bold Italic", ",", "PT Sans Caption", ",", "PT Sans Caption Bold", ",", "PT Sans Narrow", ",", "PT Sans Narrow Bold", ",", "PT Serif", ",", "PT Serif Italic", ",", "PT Serif Bold", ",", "PT Serif Bold Italic", ",", "PT Serif Caption", ",", "PT Serif Caption Italic", ",", "Publico Text Roman", ",", "Publico Text Italic", ",", "Publico Text Semibold", ",", "Publico Text Semibold Italic", ",", "Publico Text Bold", ",", "Publico Text Bold Italic", ",", "Raanana", ",", "Raanana Bold", ",", "Rockwell", ",", "Rockwell Italic", ",", "Rockwell Bold", ",", "Rockwell Bold Italic", ",", "Sana", ",", "Sathu", ",", "Savoye LET Plain", ",", "Shree Devanagari 714", ",", "Shree Devanagari 714 Italic", ",", "Shree Devanagari 714 Bold", ",", "Shree Devanagari 714 Bold Italic", ",", "SignPainter HouseScript", ",", "SignPainter HouseScript Semibold", ",", "Silom", ",", "Sinhala MN", ",", "Sinhala MN Bold", ",", "Sinhala Sangam MN", ",", "Sinhala Sangam MN Bold", ",", "Skia", ",", "Skia Light", ",", "Skia Bold", ",", "Skia Black", ",", "Skia Extended", ",", "Skia Light Extended", ",", "Skia Black Extended", ",", "Skia Condensed", ",", "Skia Light Condensed", ",", "Skia Black Condensed", ",", "Snell Roundhand", ",", "Snell Roundhand Bold", ",", "Snell Roundhand Black", ",", "Songti SC", ",", "Songti SC Light", ",", "Songti SC Bold", ",", "Songti SC Black", ",", "Songti TC", ",", "Songti TC Light", ",", "Songti TC Bold", ",", "Space Mono", ",", "Space Mono Italic", ",", "Space Mono Bold", ",", "Space Mono Bold Italic", ",", "STIX Two Math", ",", "STIX Two Text", ",", "STIX Two Text Italic", ",", "STIX Two Text Medium", ",", "STIX Two Text Medium Italic", ",", "STIX Two Text SemiBold", ",", "STIX Two Text SemiBold Italic", ",", "STIX Two Text Bold", ",", "STIX Two Text Bold Italic", ",", "STSong", ",", "Sukhumvit Set Text", ",", "Sukhumvit Set Light", ",", "Sukhumvit Set Medium", ",", "Sukhumvit Set Semi Bold", ",", "Sukhumvit Set Bold", ",", "Sukhumvit Set Thin", ",", "Symbol", ",", "Tahoma", ",", "Tahoma Bold", ",", "Tamil MN", ",", "Tamil MN Bold", ",", "Tamil Sangam MN", ",", "Tamil Sangam MN Bold", ",", "Telugu MN", ",", "Telugu MN Bold", ",", "Telugu Sangam MN", ",", "Telugu Sangam MN Bold", ",", "Thonburi", ",", "Thonburi Light", ",", "Thonburi Bold", ",", "Times New Roman", ",", "Times New Roman Italic", ",", "Times New Roman Bold", ",", "Times New Roman Bold Italic", ",", "Trattatello", ",", "Trebuchet MS", ",", "Trebuchet MS Italic", ",", "Trebuchet MS Bold", ",", "Trebuchet MS Bold Italic", ",", "Verdana", ",", "Verdana Italic", ",", "Verdana Bold", ",", "Verdana Bold Italic", ",", "Waseem", ",", "Waseem Light", ",", "Webdings", ",", "Wingdings", ",", "Wingdings 2", ",", "Wingdings 3", ",", "Zapf Dingbats", ",", "Zapfino" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1439.0, 1426.0, 139.0, 23.0 ]
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
                    "patching_rect": [ 1026.0, 1689.0409730672836, 215.0, 23.0 ],
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
                    "patching_rect": [ 234.0, 1112.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-89",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "jit_gl_texture", "bang", "" ],
                    "patching_rect": [ 352.0, 1170.0, 498.0, 22.0 ],
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
                    "patching_rect": [ 2291.0, 868.0, 373.0, 22.0 ],
                    "text": "jit.gl.videoplane cards @preserve_aspect 1 @scale 1. 1. 1. @layer 0"
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
                    "patching_rect": [ 491.0, 1131.0, 150.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 176.0, 221.0, 143.0, 22.0 ],
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
                    "patching_rect": [ 236.0, 339.0, 58.0, 22.0 ],
                    "text": "change 0"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 236.0, 250.0, 165.0, 22.0 ],
                    "text": "route /apriltag /cam/heartbeat"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 236.0, 214.0, 97.0, 22.0 ],
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
                    "patching_rect": [ 491.0, 1107.0, 150.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 217.0, 187.0, 100.0, 22.0 ],
                    "text_width": 76.0
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 1376.0, 324.0, 114.0, 22.0 ],
                    "text": "jit.movie @unique 1"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1416.0, 531.0, 139.0, 22.0 ],
                    "text": "strands 2, split 1, turns 1"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1769.0, 501.0, 35.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 495.0, 327.0, 35.0, 20.0 ],
                    "text": "split"
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1743.0, 501.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 501.0, 348.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1743.0, 541.0, 47.0, 22.0 ],
                    "text": "split $1"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "preset",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                    "patching_rect": [ 974.5, 445.0, 100.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 542.0, 372.0, 70.0, 55.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 5, "obj-85", "live.slider", "float", 0.015486727468669415, 5, "obj-100", "live.slider", "float", 0.0, 5, "obj-99", "live.slider", "float", 0.0, 5, "obj-95", "live.slider", "float", 0.0, 5, "obj-78", "live.slider", "float", 1.2598425149917603, 5, "obj-82", "live.slider", "float", 1.8740156888961792, 5, "obj-84", "live.slider", "float", 2.0, 5, "obj-163", "live.slider", "float", 2.7559056282043457, 5, "obj-165", "live.slider", "float", 0.7795275449752808 ]
                        },
                        {
                            "number": 2,
                            "data": [ 5, "obj-85", "live.slider", "float", 0.07874015718698502, 5, "obj-100", "live.slider", "float", 0.0, 5, "obj-99", "live.slider", "float", 8.897637367248535, 5, "obj-95", "live.slider", "float", 0.0, 5, "obj-78", "live.slider", "float", 1.2598425149917603, 5, "obj-82", "live.slider", "float", 1.8740156888961792, 5, "obj-84", "live.slider", "float", 2.0, 5, "obj-163", "live.slider", "float", 1.539620280265808, 5, "obj-165", "live.slider", "float", 1.0 ]
                        },
                        {
                            "number": 8,
                            "data": [ 5, "obj-85", "live.slider", "float", 0.0, 5, "obj-100", "live.slider", "float", 0.27559053897857666, 5, "obj-99", "live.slider", "float", 2.3389194011688232, 5, "obj-95", "live.slider", "float", 0.4803149700164795, 5, "obj-78", "live.slider", "float", 1.2598425149917603, 5, "obj-82", "live.slider", "float", 1.8740156888961792, 5, "obj-84", "live.slider", "float", 2.0, 5, "obj-163", "live.slider", "float", 4.6013312339782715, 5, "obj-165", "live.slider", "float", 0.3212125301361084 ]
                        },
                        {
                            "number": 11,
                            "data": [ 5, "obj-85", "live.slider", "float", 0.07874015718698502, 5, "obj-100", "live.slider", "float", 0.0, 5, "obj-99", "live.slider", "float", 0.0, 5, "obj-95", "live.slider", "float", 0.0, 5, "obj-78", "live.slider", "float", 1.2598425149917603, 5, "obj-82", "live.slider", "float", 1.8740156888961792, 5, "obj-84", "live.slider", "float", 2.0, 5, "obj-163", "live.slider", "float", 2.1414172649383545, 5, "obj-165", "live.slider", "float", 0.3001803159713745 ]
                        },
                        {
                            "number": 18,
                            "data": [ 5, "obj-85", "live.slider", "float", 0.0, 5, "obj-100", "live.slider", "float", 0.27559053897857666, 5, "obj-99", "live.slider", "float", 2.3389194011688232, 5, "obj-95", "live.slider", "float", 0.4803149700164795, 5, "obj-78", "live.slider", "float", 1.2598425149917603, 5, "obj-82", "live.slider", "float", 1.8740156888961792, 5, "obj-84", "live.slider", "float", 2.0, 5, "obj-163", "live.slider", "float", 5.0, 5, "obj-165", "live.slider", "float", 0.3212125301361084 ]
                        },
                        {
                            "number": 20,
                            "data": [ 5, "obj-85", "live.slider", "float", 0.0, 5, "obj-100", "live.slider", "float", 0.27559053897857666, 5, "obj-99", "live.slider", "float", 2.3389194011688232, 5, "obj-95", "live.slider", "float", 0.4803149700164795, 5, "obj-78", "live.slider", "float", 1.2598425149917603, 5, "obj-82", "live.slider", "float", 1.8740156888961792, 5, "obj-84", "live.slider", "float", 2.0, 5, "obj-163", "live.slider", "float", 4.6013312339782715, 5, "obj-165", "live.slider", "float", 0.3212125301361084 ]
                        }
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1249.0, 428.0, 124.0, 20.0 ],
                    "text": "individual LED testing"
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "number",
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1249.0, 454.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1249.0, 501.0, 45.0, 22.0 ],
                    "text": "jam $1"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1249.0, 561.0, 81.0, 22.0 ],
                    "text": "prepend scan"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "int", "", "", "int" ],
                    "patching_rect": [ 1249.0, 531.0, 92.0, 22.0 ],
                    "text": "counter 0 0 259"
                }
            },
            {
                "box": {
                    "id": "obj-77",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 993.0, 631.0, 63.0, 22.0 ],
                    "text": "prepend b"
                }
            },
            {
                "box": {
                    "id": "obj-78",
                    "maxclass": "live.slider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 993.0, 528.0, 39.0, 95.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 500.8000074625015, 428.8000063896179, 39.0, 95.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.slider[5]",
                            "parameter_mmax": 2.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "blue",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "live.slider[6]"
                }
            },
            {
                "box": {
                    "id": "obj-79",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 916.0, 631.0, 63.0, 22.0 ],
                    "text": "prepend g"
                }
            },
            {
                "box": {
                    "id": "obj-82",
                    "maxclass": "live.slider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 916.0, 528.0, 39.0, 95.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 465.0, 429.0, 39.0, 95.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.slider[4]",
                            "parameter_mmax": 2.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "green",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "live.slider[5]"
                }
            },
            {
                "box": {
                    "id": "obj-83",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 843.0, 631.0, 60.0, 22.0 ],
                    "text": "prepend r"
                }
            },
            {
                "box": {
                    "id": "obj-84",
                    "maxclass": "live.slider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 843.0, 528.0, 39.0, 95.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 427.5, 428.8000063896179, 39.0, 95.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.slider[3]",
                            "parameter_mmax": 2.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "red",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "live.slider[4]"
                }
            },
            {
                "box": {
                    "id": "obj-112",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1193.0, 631.0, 91.0, 22.0 ],
                    "text": "prepend history"
                }
            },
            {
                "box": {
                    "id": "obj-85",
                    "maxclass": "live.slider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1193.0, 528.0, 39.0, 95.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 367.0, 429.0, 39.0, 95.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "history",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "history",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "live.slider[7]"
                }
            },
            {
                "box": {
                    "id": "obj-87",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1303.0, 631.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-92",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1303.0, 661.0, 63.0, 22.0 ],
                    "text": "bypass $1"
                }
            },
            {
                "box": {
                    "id": "obj-103",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1153.0, 691.0, 88.0, 22.0 ],
                    "text": "prepend decay"
                }
            },
            {
                "box": {
                    "id": "obj-102",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1113.0, 661.0, 85.0, 22.0 ],
                    "text": "prepend boost"
                }
            },
            {
                "box": {
                    "id": "obj-101",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1069.0, 631.0, 95.0, 22.0 ],
                    "text": "prepend smooth"
                }
            },
            {
                "box": {
                    "id": "obj-100",
                    "maxclass": "live.slider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1153.0, 528.0, 39.0, 95.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 333.0, 429.0, 39.0, 95.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.slider[2]",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "decay",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "live.slider[8]"
                }
            },
            {
                "box": {
                    "id": "obj-99",
                    "maxclass": "live.slider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1113.0, 528.0, 39.0, 95.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 299.0, 429.0, 39.0, 95.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.slider[1]",
                            "parameter_mmax": 10.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "boost",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "live.slider[9]"
                }
            },
            {
                "box": {
                    "id": "obj-95",
                    "maxclass": "live.slider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1069.0, 528.0, 39.0, 95.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 264.00000393390656, 428.8000063896179, 39.0, 95.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.slider[9]",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "smooth",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "live.slider[10]"
                }
            },
            {
                "box": {
                    "filename": "dna_motion.js",
                    "id": "obj-109",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1376.0, 738.0, 99.0, 22.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    },
                    "text": "v8 dna_motion.js",
                    "textfile": {
                        "filename": "dna_motion.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "id": "obj-116",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1848.0, 487.0, 110.0, 22.0 ],
                    "text": "setall 0 0 0 0, bang"
                }
            },
            {
                "box": {
                    "id": "obj-119",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2095.0, 511.0, 123.0, 22.0 ],
                    "text": "setall 0 0 0 255, bang"
                }
            },
            {
                "box": {
                    "id": "obj-126",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1972.0, 511.0, 123.0, 22.0 ],
                    "text": "setall 0 0 255 0, bang"
                }
            },
            {
                "box": {
                    "id": "obj-127",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1848.0, 511.0, 123.0, 22.0 ],
                    "text": "setall 0 255 0 0, bang"
                }
            },
            {
                "box": {
                    "id": "obj-131",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 1876.0, 554.0, 171.0, 22.0 ],
                    "text": "jit.matrix solid 4 char 1280 720"
                }
            },
            {
                "box": {
                    "id": "obj-136",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 1376.0, 661.0, 57.0, 22.0 ],
                    "text": "jit.brcosa"
                }
            },
            {
                "box": {
                    "id": "obj-140",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2043.0, 968.0, 53.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 326.0, 369.0, 53.0, 20.0 ],
                    "text": "strand B"
                }
            },
            {
                "box": {
                    "id": "obj-141",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1783.0, 968.0, 53.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 326.0, 306.0, 53.0, 20.0 ],
                    "text": "strand A"
                }
            },
            {
                "box": {
                    "id": "obj-142",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1683.0, 501.0, 35.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 602.0, 327.0, 35.0, 20.0 ],
                    "text": "wrap"
                }
            },
            {
                "box": {
                    "id": "obj-144",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1589.0, 478.0, 64.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 532.0, 327.0, 64.0, 20.0 ],
                    "text": "turns (1-8)"
                }
            },
            {
                "box": {
                    "id": "obj-146",
                    "maxclass": "jit.pwindow",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 1863.0, 968.0, 176.0, 56.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 263.0, 391.0, 179.0, 34.0 ],
                    "sync": 1
                }
            },
            {
                "box": {
                    "id": "obj-149",
                    "maxclass": "jit.pwindow",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 1606.0, 968.0, 177.0, 55.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 263.0, 333.0, 179.0, 31.0 ],
                    "sync": 1
                }
            },
            {
                "box": {
                    "id": "obj-150",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 1863.0, 908.0, 165.0, 22.0 ],
                    "text": "jit.matrix prevB 3 char 105 60"
                }
            },
            {
                "box": {
                    "id": "obj-151",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 1606.0, 908.0, 164.0, 22.0 ],
                    "text": "jit.matrix prevA 3 char 108 60"
                }
            },
            {
                "box": {
                    "id": "obj-157",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 1863.0, 868.0, 219.0, 22.0 ],
                    "text": "jit.submatrix @dim 105 1 @offset 108 0"
                }
            },
            {
                "box": {
                    "id": "obj-159",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 1606.0, 868.0, 205.0, 22.0 ],
                    "text": "jit.submatrix @dim 108 1 @offset 0 0"
                }
            },
            {
                "box": {
                    "id": "obj-160",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1656.0, 501.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 608.0, 348.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-164",
                    "maxclass": "number",
                    "maximum": 8,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1589.0, 501.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 532.0, 348.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-166",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1656.0, 541.0, 51.0, 22.0 ],
                    "text": "wrap $1"
                }
            },
            {
                "box": {
                    "id": "obj-168",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1589.0, 541.0, 52.0, 22.0 ],
                    "text": "turns $1"
                }
            },
            {
                "box": {
                    "id": "obj-169",
                    "maxclass": "jit.pwindow",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 1396.0, 378.0, 177.0, 133.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 321.0, 143.0, 177.0, 133.0 ],
                    "sync": 1
                }
            },
            {
                "box": {
                    "fontsize": 16.0,
                    "id": "obj-170",
                    "maxclass": "live.menu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1483.0, 761.0, 43.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 206.0, 490.0, 43.0, 23.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "a", "b", "c", "d", "e", "f", "g", "h", "i", "j" ],
                            "parameter_longname": "live.menu",
                            "parameter_mmax": 9,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.menu",
                            "parameter_type": 2
                        }
                    },
                    "varname": "live.menu"
                }
            },
            {
                "box": {
                    "id": "obj-171",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1496.0, 801.0, 46.0, 22.0 ],
                    "text": "port $1"
                }
            },
            {
                "box": {
                    "filename": "dna_frame.js",
                    "id": "obj-173",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1376.0, 774.0, 94.0, 22.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    },
                    "text": "v8 dna_frame.js",
                    "textfile": {
                        "filename": "dna_frame.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "id": "obj-176",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 1376.0, 621.0, 152.0, 22.0 ],
                    "text": "jit.repos"
                }
            },
            {
                "box": {
                    "id": "obj-181",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "jit_matrix", "" ],
                    "patching_rect": [ 1376.0, 691.0, 300.0, 22.0 ],
                    "text": "jit.matrix dna 3 char 213 1 @planemap 1 2 3 @interp 1"
                }
            },
            {
                "box": {
                    "id": "obj-185",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "" ],
                    "patching_rect": [ 1376.0, 838.0, 91.0, 22.0 ],
                    "text": "serial a 250000"
                }
            },
            {
                "box": {
                    "id": "obj-187",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1513.0, 584.0, 105.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "dna_mapping.js",
                        "parameter_enable": 0
                    },
                    "text": "js dna_mapping.js"
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.668252052034861, 0.37753979111903, 0.316055506131883, 1.0 ],
                    "id": "obj-167",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 39.5, 145.0, 128.0, 128.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 180.0, 294.0, 480.0, 268.0 ],
                    "proportion": 0.39,
                    "saved_attribute_attributes": {
                        "bgfillcolor": {
                            "expression": "themecolor.live_inactive_automation"
                        }
                    }
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.250980392156863, 0.203921568627451, 0.937254901960784, 1.0 ],
                    "id": "obj-178",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 39.5, 15.0, 128.0, 128.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 132.87670266628265, 58.90410530567169, 613.6985855102539, 228.76710665225983 ],
                    "proportion": 0.39,
                    "saved_attribute_attributes": {
                        "bgfillcolor": {
                            "expression": "themecolor.live_midi_assignment"
                        }
                    }
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
                    "destination": [ "obj-38", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-103", 0 ],
                    "midpoints": [ 1162.5, 621.8333296775818, 1175.3332951068878, 621.8333296775818, 1175.3332951068878, 654.8333296775818, 1196.3332951068878, 654.8333296775818, 1196.3332951068878, 681.8333296775818, 1162.5, 681.8333296775818 ],
                    "source": [ "obj-100", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-109", 0 ],
                    "midpoints": [ 1078.5, 720.8333296775818, 1385.5, 720.8333296775818 ],
                    "source": [ "obj-101", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-109", 0 ],
                    "midpoints": [ 1122.5, 720.8333296775818, 1385.5, 720.8333296775818 ],
                    "source": [ "obj-102", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-109", 0 ],
                    "midpoints": [ 1162.5, 720.8333296775818, 1385.5, 720.8333296775818 ],
                    "source": [ "obj-103", 0 ]
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
                    "destination": [ "obj-108", 0 ],
                    "source": [ "obj-106", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "midpoints": [ 382.5, 439.3863434228115, 244.16010883636773, 439.3863434228115, 244.16010883636773, 528.0, 245.5, 528.0 ],
                    "source": [ "obj-108", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-98", 0 ],
                    "source": [ "obj-108", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-157", 0 ],
                    "midpoints": [ 1385.5, 759.8333296775818, 1361.3332951068878, 759.8333296775818, 1361.3332951068878, 822.8333296775818, 1481.3332951068878, 822.8333296775818, 1481.3332951068878, 849.8333296775818, 1872.5, 849.8333296775818 ],
                    "order": 0,
                    "source": [ "obj-109", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-159", 0 ],
                    "midpoints": [ 1385.5, 759.8333296775818, 1361.3332951068878, 759.8333296775818, 1361.3332951068878, 822.8333296775818, 1481.3332951068878, 822.8333296775818, 1481.3332951068878, 849.8333296775818, 1615.5, 849.8333296775818 ],
                    "order": 1,
                    "source": [ "obj-109", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-173", 0 ],
                    "order": 2,
                    "source": [ "obj-109", 0 ]
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
                    "destination": [ "obj-109", 0 ],
                    "midpoints": [ 1202.5, 663.8333296775818, 1289.3332951068878, 663.8333296775818, 1289.3332951068878, 720.8333296775818, 1385.5, 720.8333296775818 ],
                    "source": [ "obj-112", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-185", 0 ],
                    "source": [ "obj-114", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 1188.5, 1560.0, 1035.5, 1560.0 ],
                    "source": [ "obj-115", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-131", 0 ],
                    "source": [ "obj-116", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-114", 0 ],
                    "source": [ "obj-117", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-131", 0 ],
                    "source": [ "obj-119", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-232", 0 ],
                    "source": [ "obj-121", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 0 ],
                    "source": [ "obj-122", 0 ]
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
                    "destination": [ "obj-143", 0 ],
                    "source": [ "obj-125", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-147", 0 ],
                    "source": [ "obj-125", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-131", 0 ],
                    "source": [ "obj-126", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-131", 0 ],
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
                    "destination": [ "obj-131", 0 ],
                    "source": [ "obj-130", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-176", 0 ],
                    "midpoints": [ 1885.5, 611.6966109275818, 1385.5, 611.6966109275818 ],
                    "source": [ "obj-131", 0 ]
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
                    "destination": [ "obj-33", 0 ],
                    "midpoints": [ 1236.5, 309.0, 1385.5, 309.0 ],
                    "source": [ "obj-133", 0 ]
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
                    "destination": [ "obj-181", 0 ],
                    "source": [ "obj-136", 0 ]
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
                    "destination": [ "obj-125", 0 ],
                    "order": 1,
                    "source": [ "obj-139", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-152", 0 ],
                    "midpoints": [ 534.5, 450.0, 510.0, 450.0, 510.0, 642.0, 534.5, 642.0 ],
                    "order": 0,
                    "source": [ "obj-139", 0 ]
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
                    "destination": [ "obj-183", 0 ],
                    "source": [ "obj-143", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-177", 0 ],
                    "source": [ "obj-147", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-152", 0 ],
                    "midpoints": [ 644.5, 642.0, 534.5, 642.0 ],
                    "source": [ "obj-148", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-187", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-146", 0 ],
                    "source": [ "obj-150", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-149", 0 ],
                    "source": [ "obj-151", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-175", 0 ],
                    "source": [ "obj-152", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-195", 0 ],
                    "source": [ "obj-152", 0 ]
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
                    "midpoints": [ 1188.5, 1266.0, 1188.5, 1266.0 ],
                    "order": 5,
                    "source": [ "obj-154", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-221", 0 ],
                    "midpoints": [ 1188.5, 1365.0, 1164.0, 1365.0, 1164.0, 1509.0, 1228.5, 1509.0 ],
                    "order": 4,
                    "source": [ "obj-154", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-330", 0 ],
                    "midpoints": [ 1188.5, 1276.0, 1298.0, 1276.0, 1298.0, 1174.0, 1321.5, 1174.0 ],
                    "order": 3,
                    "source": [ "obj-154", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "midpoints": [ 1188.5, 1365.0, 1320.0, 1365.0, 1320.0, 1524.0, 1377.5, 1524.0 ],
                    "order": 2,
                    "source": [ "obj-154", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "midpoints": [ 1188.5, 1365.0, 1320.0, 1365.0, 1320.0, 1524.0, 1431.8333333333335, 1524.0 ],
                    "order": 1,
                    "source": [ "obj-154", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-74", 0 ],
                    "midpoints": [ 1188.5, 1356.0, 1448.5, 1356.0 ],
                    "order": 0,
                    "source": [ "obj-154", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-158", 0 ],
                    "source": [ "obj-156", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-150", 0 ],
                    "source": [ "obj-157", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "source": [ "obj-158", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-151", 0 ],
                    "source": [ "obj-159", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-166", 0 ],
                    "source": [ "obj-160", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-136", 0 ],
                    "midpoints": [ 801.5, 723.0, 1362.0, 723.0, 1362.0, 684.0, 1371.0, 684.0, 1371.0, 657.0, 1385.5, 657.0 ],
                    "source": [ "obj-161", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-136", 0 ],
                    "midpoints": [ 740.5, 723.0, 1362.0, 723.0, 1362.0, 684.0, 1371.0, 684.0, 1371.0, 657.0, 1385.5, 657.0 ],
                    "source": [ "obj-162", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-161", 0 ],
                    "source": [ "obj-163", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-168", 0 ],
                    "source": [ "obj-164", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-162", 0 ],
                    "source": [ "obj-165", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-187", 0 ],
                    "source": [ "obj-166", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-187", 0 ],
                    "source": [ "obj-168", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-171", 0 ],
                    "source": [ "obj-170", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-185", 0 ],
                    "source": [ "obj-171", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-185", 0 ],
                    "source": [ "obj-173", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-155", 0 ],
                    "source": [ "obj-175", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-177", 0 ],
                    "midpoints": [ 606.5, 732.55859375, 621.73828125, 732.55859375, 621.73828125, 612.0, 621.0, 612.0, 621.0, 529.88671875, 644.5, 529.88671875 ],
                    "source": [ "obj-175", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-136", 0 ],
                    "source": [ "obj-176", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-148", 0 ],
                    "source": [ "obj-177", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-265", 0 ],
                    "source": [ "obj-18", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 1 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-109", 0 ],
                    "source": [ "obj-181", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-184", 0 ],
                    "source": [ "obj-183", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-176", 1 ],
                    "source": [ "obj-187", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-188", 0 ]
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
                    "destination": [ "obj-130", 0 ],
                    "source": [ "obj-192", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-116", 0 ],
                    "source": [ "obj-193", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-127", 0 ],
                    "source": [ "obj-194", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-274", 0 ],
                    "source": [ "obj-196", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-125", 0 ],
                    "source": [ "obj-197", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-198", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-199", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-200", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 0 ],
                    "source": [ "obj-201", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-214", 0 ],
                    "order": 0,
                    "source": [ "obj-213", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 0 ],
                    "midpoints": [ 403.5, 668.8024394284002, 232.5, 668.8024394284002 ],
                    "order": 1,
                    "source": [ "obj-213", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-105", 0 ],
                    "source": [ "obj-214", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 1201.5, 1674.0, 1035.5, 1674.0 ],
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
                    "destination": [ "obj-187", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-154", 0 ],
                    "midpoints": [ 1449.4772032499313, 1062.0, 1260.0, 1062.0, 1260.0, 1179.0, 1188.5, 1179.0 ],
                    "source": [ "obj-232", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-188", 0 ],
                    "midpoints": [ 1499.431609749794, 1047.0, 1499.5, 1047.0 ],
                    "source": [ "obj-232", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "midpoints": [ 1474.4544064998627, 1062.0, 1424.5, 1062.0 ],
                    "source": [ "obj-232", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "midpoints": [ 1424.5, 1062.0, 1065.0, 1062.0, 1065.0, 1182.0, 948.5, 1182.0 ],
                    "source": [ "obj-232", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-133", 0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-268", 0 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-100", 0 ],
                    "order": 4,
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-160", 0 ],
                    "order": 1,
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-163", 0 ],
                    "order": 10,
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-164", 0 ],
                    "order": 2,
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-165", 0 ],
                    "order": 11,
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "order": 0,
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-78", 0 ],
                    "order": 7,
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-82", 0 ],
                    "order": 8,
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-84", 0 ],
                    "order": 9,
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-85", 0 ],
                    "order": 3,
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-95", 0 ],
                    "order": 6,
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-99", 0 ],
                    "order": 5,
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-213", 0 ],
                    "source": [ "obj-265", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-311", 0 ],
                    "order": 0,
                    "source": [ "obj-265", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 0 ],
                    "midpoints": [ 351.5, 600.0, 300.0, 600.0, 300.0, 678.0, 232.5, 678.0 ],
                    "order": 1,
                    "source": [ "obj-265", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
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
                    "destination": [ "obj-271", 0 ],
                    "source": [ "obj-270", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-271", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-198", 0 ],
                    "source": [ "obj-274", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-108", 0 ],
                    "midpoints": [ 432.5, 354.0, 350.5, 354.0 ],
                    "order": 1,
                    "source": [ "obj-308", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-139", 0 ],
                    "midpoints": [ 432.5, 354.0, 534.5, 354.0 ],
                    "order": 0,
                    "source": [ "obj-308", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-173", 0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "source": [ "obj-32", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "source": [ "obj-32", 2 ]
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
                    "destination": [ "obj-169", 0 ],
                    "order": 1,
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-176", 0 ],
                    "order": 2,
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "midpoints": [ 1385.5, 363.0, 1770.0, 363.0, 1770.0, 474.0, 2300.5, 474.0 ],
                    "order": 0,
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
                    "midpoints": [ 1321.5, 1309.0, 1397.8333333333333, 1309.0 ],
                    "order": 0,
                    "source": [ "obj-334", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-331", 1 ],
                    "midpoints": [ 1321.5, 1309.0, 1371.1666666666667, 1309.0 ],
                    "order": 1,
                    "source": [ "obj-334", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-331", 0 ],
                    "midpoints": [ 1321.5, 1309.0, 1344.5, 1309.0 ],
                    "order": 2,
                    "source": [ "obj-334", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-333", 0 ],
                    "midpoints": [ 1343.5, 1261.0, 1344.5, 1261.0 ],
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
                    "destination": [ "obj-122", 0 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 948.5, 1674.0, 1035.5, 1674.0 ],
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 1323.1666666666667, 1674.0, 1035.5, 1674.0 ],
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "source": [ "obj-38", 1 ]
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
                    "destination": [ "obj-248", 0 ],
                    "source": [ "obj-4", 1 ]
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
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "midpoints": [ 2300.5, 747.0, 2300.5, 747.0 ],
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-5", 0 ]
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
                    "destination": [ "obj-154", 0 ],
                    "midpoints": [ 980.5, 1179.0, 1188.5, 1179.0 ],
                    "source": [ "obj-51", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-188", 0 ],
                    "midpoints": [ 1044.5, 1059.0, 1499.5, 1059.0 ],
                    "source": [ "obj-51", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "midpoints": [ 1012.5, 1071.0, 1424.5, 1071.0 ],
                    "source": [ "obj-51", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "midpoints": [ 1128.5, 292.30859375, 1385.5, 292.30859375 ],
                    "source": [ "obj-52", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-54", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "midpoints": [ 2393.5, 773.65234375, 2300.5, 773.65234375 ],
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "midpoints": [ 2562.5, 798.65234375, 2300.5, 798.65234375 ],
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "midpoints": [ 2483.5, 784.828125, 2300.5, 784.828125 ],
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
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-62", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "midpoints": [ 2393.5, 627.0, 2393.5, 627.0 ],
                    "order": 2,
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-60", 0 ],
                    "midpoints": [ 2393.5, 648.0, 2483.5, 648.0 ],
                    "order": 1,
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "midpoints": [ 2393.5, 648.0, 2562.5, 648.0 ],
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
                    "order": 0,
                    "source": [ "obj-71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-333", 1 ],
                    "order": 1,
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
                    "midpoints": [ 1448.5, 1524.0, 1281.0, 1524.0, 1281.0, 1560.0, 1035.5, 1560.0 ],
                    "source": [ "obj-73", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-97", 0 ],
                    "midpoints": [ 1508.5, 1447.0, 1448.5, 1447.0 ],
                    "source": [ "obj-74", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-111", 0 ],
                    "midpoints": [ 300.0, 1005.0, 388.5, 1005.0 ],
                    "order": 6,
                    "source": [ "obj-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-123", 0 ],
                    "midpoints": [ 300.0, 1005.0, 441.5, 1005.0 ],
                    "order": 4,
                    "source": [ "obj-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-124", 0 ],
                    "midpoints": [ 300.0, 951.0, 534.0, 951.0, 534.0, 1017.0, 568.5, 1017.0 ],
                    "order": 0,
                    "source": [ "obj-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 0 ],
                    "midpoints": [ 300.0, 1005.0, 513.0, 1005.0, 513.0, 1017.0, 516.5, 1017.0 ],
                    "order": 2,
                    "source": [ "obj-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-132", 0 ],
                    "midpoints": [ 300.0, 951.0, 414.64285714285717, 951.0 ],
                    "order": 5,
                    "source": [ "obj-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-134", 0 ],
                    "midpoints": [ 300.0, 951.0, 361.5, 951.0 ],
                    "order": 7,
                    "source": [ "obj-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-135", 0 ],
                    "midpoints": [ 300.0, 951.0, 547.5, 951.0 ],
                    "order": 1,
                    "source": [ "obj-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-137", 0 ],
                    "midpoints": [ 300.0, 951.0, 494.3571428571429, 951.0 ],
                    "order": 3,
                    "source": [ "obj-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-173", 0 ],
                    "midpoints": [ 1002.5, 738.8333296775818, 1361.3332951068878, 738.8333296775818, 1361.3332951068878, 768.8333296775818, 1385.5, 768.8333296775818 ],
                    "source": [ "obj-77", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-77", 0 ],
                    "source": [ "obj-78", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-173", 0 ],
                    "midpoints": [ 925.5, 738.8333296775818, 1361.3332951068878, 738.8333296775818, 1361.3332951068878, 768.8333296775818, 1385.5, 768.8333296775818 ],
                    "source": [ "obj-79", 0 ]
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
                    "destination": [ "obj-79", 0 ],
                    "source": [ "obj-82", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-173", 0 ],
                    "midpoints": [ 852.5, 738.8333296775818, 1361.3332951068878, 738.8333296775818, 1361.3332951068878, 768.8333296775818, 1385.5, 768.8333296775818 ],
                    "source": [ "obj-83", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-83", 0 ],
                    "source": [ "obj-84", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-112", 0 ],
                    "source": [ "obj-85", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-92", 0 ],
                    "source": [ "obj-87", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 0 ],
                    "midpoints": [ 2212.239565849304, 849.7234599422663, 2300.5, 849.7234599422663 ],
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
                    "destination": [ "obj-52", 1 ],
                    "source": [ "obj-90", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "midpoints": [ 1344.5, 1560.0, 1035.5, 1560.0 ],
                    "source": [ "obj-91", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-109", 0 ],
                    "source": [ "obj-92", 0 ]
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
                    "destination": [ "obj-101", 0 ],
                    "source": [ "obj-95", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-73", 0 ],
                    "source": [ "obj-97", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 1 ],
                    "source": [ "obj-98", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-102", 0 ],
                    "source": [ "obj-99", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-100": [ "live.slider[2]", "decay", 0 ],
            "obj-110::obj-1": [ "live.gain~[4]", "live.gain~[4]", 0 ],
            "obj-110::obj-110": [ "live.gain~", "live.gain~", 0 ],
            "obj-110::obj-162": [ "live.gain~[1]", "live.gain~", 0 ],
            "obj-110::obj-180": [ "live.gain~[2]", "live.gain~", 0 ],
            "obj-110::obj-189": [ "live.gain~[3]", "live.gain~", 0 ],
            "obj-110::obj-234": [ "mc.live.gain~", "mc.live.gain~", 0 ],
            "obj-111": [ "number[2]", "number[2]", 0 ],
            "obj-123": [ "number[3]", "number[3]", 0 ],
            "obj-124": [ "number[8]", "number[8]", 0 ],
            "obj-128": [ "number[4]", "number[4]", 0 ],
            "obj-132": [ "number[6]", "number[6]", 0 ],
            "obj-134": [ "number[5]", "number[5]", 0 ],
            "obj-135": [ "number[9]", "number[9]", 0 ],
            "obj-137": [ "number[7]", "number[7]", 0 ],
            "obj-163": [ "live.slider[10]", "contrast", 0 ],
            "obj-165": [ "live.slider[11]", "brightness", 0 ],
            "obj-170": [ "live.menu", "live.menu", 0 ],
            "obj-192": [ "live.text", "live.text", 0 ],
            "obj-193": [ "live.text[1]", "live.text", 0 ],
            "obj-194": [ "live.text[2]", "live.text", 0 ],
            "obj-199": [ "live.text[3]", "live.text", 0 ],
            "obj-201": [ "live.text[4]", "live.text", 0 ],
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
            "obj-78": [ "live.slider[5]", "blue", 0 ],
            "obj-8": [ "live.slider", "fadeInOut", 0 ],
            "obj-82": [ "live.slider[4]", "green", 0 ],
            "obj-84": [ "live.slider[3]", "red", 0 ],
            "obj-85": [ "history", "history", 0 ],
            "obj-90": [ "number", "number", 0 ],
            "obj-95": [ "live.slider[9]", "smooth", 0 ],
            "obj-99": [ "live.slider[1]", "boost", 0 ],
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
        "styles": [
            {
                "name": "Audiomix",
                "default": {
                    "bgfillcolor": {
                        "angle": 270.0,
                        "color": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                        "color1": [ 0.376471, 0.384314, 0.4, 1.0 ],
                        "color2": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                        "proportion": 0.39,
                        "type": "gradient"
                    }
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "MP-M4L",
                "default": {
                    "accentcolor": [ 0.411764705882353, 0.411764705882353, 0.411764705882353, 1.0 ],
                    "bgcolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ],
                    "bgfillcolor": {
                        "color": [ 0.266666666666667, 0.266666666666667, 0.266666666666667, 1.0 ],
                        "color1": [ 0.376470588235294, 0.384313725490196, 0.4, 1.0 ],
                        "color2": [ 0.290196078431373, 0.309803921568627, 0.301960784313725, 1.0 ],
                        "dynamiccolor": [ 0.266666666666667, 0.266666666666667, 0.266666666666667, 1.0, "live_contrast_frame", 1, 0.266666666666667, 0.266666666666667, 0.266666666666667, 1.0, "Control Border" ],
                        "type": "color"
                    },
                    "color": [ 0.333333333333333, 0.870588235294118, 0.964705882352941, 1.0 ],
                    "editing_bgcolor": [ 0.56078431372549, 0.56078431372549, 0.56078431372549, 1.0 ],
                    "elementcolor": [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
                    "locked_bgcolor": [ 0.56078431372549, 0.56078431372549, 0.56078431372549, 1.0 ],
                    "patchlinecolor": [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
                    "selectioncolor": [ 1.0, 0.694117647058824, 0.0, 1.0 ],
                    "stripecolor": [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "rnbolight",
                "default": {
                    "accentcolor": [ 0.443137254901961, 0.505882352941176, 0.556862745098039, 1.0 ],
                    "bgcolor": [ 0.796078431372549, 0.862745098039216, 0.925490196078431, 1.0 ],
                    "bgfillcolor": {
                        "angle": 270.0,
                        "autogradient": 0.0,
                        "color": [ 0.835294117647059, 0.901960784313726, 0.964705882352941, 1.0 ],
                        "color1": [ 0.031372549019608, 0.125490196078431, 0.211764705882353, 1.0 ],
                        "color2": [ 0.263682, 0.004541, 0.038797, 1.0 ],
                        "proportion": 0.39,
                        "type": "color"
                    },
                    "clearcolor": [ 0.898039, 0.898039, 0.898039, 1.0 ],
                    "color": [ 0.815686274509804, 0.509803921568627, 0.262745098039216, 1.0 ],
                    "editing_bgcolor": [ 0.898039, 0.898039, 0.898039, 1.0 ],
                    "elementcolor": [ 0.337254901960784, 0.384313725490196, 0.462745098039216, 1.0 ],
                    "fontname": [ "Lato" ],
                    "locked_bgcolor": [ 0.898039, 0.898039, 0.898039, 1.0 ],
                    "stripecolor": [ 0.309803921568627, 0.698039215686274, 0.764705882352941, 1.0 ],
                    "textcolor_inverse": [ 0.0, 0.0, 0.0, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "rnbomonokai",
                "default": {
                    "accentcolor": [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "bgfillcolor": {
                        "angle": 270.0,
                        "autogradient": 0.0,
                        "color": [ 0.0, 0.0, 0.0, 1.0 ],
                        "color1": [ 0.031372549019608, 0.125490196078431, 0.211764705882353, 1.0 ],
                        "color2": [ 0.263682, 0.004541, 0.038797, 1.0 ],
                        "proportion": 0.39,
                        "type": "color"
                    },
                    "clearcolor": [ 0.976470588235294, 0.96078431372549, 0.917647058823529, 1.0 ],
                    "color": [ 0.611764705882353, 0.125490196078431, 0.776470588235294, 1.0 ],
                    "editing_bgcolor": [ 0.976470588235294, 0.96078431372549, 0.917647058823529, 1.0 ],
                    "elementcolor": [ 0.749019607843137, 0.83921568627451, 1.0, 1.0 ],
                    "fontname": [ "Lato" ],
                    "locked_bgcolor": [ 0.976470588235294, 0.96078431372549, 0.917647058823529, 1.0 ],
                    "stripecolor": [ 0.796078431372549, 0.207843137254902, 1.0, 1.0 ],
                    "textcolor": [ 0.129412, 0.129412, 0.129412, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            }
        ],
        "toolbaradditions": [ "Data Knot", "ABL Effect Modules", "AudioMix" ]
    }
}