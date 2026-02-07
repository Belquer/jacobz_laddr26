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
                    "id": "obj-174",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 68.5, -212.0, 48.0, 136.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.gain~[2]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~[2]",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~[2]"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "id": "obj-155",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1095.0, 693.0, 27.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 370.6977929101873, 298.93072525, 39.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0.5 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "damping",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "damping",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "damping"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "id": "obj-22",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1133.0, 693.0, 27.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 326.0686951128118, 298.93072525, 39.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 10 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "predelay",
                            "parameter_mmax": 100.0,
                            "parameter_mmin": 10.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "predelay",
                            "parameter_type": 0,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "predelay"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "id": "obj-156",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1048.0, 693.0, 27.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 281.43959731543623, 298.93072525, 39.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0.5 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "reverb",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "reverb",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "reverb"
                }
            },
            {
                "box": {
                    "id": "obj-157",
                    "maxclass": "newobj",
                    "numinlets": 3,
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
                        "rect": [ 95.0, 106.0, 362.0, 330.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 120.0, 159.0, 139.0, 22.0 ],
                                    "text": "prepend reverb/predelay"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 78.0, 125.0, 139.0, 22.0 ],
                                    "text": "prepend reverb/damping"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 33.0, 92.0, 129.0, 22.0 ],
                                    "text": "prepend reverb/drywet"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-5",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 33.0, 252.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-3",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 120.0, 35.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-2",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 78.0, 35.0, 30.0, 30.0 ]
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
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 33.0, 35.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 1048.0, 750.0, 95.0, 22.0 ],
                    "text": "p reverb_control"
                }
            },
            {
                "box": {
                    "id": "obj-158",
                    "maxclass": "newobj",
                    "numinlets": 4,
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
                        "rect": [ 103.0, 106.0, 424.0, 326.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 181.0, 190.0, 187.0, 22.0 ],
                                    "text": "prepend poly/osc.additive/partials"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 137.0, 157.0, 180.0, 22.0 ],
                                    "text": "prepend poly/osc.additive/decay"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 93.0, 126.0, 190.0, 22.0 ],
                                    "text": "prepend poly/osc.additive/balance"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 96.0, 171.0, 22.0 ],
                                    "text": "prepend poly/osc.additive/gain"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-4",
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
                                    "id": "obj-5",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 93.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-7",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 137.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-8",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 181.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-11",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 256.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 1056.0, 545.0, 80.0, 22.0 ],
                    "text": "p osc_control"
                }
            },
            {
                "box": {
                    "id": "obj-160",
                    "maxclass": "newobj",
                    "numinlets": 4,
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
                        "rect": [ 78.0, 106.0, 407.0, 351.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-46",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 155.25, 204.5, 169.0, 22.0 ],
                                    "text": "prepend poly/env.adsr/release"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-47",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 120.27777777777783, 170.5, 168.0, 22.0 ],
                                    "text": "prepend poly/env.adsr/sustain"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-48",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 85.38888888888891, 136.0, 162.0, 22.0 ],
                                    "text": "prepend poly/env.adsr/decay"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-49",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 100.0, 162.0, 22.0 ],
                                    "text": "prepend poly/env.adsr/attack"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-88",
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
                                    "id": "obj-89",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 85.38891600000011, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-90",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 120.27783199999999, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-91",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 155.25, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-92",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 269.5, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-92", 0 ],
                                    "source": [ "obj-46", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-92", 0 ],
                                    "source": [ "obj-47", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-92", 0 ],
                                    "source": [ "obj-48", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-92", 0 ],
                                    "source": [ "obj-49", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-49", 0 ],
                                    "source": [ "obj-88", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-48", 0 ],
                                    "source": [ "obj-89", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-47", 0 ],
                                    "source": [ "obj-90", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-46", 0 ],
                                    "source": [ "obj-91", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 1048.0, 652.0, 81.0, 22.0 ],
                    "text": "p env_control"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "id": "obj-161",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1153.0, 581.0, 42.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 160.43959731543623, 298.93072524999997, 41.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0.5 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "env_sustain",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "sustain",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "env_sustain"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "id": "obj-29",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1101.0, 581.0, 42.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 106.93959731543623, 298.93072524999997, 41.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 3.0,
                            "parameter_initial": [ 30 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "env_decay",
                            "parameter_mmax": 5000.0,
                            "parameter_mmin": 20.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "decay",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "varname": "env_decay"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "id": "obj-163",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1197.0, 581.0, 42.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 214.43959731543623, 298.93072524999997, 41.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 5.0,
                            "parameter_initial": [ 300 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "env_release",
                            "parameter_mmax": 5000.0,
                            "parameter_mmin": 50.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "release",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "varname": "env_release"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "id": "obj-164",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1048.0, 581.0, 42.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 50.625, 298.93072524999997, 41.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 3.0,
                            "parameter_initial": [ 30 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "env_attack",
                            "parameter_mmax": 5000.0,
                            "parameter_mmin": 20.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "attack",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "varname": "env_attack"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubblepoint": 0.55,
                    "bubbleusescolors": 1,
                    "id": "obj-165",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 268.0, 957.0, 152.0, 51.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 95.625, 121.0, 204.0, 37.0 ],
                    "style": "rnbo-bubble",
                    "text": "Click: Load preset\nShift+click: Save/overwrite preset"
                }
            },
            {
                "box": {
                    "id": "obj-166",
                    "maxclass": "preset",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                    "patching_rect": [ 213.0, 969.0, 41.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 42.625, 126.0, 43.0, 29.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 5, "obj-32", "live.dial", "float", 0.5, 5, "obj-170", "live.dial", "float", 0.5, 5, "obj-169", "live.dial", "float", 10.0, 5, "obj-41", "live.dial", "float", 20.0, 5, "obj-164", "live.dial", "float", 30.0, 5, "obj-163", "live.dial", "float", 318.4020080566406, 5, "obj-29", "live.dial", "float", 30.0, 5, "obj-161", "live.dial", "float", 0.5, 5, "obj-156", "live.dial", "float", 0.0, 5, "obj-22", "live.dial", "float", 10.0, 5, "obj-155", "live.dial", "float", 0.5 ]
                        },
                        {
                            "number": 2,
                            "data": [ 5, "obj-32", "live.dial", "float", 0.625984251499176, 5, "obj-170", "live.dial", "float", 0.75, 5, "obj-169", "live.dial", "float", 1.751514554023743, 5, "obj-41", "live.dial", "float", 45.0, 5, "obj-164", "live.dial", "float", 30.0, 5, "obj-163", "live.dial", "float", 380.2007751464844, 5, "obj-29", "live.dial", "float", 30.0, 5, "obj-161", "live.dial", "float", 0.5, 5, "obj-156", "live.dial", "float", 0.62992125749588, 5, "obj-22", "live.dial", "float", 10.0, 5, "obj-155", "live.dial", "float", 0.5 ]
                        },
                        {
                            "number": 3,
                            "data": [ 5, "obj-32", "live.dial", "float", 0.263779550790787, 5, "obj-170", "live.dial", "float", 0.153543308377266, 5, "obj-169", "live.dial", "float", 1.148991942405701, 5, "obj-41", "live.dial", "float", 69.0, 5, "obj-164", "live.dial", "float", 30.0, 5, "obj-163", "live.dial", "float", 1397.3389892578125, 5, "obj-29", "live.dial", "float", 100.0, 5, "obj-161", "live.dial", "float", 0.5, 5, "obj-156", "live.dial", "float", 0.299212604761124, 5, "obj-22", "live.dial", "float", 10.0, 5, "obj-155", "live.dial", "float", 0.5 ]
                        },
                        {
                            "number": 4,
                            "data": [ 5, "obj-32", "live.dial", "float", 0.56299215555191, 5, "obj-170", "live.dial", "float", 0.814960658550262, 5, "obj-169", "live.dial", "float", 2.902958393096924, 5, "obj-41", "live.dial", "float", 72.0, 5, "obj-164", "live.dial", "float", 30.0, 5, "obj-163", "live.dial", "float", 600.0, 5, "obj-29", "live.dial", "float", 100.0, 5, "obj-161", "live.dial", "float", 0.5, 5, "obj-156", "live.dial", "float", 0.299212604761124, 5, "obj-22", "live.dial", "float", 10.0, 5, "obj-155", "live.dial", "float", 0.5 ]
                        }
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "id": "obj-41",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1165.0, 475.0, 27.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 153.25419463087246, 214.93072525000002, 57.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 20 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "num_partials",
                            "parameter_mmax": 99.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "harmonics",
                            "parameter_type": 1,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "num_partials"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubblepoint": 0.55,
                    "bubbleusescolors": 1,
                    "id": "obj-168",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 415.0, 799.0, 152.0, 37.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 468.93959731543623, 386.0, 161.0, 37.0 ],
                    "style": "rnbo-bubble",
                    "text": "Double-click in locked patcher to open"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "id": "obj-169",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1128.0, 475.0, 27.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 99.75419463087246, 214.93072525000002, 57.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 5.0,
                            "parameter_initial": [ 10 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "partials_decay",
                            "parameter_mmax": 100.0,
                            "parameter_mmin": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "harm decay",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "partials_decay"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "id": "obj-170",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1094.0, 475.0, 27.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 207.25419463087246, 214.93072525000002, 57.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0.5 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "balance",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "balance",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "balance"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "id": "obj-32",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1056.0, 475.0, 27.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 42.43959731543623, 214.93072525000002, 57.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0.5 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "osc_gain",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "osc gain",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "osc_gain"
                }
            },
            {
                "box": {
                    "id": "obj-171",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "orientation": 1,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 213.0, 843.0, 174.0, 47.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 112.625, 395.0, 152.0, 47.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.gain~[1]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 0,
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
                    "id": "obj-172",
                    "local": 1,
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 213.0, 910.0, 45.0, 45.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 42.625, 393.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "autosave": 1,
                    "fontsize": 18.0,
                    "id": "obj-173",
                    "inletInfo": {
                        "IOInfo": [
                            {
                                "type": "midi",
                                "index": -1,
                                "tag": "",
                                "comment": ""
                            }
                        ]
                    },
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 4,
                    "outletInfo": {
                        "IOInfo": [
                            {
                                "type": "signal",
                                "index": 1,
                                "tag": "out1",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 2,
                                "tag": "out2",
                                "comment": ""
                            },
                            {
                                "type": "midi",
                                "index": -1,
                                "tag": "",
                                "comment": ""
                            }
                        ]
                    },
                    "outlettype": [ "signal", "signal", "int", "list" ],
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
                        "rect": [ 609.0, 170.0, 500.0, 579.0 ],
                        "default_fontname": "Lato",
                        "title": "untitled",
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 238.0, 518.0, 43.0, 23.0 ],
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "out~_obj-5",
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
                                    "bubblepoint": 0.55,
                                    "bubbleusescolors": 1,
                                    "id": "obj-3",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 313.5, 435.0, 182.0, 50.0 ],
                                    "style": "rnbo-bubble",
                                    "text": "The @exposeparams attribute allows the parent patcher to access all gen~ params"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "genpatcher": {
                                        "patcher": {
                                            "fileversion": 1,
                                            "appversion": {
                                                "major": 9,
                                                "minor": 1,
                                                "revision": 2,
                                                "architecture": "x64",
                                                "modernui": 1
                                            },
                                            "classnamespace": "dsp.gen",
                                            "rect": [ 204.0, 87.0, 554.0, 602.0 ],
                                            "default_fontname": "Lato",
                                            "boxes": [
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "in 1",
                                                        "patching_rect": [ 10.499992, 448.0, 30.0, 23.0 ],
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "id": "obj-97",
                                                        "outlettype": [ "" ]
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "comment",
                                                        "text": "output taps",
                                                        "patching_rect": [ 154.0, 364.0, 71.0, 21.0 ],
                                                        "numinlets": 1,
                                                        "numoutlets": 0,
                                                        "id": "obj-101"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "param drywet 0.5 @min 0 @max 1",
                                                        "patching_rect": [ 133.5, 452.0, 191.0, 23.0 ],
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "id": "obj-99",
                                                        "outlettype": [ "" ]
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "mix",
                                                        "patching_rect": [ 85.166664, 500.0, 40.0, 23.0 ],
                                                        "numinlets": 3,
                                                        "numoutlets": 1,
                                                        "id": "obj-96",
                                                        "outlettype": [ "" ]
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "mix",
                                                        "patching_rect": [ 28.5, 500.0, 40.0, 23.0 ],
                                                        "numinlets": 3,
                                                        "numoutlets": 1,
                                                        "id": "obj-95",
                                                        "outlettype": [ "" ]
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "out 2",
                                                        "patching_rect": [ 85.166664, 530.0, 38.0, 23.0 ],
                                                        "numinlets": 1,
                                                        "numoutlets": 0,
                                                        "id": "obj-94"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "out 1",
                                                        "patching_rect": [ 28.5, 530.0, 38.0, 23.0 ],
                                                        "numinlets": 1,
                                                        "numoutlets": 0,
                                                        "id": "obj-93"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "* 0.6",
                                                        "patching_rect": [ 95.666664, 393.0, 35.0, 23.0 ],
                                                        "numinlets": 1,
                                                        "numoutlets": 1,
                                                        "id": "obj-92",
                                                        "outlettype": [ "" ]
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "* 0.6",
                                                        "patching_rect": [ 39.0, 393.0, 35.0, 23.0 ],
                                                        "numinlets": 1,
                                                        "numoutlets": 1,
                                                        "id": "obj-91",
                                                        "outlettype": [ "" ]
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "-",
                                                        "patching_rect": [ 95.666664, 364.0, 47.333332, 23.0 ],
                                                        "numinlets": 2,
                                                        "numoutlets": 1,
                                                        "id": "obj-90",
                                                        "outlettype": [ "" ]
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "-",
                                                        "patching_rect": [ 39.0, 364.0, 47.333332, 23.0 ],
                                                        "numinlets": 2,
                                                        "numoutlets": 1,
                                                        "id": "obj-89",
                                                        "outlettype": [ "" ]
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "gen @title tank",
                                                        "patching_rect": [ 39.0, 331.5, 104.0, 23.0 ],
                                                        "numinlets": 5,
                                                        "numoutlets": 4,
                                                        "id": "obj-88",
                                                        "outlettype": [ "", "", "", "" ],
                                                        "patcher": {
                                                            "fileversion": 1,
                                                            "appversion": {
                                                                "major": 9,
                                                                "minor": 1,
                                                                "revision": 2,
                                                                "architecture": "x64",
                                                                "modernui": 1
                                                            },
                                                            "classnamespace": "dsp.gen",
                                                            "rect": [ 669.0, 79.0, 737.0, 764.0 ],
                                                            "boxes": [
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "out 3",
                                                                        "patching_rect": [ 113.5, 661.5, 37.0, 22.0 ],
                                                                        "numinlets": 1,
                                                                        "numoutlets": 0,
                                                                        "id": "obj-88"
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "out 2",
                                                                        "patching_rect": [ 71.5, 661.5, 37.0, 22.0 ],
                                                                        "numinlets": 1,
                                                                        "numoutlets": 0,
                                                                        "id": "obj-89"
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "2673",
                                                                        "patching_rect": [ 125.5, 598.5, 37.0, 22.0 ],
                                                                        "numinlets": 0,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-72",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "1066",
                                                                        "patching_rect": [ 80.5, 598.5, 37.0, 22.0 ],
                                                                        "numinlets": 0,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-78",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "1996",
                                                                        "patching_rect": [ 535.5, 598.5, 37.0, 22.0 ],
                                                                        "numinlets": 0,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-70",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "121",
                                                                        "patching_rect": [ 499.5, 598.5, 31.0, 22.0 ],
                                                                        "numinlets": 0,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-71",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "out 1",
                                                                        "patching_rect": [ 541.5, 661.5, 37.0, 22.0 ],
                                                                        "numinlets": 1,
                                                                        "numoutlets": 0,
                                                                        "id": "obj-54"
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "out 4",
                                                                        "patching_rect": [ 499.5, 661.5, 37.0, 22.0 ],
                                                                        "numinlets": 1,
                                                                        "numoutlets": 0,
                                                                        "id": "obj-69"
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "out 2",
                                                                        "patching_rect": [ 607.5, 546.5, 37.0, 22.0 ],
                                                                        "numinlets": 1,
                                                                        "numoutlets": 0,
                                                                        "id": "obj-49"
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "out 4",
                                                                        "patching_rect": [ 565.5, 546.5, 37.0, 22.0 ],
                                                                        "numinlets": 1,
                                                                        "numoutlets": 0,
                                                                        "id": "obj-52"
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "1913",
                                                                        "patching_rect": [ 614.5, 459.5, 37.0, 22.0 ],
                                                                        "numinlets": 0,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-36",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "335",
                                                                        "patching_rect": [ 578.5, 459.5, 31.0, 22.0 ],
                                                                        "numinlets": 0,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-43",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "out 4",
                                                                        "patching_rect": [ 175.5, 546.5, 37.0, 22.0 ],
                                                                        "numinlets": 1,
                                                                        "numoutlets": 0,
                                                                        "id": "obj-35"
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "out 2",
                                                                        "patching_rect": [ 133.5, 546.5, 37.0, 22.0 ],
                                                                        "numinlets": 1,
                                                                        "numoutlets": 0,
                                                                        "id": "obj-34"
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "1228",
                                                                        "patching_rect": [ 186.5, 465.5, 37.0, 22.0 ],
                                                                        "numinlets": 0,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-33",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "187",
                                                                        "patching_rect": [ 150.5, 465.5, 31.0, 22.0 ],
                                                                        "numinlets": 0,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-32",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "out 4",
                                                                        "patching_rect": [ 529.5, 324.0, 37.0, 22.0 ],
                                                                        "numinlets": 1,
                                                                        "numoutlets": 0,
                                                                        "id": "obj-31"
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "out 1",
                                                                        "patching_rect": [ 489.5, 324.0, 37.0, 22.0 ],
                                                                        "numinlets": 1,
                                                                        "numoutlets": 0,
                                                                        "id": "obj-30"
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "2111",
                                                                        "patching_rect": [ 578.5, 266.0, 35.0, 22.0 ],
                                                                        "numinlets": 0,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-27",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "2974",
                                                                        "patching_rect": [ 536.0, 266.0, 37.0, 22.0 ],
                                                                        "numinlets": 0,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-28",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "266",
                                                                        "patching_rect": [ 499.5, 266.0, 31.0, 22.0 ],
                                                                        "numinlets": 0,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-29",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "1990",
                                                                        "patching_rect": [ 150.5, 266.0, 37.0, 22.0 ],
                                                                        "numinlets": 0,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-25",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "out 2",
                                                                        "patching_rect": [ 101.5, 324.0, 37.0, 22.0 ],
                                                                        "numinlets": 1,
                                                                        "numoutlets": 0,
                                                                        "id": "obj-24"
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "out 3",
                                                                        "patching_rect": [ 61.5, 324.0, 37.0, 22.0 ],
                                                                        "numinlets": 1,
                                                                        "numoutlets": 0,
                                                                        "id": "obj-23"
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "3627",
                                                                        "patching_rect": [ 108.0, 266.0, 37.0, 22.0 ],
                                                                        "numinlets": 0,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-22",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "353",
                                                                        "patching_rect": [ 71.5, 266.0, 31.0, 22.0 ],
                                                                        "numinlets": 0,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-21",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "in 5",
                                                                        "patching_rect": [ 508.5, 695.5, 30.0, 22.0 ],
                                                                        "numinlets": 0,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-9",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "in 5",
                                                                        "patching_rect": [ 508.5, 418.5, 30.0, 22.0 ],
                                                                        "numinlets": 0,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-7",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "*",
                                                                        "patching_rect": [ 469.5, 418.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-8",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "in 5",
                                                                        "patching_rect": [ 80.5, 418.5, 30.0, 22.0 ],
                                                                        "numinlets": 0,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-6",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "in 5",
                                                                        "patching_rect": [ 80.5, 695.5, 30.0, 22.0 ],
                                                                        "numinlets": 0,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-5",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "in 4",
                                                                        "patching_rect": [ 585.5, 347.5, 30.0, 22.0 ],
                                                                        "numinlets": 0,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-2",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "history",
                                                                        "patching_rect": [ 614.5, 382.5, 47.0, 22.0 ],
                                                                        "numinlets": 1,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-3",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "mix",
                                                                        "patching_rect": [ 469.5, 382.5, 135.0, 22.0 ],
                                                                        "numinlets": 3,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-4",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "in 4",
                                                                        "patching_rect": [ 157.5, 347.5, 30.0, 22.0 ],
                                                                        "numinlets": 0,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-1",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "*",
                                                                        "patching_rect": [ 469.5, 695.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-62",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "delay 3163 3",
                                                                        "patching_rect": [ 469.5, 631.5, 79.0, 22.0 ],
                                                                        "numinlets": 4,
                                                                        "numoutlets": 3,
                                                                        "id": "obj-63",
                                                                        "outlettype": [ "", "", "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "*",
                                                                        "patching_rect": [ 469.5, 508.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-64",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "*",
                                                                        "patching_rect": [ 520.5, 546.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-65",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "-",
                                                                        "patching_rect": [ 469.5, 465.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-66",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "+",
                                                                        "patching_rect": [ 469.5, 546.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-67",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "delay 2656 3",
                                                                        "patching_rect": [ 520.5, 504.5, 79.0, 22.0 ],
                                                                        "numinlets": 4,
                                                                        "numoutlets": 3,
                                                                        "id": "obj-68",
                                                                        "outlettype": [ "", "", "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "delay 4217 4",
                                                                        "patching_rect": [ 469.5, 293.5, 79.0, 22.0 ],
                                                                        "numinlets": 5,
                                                                        "numoutlets": 4,
                                                                        "id": "obj-73",
                                                                        "outlettype": [ "", "", "", "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "cycle 0.07",
                                                                        "patching_rect": [ 563.5, 87.5, 64.0, 22.0 ],
                                                                        "numinlets": 0,
                                                                        "numoutlets": 2,
                                                                        "id": "obj-74",
                                                                        "outlettype": [ "", "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "* 16",
                                                                        "patching_rect": [ 563.5, 118.5, 33.0, 22.0 ],
                                                                        "numinlets": 1,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-75",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "+ 908",
                                                                        "patching_rect": [ 563.5, 148.5, 41.0, 22.0 ],
                                                                        "numinlets": 1,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-76",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "*",
                                                                        "patching_rect": [ 469.5, 191.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-77",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "*",
                                                                        "patching_rect": [ 520.5, 229.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-79",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "+",
                                                                        "patching_rect": [ 469.5, 148.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-80",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "!-",
                                                                        "patching_rect": [ 469.5, 229.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-81",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "delay 924",
                                                                        "patching_rect": [ 520.5, 187.5, 62.0, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-82",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "*",
                                                                        "patching_rect": [ 41.5, 695.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-61",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "delay 3720 3",
                                                                        "patching_rect": [ 41.5, 631.5, 79.0, 22.0 ],
                                                                        "numinlets": 4,
                                                                        "numoutlets": 3,
                                                                        "id": "obj-60",
                                                                        "outlettype": [ "", "", "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "*",
                                                                        "patching_rect": [ 41.5, 508.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-55",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "*",
                                                                        "patching_rect": [ 92.5, 546.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-56",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "-",
                                                                        "patching_rect": [ 41.5, 465.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-57",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "+",
                                                                        "patching_rect": [ 41.5, 546.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-58",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "delay 1800 3",
                                                                        "patching_rect": [ 92.5, 504.5, 79.0, 22.0 ],
                                                                        "numinlets": 4,
                                                                        "numoutlets": 3,
                                                                        "id": "obj-59",
                                                                        "outlettype": [ "", "", "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "*",
                                                                        "patching_rect": [ 41.5, 418.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-53",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "history",
                                                                        "patching_rect": [ 186.5, 382.5, 47.0, 22.0 ],
                                                                        "numinlets": 1,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-51",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "mix",
                                                                        "patching_rect": [ 41.5, 382.5, 135.0, 22.0 ],
                                                                        "numinlets": 3,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-50",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "delay 4453 4",
                                                                        "patching_rect": [ 41.5, 293.5, 79.0, 22.0 ],
                                                                        "numinlets": 5,
                                                                        "numoutlets": 4,
                                                                        "id": "obj-48",
                                                                        "outlettype": [ "", "", "", "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "cycle 0.1",
                                                                        "patching_rect": [ 135.5, 87.5, 57.0, 22.0 ],
                                                                        "numinlets": 0,
                                                                        "numoutlets": 2,
                                                                        "id": "obj-47",
                                                                        "outlettype": [ "", "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "* 16",
                                                                        "patching_rect": [ 135.5, 118.5, 33.0, 22.0 ],
                                                                        "numinlets": 1,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-46",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "+ 672",
                                                                        "patching_rect": [ 135.5, 148.5, 41.0, 22.0 ],
                                                                        "numinlets": 1,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-45",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "*",
                                                                        "patching_rect": [ 41.5, 191.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-44",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "*",
                                                                        "patching_rect": [ 92.5, 229.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-42",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "+",
                                                                        "patching_rect": [ 41.5, 148.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-41",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "!-",
                                                                        "patching_rect": [ 41.5, 229.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-40",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "delay 688",
                                                                        "patching_rect": [ 92.5, 187.5, 62.0, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-39",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "+",
                                                                        "patching_rect": [ 469.5, 87.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-38",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "+",
                                                                        "patching_rect": [ 41.5, 87.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-37",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "in 1",
                                                                        "patching_rect": [ 343.5, 14.0, 30.0, 22.0 ],
                                                                        "numinlets": 0,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-83",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "in 2",
                                                                        "patching_rect": [ 198.5, 148.5, 30.0, 22.0 ],
                                                                        "numinlets": 0,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-84",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "in 3",
                                                                        "patching_rect": [ 103.0, 465.5, 30.0, 22.0 ],
                                                                        "numinlets": 0,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-85",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "in 2",
                                                                        "patching_rect": [ 628.0, 148.5, 30.0, 22.0 ],
                                                                        "numinlets": 0,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-86",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "in 3",
                                                                        "patching_rect": [ 531.0, 459.5, 30.0, 22.0 ],
                                                                        "numinlets": 0,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-87",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                }
                                                            ],
                                                            "lines": [
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-1", 0 ],
                                                                        "destination": [ "obj-50", 2 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-2", 0 ],
                                                                        "destination": [ "obj-4", 2 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-21", 0 ],
                                                                        "destination": [ "obj-48", 2 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-22", 0 ],
                                                                        "destination": [ "obj-48", 3 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-25", 0 ],
                                                                        "destination": [ "obj-48", 4 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-27", 0 ],
                                                                        "destination": [ "obj-73", 4 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-28", 0 ],
                                                                        "destination": [ "obj-73", 3 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-29", 0 ],
                                                                        "destination": [ "obj-73", 2 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-3", 0 ],
                                                                        "destination": [ "obj-4", 1 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-32", 0 ],
                                                                        "destination": [ "obj-59", 2 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-33", 0 ],
                                                                        "destination": [ "obj-59", 3 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-36", 0 ],
                                                                        "destination": [ "obj-68", 3 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-37", 0 ],
                                                                        "destination": [ "obj-41", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-38", 0 ],
                                                                        "destination": [ "obj-80", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-39", 0 ],
                                                                        "destination": [ "obj-40", 1 ],
                                                                        "order": 1
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-39", 0 ],
                                                                        "destination": [ "obj-42", 0 ],
                                                                        "order": 0
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-4", 0 ],
                                                                        "destination": [ "obj-3", 0 ],
                                                                        "order": 0
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-4", 0 ],
                                                                        "destination": [ "obj-8", 0 ],
                                                                        "order": 1
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-40", 0 ],
                                                                        "destination": [ "obj-48", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-41", 0 ],
                                                                        "destination": [ "obj-39", 0 ],
                                                                        "order": 0
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-41", 0 ],
                                                                        "destination": [ "obj-44", 0 ],
                                                                        "order": 1
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-42", 0 ],
                                                                        "destination": [ "obj-41", 1 ],
                                                                        "midpoints": [ 102.0, 262.5, 19.75, 262.5, 19.75, 137.5, 61.5, 137.5 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-43", 0 ],
                                                                        "destination": [ "obj-68", 2 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-44", 0 ],
                                                                        "destination": [ "obj-40", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-45", 0 ],
                                                                        "destination": [ "obj-39", 1 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-46", 0 ],
                                                                        "destination": [ "obj-45", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-47", 0 ],
                                                                        "destination": [ "obj-46", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-48", 2 ],
                                                                        "destination": [ "obj-23", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-48", 1 ],
                                                                        "destination": [ "obj-23", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-48", 3 ],
                                                                        "destination": [ "obj-24", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-48", 0 ],
                                                                        "destination": [ "obj-50", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-5", 0 ],
                                                                        "destination": [ "obj-61", 1 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-50", 0 ],
                                                                        "destination": [ "obj-51", 0 ],
                                                                        "order": 0
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-50", 0 ],
                                                                        "destination": [ "obj-53", 0 ],
                                                                        "order": 1
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-51", 0 ],
                                                                        "destination": [ "obj-50", 1 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-53", 0 ],
                                                                        "destination": [ "obj-57", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-55", 0 ],
                                                                        "destination": [ "obj-58", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-56", 0 ],
                                                                        "destination": [ "obj-57", 1 ],
                                                                        "midpoints": [ 102.0, 579.5, 19.75, 579.5, 19.75, 454.5, 61.5, 454.5 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-57", 0 ],
                                                                        "destination": [ "obj-55", 0 ],
                                                                        "order": 1
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-57", 0 ],
                                                                        "destination": [ "obj-59", 0 ],
                                                                        "order": 0
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-58", 0 ],
                                                                        "destination": [ "obj-60", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-59", 1 ],
                                                                        "destination": [ "obj-34", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-59", 2 ],
                                                                        "destination": [ "obj-35", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-59", 0 ],
                                                                        "destination": [ "obj-56", 0 ],
                                                                        "order": 0
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-59", 0 ],
                                                                        "destination": [ "obj-58", 1 ],
                                                                        "order": 1
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-6", 0 ],
                                                                        "destination": [ "obj-53", 1 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-60", 0 ],
                                                                        "destination": [ "obj-61", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-60", 2 ],
                                                                        "destination": [ "obj-88", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-60", 1 ],
                                                                        "destination": [ "obj-89", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-61", 0 ],
                                                                        "destination": [ "obj-38", 0 ],
                                                                        "midpoints": [ 51.0, 731.5, 359.5, 731.5, 359.5, 76.5, 479.0, 76.5 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-62", 0 ],
                                                                        "destination": [ "obj-37", 1 ],
                                                                        "midpoints": [ 479.0, 730.5, 349.0, 730.5, 349.0, 76.5, 61.5, 76.5 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-63", 2 ],
                                                                        "destination": [ "obj-54", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-63", 0 ],
                                                                        "destination": [ "obj-62", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-63", 1 ],
                                                                        "destination": [ "obj-69", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-64", 0 ],
                                                                        "destination": [ "obj-67", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-65", 0 ],
                                                                        "destination": [ "obj-66", 1 ],
                                                                        "midpoints": [ 530.0, 579.5, 447.75, 579.5, 447.75, 454.5, 489.5, 454.5 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-66", 0 ],
                                                                        "destination": [ "obj-64", 0 ],
                                                                        "order": 1
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-66", 0 ],
                                                                        "destination": [ "obj-68", 0 ],
                                                                        "order": 0
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-67", 0 ],
                                                                        "destination": [ "obj-63", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-68", 2 ],
                                                                        "destination": [ "obj-49", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-68", 1 ],
                                                                        "destination": [ "obj-52", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-68", 0 ],
                                                                        "destination": [ "obj-65", 0 ],
                                                                        "order": 0
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-68", 0 ],
                                                                        "destination": [ "obj-67", 1 ],
                                                                        "order": 1
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-7", 0 ],
                                                                        "destination": [ "obj-8", 1 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-70", 0 ],
                                                                        "destination": [ "obj-63", 3 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-71", 0 ],
                                                                        "destination": [ "obj-63", 2 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-72", 0 ],
                                                                        "destination": [ "obj-60", 3 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-73", 2 ],
                                                                        "destination": [ "obj-30", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-73", 1 ],
                                                                        "destination": [ "obj-30", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-73", 3 ],
                                                                        "destination": [ "obj-31", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-73", 0 ],
                                                                        "destination": [ "obj-4", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-74", 0 ],
                                                                        "destination": [ "obj-75", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-75", 0 ],
                                                                        "destination": [ "obj-76", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-76", 0 ],
                                                                        "destination": [ "obj-82", 1 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-77", 0 ],
                                                                        "destination": [ "obj-81", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-78", 0 ],
                                                                        "destination": [ "obj-60", 2 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-79", 0 ],
                                                                        "destination": [ "obj-80", 1 ],
                                                                        "midpoints": [ 530.0, 262.5, 447.75, 262.5, 447.75, 137.5, 489.5, 137.5 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-8", 0 ],
                                                                        "destination": [ "obj-66", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-80", 0 ],
                                                                        "destination": [ "obj-77", 0 ],
                                                                        "order": 1
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-80", 0 ],
                                                                        "destination": [ "obj-82", 0 ],
                                                                        "order": 0
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-81", 0 ],
                                                                        "destination": [ "obj-73", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-82", 0 ],
                                                                        "destination": [ "obj-79", 0 ],
                                                                        "order": 0
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-82", 0 ],
                                                                        "destination": [ "obj-81", 1 ],
                                                                        "order": 1
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-83", 0 ],
                                                                        "destination": [ "obj-37", 0 ],
                                                                        "midpoints": [ 353.0, 61.75, 51.0, 61.75 ],
                                                                        "order": 1
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-83", 0 ],
                                                                        "destination": [ "obj-38", 1 ],
                                                                        "midpoints": [ 353.0, 61.75, 489.5, 61.75 ],
                                                                        "order": 0
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-84", 0 ],
                                                                        "destination": [ "obj-42", 1 ],
                                                                        "order": 0
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-84", 0 ],
                                                                        "destination": [ "obj-44", 1 ],
                                                                        "order": 1
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-85", 0 ],
                                                                        "destination": [ "obj-55", 1 ],
                                                                        "order": 1
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-85", 0 ],
                                                                        "destination": [ "obj-56", 1 ],
                                                                        "order": 0
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-86", 0 ],
                                                                        "destination": [ "obj-77", 1 ],
                                                                        "order": 1
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-86", 0 ],
                                                                        "destination": [ "obj-79", 1 ],
                                                                        "order": 0
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-87", 0 ],
                                                                        "destination": [ "obj-64", 1 ],
                                                                        "order": 1
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-87", 0 ],
                                                                        "destination": [ "obj-65", 1 ],
                                                                        "order": 0
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-9", 0 ],
                                                                        "destination": [ "obj-62", 1 ]
                                                                    }
                                                                }
                                                            ],
                                                            "editing_bgcolor": [ 0.9, 0.9, 0.9, 1.0 ]
                                                        }
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "param decaydiffusion2 0.5 @min 0 @max 1",
                                                        "patching_rect": [ 81.5, 252.333328, 238.0, 23.0 ],
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "id": "obj-54",
                                                        "outlettype": [ "" ]
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "param decay 0.5 @min 0 @max 1",
                                                        "patching_rect": [ 124.0, 305.0, 184.0, 23.0 ],
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "id": "obj-52",
                                                        "outlettype": [ "" ]
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "param damping 0.5 @min 0 @max 1",
                                                        "patching_rect": [ 102.75, 278.666656, 199.0, 23.0 ],
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "id": "obj-49",
                                                        "outlettype": [ "" ]
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "param decaydiffusion1 0.7 @min 0 @max 1",
                                                        "patching_rect": [ 60.25, 226.0, 238.0, 23.0 ],
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "id": "obj-43",
                                                        "outlettype": [ "" ]
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "mstosamps",
                                                        "patching_rect": [ 181.0, 40.0, 70.0, 23.0 ],
                                                        "numinlets": 1,
                                                        "numoutlets": 1,
                                                        "id": "obj-36",
                                                        "outlettype": [ "" ]
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "gen @title \"input diffusion allpass series\"",
                                                        "patching_rect": [ 39.0, 167.5, 223.0, 23.0 ],
                                                        "numinlets": 3,
                                                        "numoutlets": 1,
                                                        "id": "obj-35",
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
                                                            "classnamespace": "dsp.gen",
                                                            "rect": [ 80.0, 104.0, 372.0, 680.0 ],
                                                            "boxes": [
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "+",
                                                                        "patching_rect": [ 25.0, 605.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-20",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "-",
                                                                        "patching_rect": [ 25.0, 526.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-21",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "*",
                                                                        "patching_rect": [ 25.0, 565.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-22",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "*",
                                                                        "patching_rect": [ 118.0, 605.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-23",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "delay 277",
                                                                        "patching_rect": [ 118.0, 565.5, 62.0, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-24",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "+",
                                                                        "patching_rect": [ 25.0, 467.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-25",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "-",
                                                                        "patching_rect": [ 25.0, 388.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-26",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "*",
                                                                        "patching_rect": [ 25.0, 427.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-27",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "*",
                                                                        "patching_rect": [ 118.0, 467.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-28",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "delay 379",
                                                                        "patching_rect": [ 118.0, 427.5, 62.0, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-29",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "+",
                                                                        "patching_rect": [ 25.0, 301.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-15",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "-",
                                                                        "patching_rect": [ 25.0, 222.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-16",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "*",
                                                                        "patching_rect": [ 25.0, 261.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-17",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "*",
                                                                        "patching_rect": [ 118.0, 301.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-18",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "delay 107",
                                                                        "patching_rect": [ 118.0, 261.5, 62.0, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-19",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "+",
                                                                        "patching_rect": [ 25.0, 163.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-14",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "-",
                                                                        "patching_rect": [ 25.0, 84.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-13",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "*",
                                                                        "patching_rect": [ 25.0, 123.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-12",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "*",
                                                                        "patching_rect": [ 118.0, 163.5, 29.5, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-9",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "delay 142",
                                                                        "patching_rect": [ 118.0, 123.5, 62.0, 22.0 ],
                                                                        "numinlets": 2,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-8",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "in 1",
                                                                        "patching_rect": [ 25.0, 29.0, 30.0, 22.0 ],
                                                                        "numinlets": 0,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-31",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "in 2",
                                                                        "patching_rect": [ 270.5, 29.0, 30.0, 22.0 ],
                                                                        "numinlets": 0,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-32",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "in 3",
                                                                        "patching_rect": [ 280.5, 333.0, 30.0, 22.0 ],
                                                                        "numinlets": 0,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-33",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "out 1",
                                                                        "patching_rect": [ 25.0, 645.0, 38.0, 22.0 ],
                                                                        "numinlets": 1,
                                                                        "numoutlets": 0,
                                                                        "id": "obj-34"
                                                                    }
                                                                }
                                                            ],
                                                            "lines": [
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-12", 0 ],
                                                                        "destination": [ "obj-14", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-13", 0 ],
                                                                        "destination": [ "obj-12", 0 ],
                                                                        "order": 1
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-13", 0 ],
                                                                        "destination": [ "obj-8", 0 ],
                                                                        "order": 0
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-14", 0 ],
                                                                        "destination": [ "obj-16", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-15", 0 ],
                                                                        "destination": [ "obj-26", 0 ],
                                                                        "midpoints": [ 34.5, 355.5, 34.5, 355.5 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-16", 0 ],
                                                                        "destination": [ "obj-17", 0 ],
                                                                        "order": 1
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-16", 0 ],
                                                                        "destination": [ "obj-19", 0 ],
                                                                        "order": 0
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-17", 0 ],
                                                                        "destination": [ "obj-15", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-18", 0 ],
                                                                        "destination": [ "obj-16", 1 ],
                                                                        "midpoints": [ 127.5, 334.5, 211.25, 334.5, 211.25, 211.5, 45.0, 211.5 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-19", 0 ],
                                                                        "destination": [ "obj-15", 1 ],
                                                                        "order": 1
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-19", 0 ],
                                                                        "destination": [ "obj-18", 0 ],
                                                                        "order": 0
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-20", 0 ],
                                                                        "destination": [ "obj-34", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-21", 0 ],
                                                                        "destination": [ "obj-22", 0 ],
                                                                        "order": 1
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-21", 0 ],
                                                                        "destination": [ "obj-24", 0 ],
                                                                        "order": 0
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-22", 0 ],
                                                                        "destination": [ "obj-20", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-23", 0 ],
                                                                        "destination": [ "obj-21", 1 ],
                                                                        "midpoints": [ 127.5, 638.5, 211.25, 638.5, 211.25, 515.5, 45.0, 515.5 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-24", 0 ],
                                                                        "destination": [ "obj-20", 1 ],
                                                                        "order": 1
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-24", 0 ],
                                                                        "destination": [ "obj-23", 0 ],
                                                                        "order": 0
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-25", 0 ],
                                                                        "destination": [ "obj-21", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-26", 0 ],
                                                                        "destination": [ "obj-27", 0 ],
                                                                        "order": 1
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-26", 0 ],
                                                                        "destination": [ "obj-29", 0 ],
                                                                        "order": 0
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-27", 0 ],
                                                                        "destination": [ "obj-25", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-28", 0 ],
                                                                        "destination": [ "obj-26", 1 ],
                                                                        "midpoints": [ 127.5, 500.5, 211.25, 500.5, 211.25, 377.5, 45.0, 377.5 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-29", 0 ],
                                                                        "destination": [ "obj-25", 1 ],
                                                                        "order": 1
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-29", 0 ],
                                                                        "destination": [ "obj-28", 0 ],
                                                                        "order": 0
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-31", 0 ],
                                                                        "destination": [ "obj-13", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-32", 0 ],
                                                                        "destination": [ "obj-12", 1 ],
                                                                        "order": 3
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-32", 0 ],
                                                                        "destination": [ "obj-17", 1 ],
                                                                        "order": 2
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-32", 0 ],
                                                                        "destination": [ "obj-18", 1 ],
                                                                        "order": 0
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-32", 0 ],
                                                                        "destination": [ "obj-9", 1 ],
                                                                        "order": 1
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-33", 0 ],
                                                                        "destination": [ "obj-22", 1 ],
                                                                        "order": 2
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-33", 0 ],
                                                                        "destination": [ "obj-23", 1 ],
                                                                        "order": 0
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-33", 0 ],
                                                                        "destination": [ "obj-27", 1 ],
                                                                        "order": 3
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-33", 0 ],
                                                                        "destination": [ "obj-28", 1 ],
                                                                        "order": 1
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-8", 0 ],
                                                                        "destination": [ "obj-14", 1 ],
                                                                        "order": 1
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-8", 0 ],
                                                                        "destination": [ "obj-9", 0 ],
                                                                        "order": 0
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-9", 0 ],
                                                                        "destination": [ "obj-13", 1 ],
                                                                        "midpoints": [ 127.5, 196.5, 211.25, 196.5, 211.25, 73.5, 45.0, 73.5 ]
                                                                    }
                                                                }
                                                            ],
                                                            "editing_bgcolor": [ 0.9, 0.9, 0.9, 1.0 ]
                                                        }
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "param indiffusion2 0.625 @min 0 @max 1",
                                                        "patching_rect": [ 289.0, 136.0, 230.0, 23.0 ],
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "id": "obj-11",
                                                        "outlettype": [ "" ]
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "param indiffusion1 0.75 @min 0 @max 1",
                                                        "patching_rect": [ 60.0, 136.0, 224.0, 23.0 ],
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "id": "obj-10",
                                                        "outlettype": [ "" ]
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "param inbandwidth 0.5 @min 0 @max 1",
                                                        "patching_rect": [ 70.5, 68.0, 219.0, 23.0 ],
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "id": "obj-7",
                                                        "outlettype": [ "" ]
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "history",
                                                        "patching_rect": [ 101.5, 98.0, 47.0, 23.0 ],
                                                        "numinlets": 1,
                                                        "numoutlets": 1,
                                                        "id": "obj-6",
                                                        "outlettype": [ "" ]
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "mix",
                                                        "patching_rect": [ 39.0, 98.0, 40.0, 23.0 ],
                                                        "numinlets": 3,
                                                        "numoutlets": 1,
                                                        "id": "obj-5",
                                                        "outlettype": [ "" ]
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "param predelay 10 @min 0 @max 100",
                                                        "patching_rect": [ 181.0, 11.0, 210.0, 23.0 ],
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "id": "obj-4",
                                                        "outlettype": [ "" ]
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "delay samplerate*0.1",
                                                        "patching_rect": [ 49.5, 40.0, 120.0, 23.0 ],
                                                        "numinlets": 2,
                                                        "numoutlets": 1,
                                                        "id": "obj-3",
                                                        "outlettype": [ "" ]
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "in 1",
                                                        "patching_rect": [ 49.5, 12.0, 30.0, 23.0 ],
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "id": "obj-1",
                                                        "outlettype": [ "" ]
                                                    }
                                                }
                                            ],
                                            "lines": [
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-1", 0 ],
                                                        "destination": [ "obj-3", 0 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-10", 0 ],
                                                        "destination": [ "obj-35", 1 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-11", 0 ],
                                                        "destination": [ "obj-35", 2 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-3", 0 ],
                                                        "destination": [ "obj-5", 1 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-35", 0 ],
                                                        "destination": [ "obj-88", 0 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-36", 0 ],
                                                        "destination": [ "obj-3", 1 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-4", 0 ],
                                                        "destination": [ "obj-36", 0 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-43", 0 ],
                                                        "destination": [ "obj-88", 1 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-49", 0 ],
                                                        "destination": [ "obj-88", 3 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-5", 0 ],
                                                        "destination": [ "obj-35", 0 ],
                                                        "order": 1
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-5", 0 ],
                                                        "destination": [ "obj-6", 0 ],
                                                        "order": 0
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-52", 0 ],
                                                        "destination": [ "obj-88", 4 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-54", 0 ],
                                                        "destination": [ "obj-88", 2 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-6", 0 ],
                                                        "destination": [ "obj-5", 0 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-7", 0 ],
                                                        "destination": [ "obj-5", 2 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-88", 1 ],
                                                        "destination": [ "obj-89", 1 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-88", 0 ],
                                                        "destination": [ "obj-89", 0 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-88", 3 ],
                                                        "destination": [ "obj-90", 1 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-88", 2 ],
                                                        "destination": [ "obj-90", 0 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-89", 0 ],
                                                        "destination": [ "obj-91", 0 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-90", 0 ],
                                                        "destination": [ "obj-92", 0 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-91", 0 ],
                                                        "destination": [ "obj-95", 1 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-92", 0 ],
                                                        "destination": [ "obj-96", 1 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-95", 0 ],
                                                        "destination": [ "obj-93", 0 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-96", 0 ],
                                                        "destination": [ "obj-94", 0 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-97", 0 ],
                                                        "destination": [ "obj-95", 0 ],
                                                        "order": 1
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-97", 0 ],
                                                        "destination": [ "obj-96", 0 ],
                                                        "order": 0
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-99", 0 ],
                                                        "destination": [ "obj-95", 2 ],
                                                        "order": 1
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-99", 0 ],
                                                        "destination": [ "obj-96", 2 ],
                                                        "order": 0
                                                    }
                                                }
                                            ],
                                            "bgcolor": [ 0.9, 0.9, 0.9, 1.0 ],
                                            "editing_bgcolor": [ 0.9, 0.9, 0.9, 1.0 ]
                                        }
                                    },
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 124.0, 481.0, 204.0, 23.0 ],
                                    "rnbo_classname": "gen~",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "reverb",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "in1",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "number"
                                            },
                                            "reset": {
                                                "attrOrProp": 1,
                                                "digest": "Reset all param and history objects to initial values",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "bang"
                                            },
                                            "expr": {
                                                "attrOrProp": 2,
                                                "digest": "a gen expression",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "doNotShowInMaxInspector": 1
                                            },
                                            "file": {
                                                "attrOrProp": 2,
                                                "digest": "gendsp file to load",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "doNotShowInMaxInspector": 1
                                            },
                                            "title": {
                                                "attrOrProp": 2,
                                                "digest": "a title",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [ "t" ],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "doNotShowInMaxInspector": 1
                                            },
                                            "t": {
                                                "attrOrProp": 2,
                                                "digest": "a title",
                                                "defaultarg": 1,
                                                "isalias": 1,
                                                "aliasOf": "title",
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "exposeparams": {
                                                "attrOrProp": 2,
                                                "digest": "Expose gen params as RNBO params.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "bool",
                                                "defaultValue": "false"
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "auto",
                                                "digest": "in1",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal"
                                            },
                                            {
                                                "name": "out2",
                                                "type": "signal"
                                            }
                                        ],
                                        "helpname": "gen~",
                                        "aliasOf": "gen~",
                                        "classname": "gen~",
                                        "operator": 0,
                                        "versionId": 179904306,
                                        "changesPatcherIO": 0
                                    },
                                    "text": "gen~ @exposeparams 1 @title reverb",
                                    "varname": "reverb"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 3,
                                    "fontname": "Lato",
                                    "fontsize": 18.0,
                                    "id": "obj-26",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 15.0, 12.0, 163.0, 28.0 ],
                                    "text": "Additive Synthesizer"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 3,
                                    "bubbleusescolors": 1,
                                    "id": "obj-24",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 29.0, 332.0, 76.0, 25.0 ],
                                    "prototypename": "rnbo-bubble",
                                    "style": "rnbo-bubble",
                                    "text": "Oscillator"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 124.0, 444.0, 43.0, 23.0 ],
                                    "rnbo_classname": "*~",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "*~_obj-14",
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubblepoint": 0.55,
                                    "bubbleusescolors": 1,
                                    "id": "obj-8",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 298.5, 151.0, 97.00000000000006, 25.0 ],
                                    "prototypename": "rnbo-bubble",
                                    "style": "rnbo-bubble",
                                    "text": "Gate (0 or 1)"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubblepoint": 0.55,
                                    "bubbleusescolors": 1,
                                    "id": "obj-7",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 273.5, 191.0, 182.0, 54.0 ],
                                    "style": "rnbo-bubble",
                                    "text": "Capture (latch onto) velocity when non-zero and then scale velocity to (0.0 - 1.0)"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 260.5, 151.0, 32.0, 23.0 ],
                                    "rnbo_classname": ">~",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": ">~_obj-2",
                                    "text": ">~ 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-47",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 124.0, 384.0, 206.0, 23.0 ],
                                    "rnbo_classname": "p",
                                    "rnbo_extra_attributes": {
                                        "receivemode": "local",
                                        "args": [],
                                        "polyphony": -1.0,
                                        "voicecontrol": "MIDI",
                                        "notecontroller": 0,
                                        "uidstyle": "auto",
                                        "exposevoiceparams": 0
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "env.adsr",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "attack": {
                                                "attrOrProp": 1,
                                                "digest": "attack",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number"
                                            },
                                            "decay": {
                                                "attrOrProp": 1,
                                                "digest": "decay",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number"
                                            },
                                            "sustain": {
                                                "attrOrProp": 1,
                                                "digest": "sustain",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number"
                                            },
                                            "release": {
                                                "attrOrProp": 1,
                                                "digest": "release",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number"
                                            },
                                            "target": {
                                                "attrOrProp": 1,
                                                "digest": "target",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "defaultValue": "0"
                                            },
                                            "mute": {
                                                "attrOrProp": 1,
                                                "digest": "mute",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number"
                                            },
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "in1",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "in2": {
                                                "attrOrProp": 1,
                                                "digest": "in2",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "__probingout1": {
                                                "attrOrProp": 1,
                                                "digest": "__probingout1",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "signal"
                                            },
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "out1",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "out2": {
                                                "attrOrProp": 1,
                                                "digest": "out2",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "polyphony": {
                                                "attrOrProp": 2,
                                                "digest": "Polyphony of the subpatcher.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "defaultValue": "-1"
                                            },
                                            "exposevoiceparams": {
                                                "attrOrProp": 2,
                                                "digest": "Expose per voice versions of the contained parameters (only valid in polyphonic subpatchers).",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "bool",
                                                "defaultValue": "false"
                                            },
                                            "title": {
                                                "attrOrProp": 2,
                                                "digest": "Title of the subpatcher",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "doNotShowInMaxInspector": 1
                                            },
                                            "file": {
                                                "attrOrProp": 2,
                                                "digest": "rnbo file to load",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "doNotShowInMaxInspector": 1
                                            },
                                            "voicecontrol": {
                                                "attrOrProp": 2,
                                                "digest": "Chooses the way that polyphonic voices are controlled. 'simple' (or 'midi') will automatically allocate voices for \tincoming MIDI notes. Setting it to 'user' (or 'none') will switch off MIDI \tvoice allocation and start with all voices unmuted.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "enum": [ "simple", "user" ],
                                                "type": "enum",
                                                "defaultValue": "simple"
                                            },
                                            "notecontroller": {
                                                "attrOrProp": 2,
                                                "digest": "DEPRECATED. Use voicecontrol instead.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "doNotShowInMaxInspector": 1
                                            },
                                            "receivemode": {
                                                "attrOrProp": 2,
                                                "digest": "Do receive~ objects get the signal from a send~ inside the patcher directly (without latency), or compensated (with latency, aligned with all other voices).",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "enum": [ "local", "compensated" ],
                                                "type": "enum",
                                                "defaultValue": "local"
                                            },
                                            "args": {
                                                "attrOrProp": 2,
                                                "digest": "Replacement args for the subpatcher, everything named #1, #2 etc. will be replaced with the according argument.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "doNotShowInMaxInspector": 1
                                            },
                                            "uidstyle": {
                                                "attrOrProp": 2,
                                                "digest": "Behavior of #0 unique ID. auto (default) means abstractions get a local UID, local: start a new local UID, parent: use the one from the parent patcher",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "enum": [ "auto", "local", "parent", "global" ],
                                                "type": "enum",
                                                "defaultValue": "auto"
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "signal",
                                                "digest": "in1",
                                                "displayName": "Signal",
                                                "hot": 1,
                                                "docked": 0
                                            },
                                            {
                                                "name": "in2",
                                                "type": "signal",
                                                "digest": "in2",
                                                "displayName": "Gate",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal",
                                                "digest": "out1",
                                                "displayName": "Modified signal",
                                                "docked": 0
                                            },
                                            {
                                                "name": "out2",
                                                "type": "signal",
                                                "digest": "out2",
                                                "displayName": "Envelope",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "patcher",
                                        "aliasOf": "rnbo",
                                        "classname": "p",
                                        "operator": 0,
                                        "versionId": 426236520,
                                        "changesPatcherIO": 0
                                    },
                                    "text": "p @file sbb.env.analog @title env.adsr",
                                    "varname": "env.adsr"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-40",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 124.0, 332.0, 149.0, 23.0 ],
                                    "rnbo_classname": "p",
                                    "rnbo_extra_attributes": {
                                        "receivemode": "local",
                                        "args": [],
                                        "polyphony": -1.0,
                                        "voicecontrol": "MIDI",
                                        "notecontroller": 0,
                                        "uidstyle": "auto",
                                        "exposevoiceparams": 0
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "osc.additive",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "partials": {
                                                "attrOrProp": 1,
                                                "digest": "partials",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number"
                                            },
                                            "decay": {
                                                "attrOrProp": 1,
                                                "digest": "decay",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number"
                                            },
                                            "balance": {
                                                "attrOrProp": 1,
                                                "digest": "balance",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number"
                                            },
                                            "gain": {
                                                "attrOrProp": 1,
                                                "digest": "gain",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number"
                                            },
                                            "target": {
                                                "attrOrProp": 1,
                                                "digest": "target",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "defaultValue": "0"
                                            },
                                            "mute": {
                                                "attrOrProp": 1,
                                                "digest": "mute",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number"
                                            },
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "in1",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "__probingout1": {
                                                "attrOrProp": 1,
                                                "digest": "__probingout1",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "signal"
                                            },
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "out1",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "polyphony": {
                                                "attrOrProp": 2,
                                                "digest": "Polyphony of the subpatcher.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "defaultValue": "-1"
                                            },
                                            "exposevoiceparams": {
                                                "attrOrProp": 2,
                                                "digest": "Expose per voice versions of the contained parameters (only valid in polyphonic subpatchers).",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "bool",
                                                "defaultValue": "false"
                                            },
                                            "title": {
                                                "attrOrProp": 2,
                                                "digest": "Title of the subpatcher",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "doNotShowInMaxInspector": 1
                                            },
                                            "file": {
                                                "attrOrProp": 2,
                                                "digest": "rnbo file to load",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "doNotShowInMaxInspector": 1
                                            },
                                            "voicecontrol": {
                                                "attrOrProp": 2,
                                                "digest": "Chooses the way that polyphonic voices are controlled. 'simple' (or 'midi') will automatically allocate voices for \tincoming MIDI notes. Setting it to 'user' (or 'none') will switch off MIDI \tvoice allocation and start with all voices unmuted.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "enum": [ "simple", "user" ],
                                                "type": "enum",
                                                "defaultValue": "simple"
                                            },
                                            "notecontroller": {
                                                "attrOrProp": 2,
                                                "digest": "DEPRECATED. Use voicecontrol instead.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "doNotShowInMaxInspector": 1
                                            },
                                            "receivemode": {
                                                "attrOrProp": 2,
                                                "digest": "Do receive~ objects get the signal from a send~ inside the patcher directly (without latency), or compensated (with latency, aligned with all other voices).",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "enum": [ "local", "compensated" ],
                                                "type": "enum",
                                                "defaultValue": "local"
                                            },
                                            "args": {
                                                "attrOrProp": 2,
                                                "digest": "Replacement args for the subpatcher, everything named #1, #2 etc. will be replaced with the according argument.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "doNotShowInMaxInspector": 1
                                            },
                                            "uidstyle": {
                                                "attrOrProp": 2,
                                                "digest": "Behavior of #0 unique ID. auto (default) means abstractions get a local UID, local: start a new local UID, parent: use the one from the parent patcher",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "enum": [ "auto", "local", "parent", "global" ],
                                                "type": "enum",
                                                "defaultValue": "auto"
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "signal",
                                                "digest": "in1",
                                                "displayName": "Fundamental frequency",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal",
                                                "digest": "out1",
                                                "displayName": "",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "patcher",
                                        "aliasOf": "rnbo",
                                        "classname": "p",
                                        "operator": 0,
                                        "versionId": 426236520,
                                        "changesPatcherIO": 0
                                    },
                                    "text": "p @file sbb.osc.additive",
                                    "varname": "osc.additive"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 185.0, 227.0, 45.0, 23.0 ],
                                    "rnbo_classname": "/~",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "/~_obj-15",
                                    "text": "/~ 127"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 185.0, 111.0, 30.0, 23.0 ],
                                    "rnbo_classname": "sig~",
                                    "rnbo_extra_attributes": {
                                        "unit": "ms"
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "sig~_obj-13",
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-12",
                                    "interval": 100.0,
                                    "maxclass": "number~",
                                    "mode": 2,
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "float" ],
                                    "patching_rect": [ 205.5, 257.0, 56.0, 23.0 ],
                                    "rnbo_classname": "number~",
                                    "rnbo_extra_attributes": {
                                        "interval": 100.0,
                                        "initialMode": "sig",
                                        "displaymode": "first"
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "number~_obj-12",
                                    "sig": 0.0
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 185.0, 197.0, 41.0, 23.0 ],
                                    "rnbo_classname": "latch~",
                                    "rnbo_extra_attributes": {
                                        "init": 0.0
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "latch~_obj-11",
                                    "text": "latch~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 124.0, 146.0, 30.0, 23.0 ],
                                    "rnbo_classname": "sig~",
                                    "rnbo_extra_attributes": {
                                        "unit": "ms"
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "sig~_obj-10",
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 124.0, 111.0, 33.0, 23.0 ],
                                    "rnbo_classname": "mtof",
                                    "rnbo_extra_attributes": {
                                        "scalename": "",
                                        "filter": 1.0
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "mtof_obj-9",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "midivalue": {
                                                "attrOrProp": 1,
                                                "digest": "MIDI Note Number",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "list"
                                            },
                                            "tuning": {
                                                "attrOrProp": 1,
                                                "digest": "Set base frequency",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "number"
                                            },
                                            "scale": {
                                                "attrOrProp": 1,
                                                "digest": "Scala scl formatted list",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "list"
                                            },
                                            "map": {
                                                "attrOrProp": 1,
                                                "digest": "Scala kbm formatted list",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "list"
                                            },
                                            "ref": {
                                                "attrOrProp": 1,
                                                "digest": "Reference note for which the 'base' frequency is given",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "defaultValue": "69"
                                            },
                                            "mid": {
                                                "attrOrProp": 1,
                                                "digest": "Middle note where the first scale degree is mapped",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "defaultValue": "60"
                                            },
                                            "base": {
                                                "attrOrProp": 1,
                                                "digest": "Frequency to tune 'ref' note to",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "defaultValue": "440"
                                            },
                                            "out": {
                                                "attrOrProp": 1,
                                                "digest": "Frequency (Hz)",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "list"
                                            },
                                            "scalename": {
                                                "attrOrProp": 2,
                                                "digest": "Scale Name",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "filter": {
                                                "attrOrProp": 2,
                                                "digest": "Filter unmapped values",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "defaultValue": "1"
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "midivalue",
                                                "type": "list",
                                                "digest": "MIDI Note Number",
                                                "hot": 1,
                                                "docked": 0
                                            },
                                            {
                                                "name": "tuning",
                                                "type": "number",
                                                "digest": "Set base frequency",
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [
                                            {
                                                "name": "out",
                                                "type": "list",
                                                "digest": "Frequency (Hz)",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "mtof",
                                        "aliasOf": "mtof",
                                        "classname": "mtof",
                                        "operator": 0,
                                        "versionId": 950896033,
                                        "changesPatcherIO": 0
                                    },
                                    "text": "mtof"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 124.0, 518.0, 43.0, 23.0 ],
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "comment": "",
                                        "meta": ""
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "out~_obj-6",
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
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
                                    "patching_rect": [ 124.0, 59.0, 50.5, 23.0 ],
                                    "rnbo_classname": "notein",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "notein_obj-1",
                                    "text": "notein"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-40", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "order": 1,
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "order": 0,
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "order": 0,
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 1 ],
                                    "midpoints": [ 194.5, 279.0, 110.0, 279.0, 110.0, 429.0, 157.5, 429.0 ],
                                    "order": 1,
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 1 ],
                                    "order": 1,
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-47", 1 ],
                                    "order": 0,
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-4", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-47", 0 ],
                                    "source": [ "obj-40", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-47", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ],
                        "styles": [
                            {
                                "name": "rnbo-bubble",
                                "default": {
                                    "fontname": [ "Lato" ]
                                },
                                "parentstyle": "",
                                "multi": 0
                            },
                            {
                                "name": "rnbodefault",
                                "default": {
                                    "accentcolor": [ 0.343034118413925, 0.506230533123016, 0.86220508813858, 1.0 ],
                                    "bgcolor": [ 0.031372549019608, 0.125490196078431, 0.211764705882353, 1.0 ],
                                    "bgfillcolor": {
                                        "angle": 270.0,
                                        "autogradient": 0.0,
                                        "color": [ 0.031372549019608, 0.125490196078431, 0.211764705882353, 1.0 ],
                                        "color1": [ 0.031372549019608, 0.125490196078431, 0.211764705882353, 1.0 ],
                                        "color2": [ 0.263682, 0.004541, 0.038797, 1.0 ],
                                        "proportion": 0.39,
                                        "type": "color"
                                    },
                                    "color": [ 0.929412, 0.929412, 0.352941, 1.0 ],
                                    "elementcolor": [ 0.357540726661682, 0.515565991401672, 0.861786782741547, 1.0 ],
                                    "fontname": [ "Lato" ],
                                    "fontsize": [ 12.0 ],
                                    "stripecolor": [ 0.258338063955307, 0.352425158023834, 0.511919498443604, 1.0 ]
                                },
                                "parentstyle": "",
                                "multi": 0
                            }
                        ]
                    },
                    "patching_rect": [ 214.0, 790.0, 192.0, 29.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 283.93959731543623, 395.0, 175.0, 29.0 ],
                    "rnboattrcache": {
                        "reverb/drywet": {
                            "label": "reverb/drywet",
                            "isEnum": 0,
                            "parsestring": ""
                        },
                        "poly/osc.additive/decay": {
                            "label": "decay",
                            "isEnum": 0,
                            "parsestring": ""
                        },
                        "reverb/damping": {
                            "label": "reverb/damping",
                            "isEnum": 0,
                            "parsestring": ""
                        },
                        "poly/env.adsr/sustain": {
                            "label": "sustain",
                            "isEnum": 0,
                            "parsestring": ""
                        },
                        "reverb/decay": {
                            "label": "reverb/decay",
                            "isEnum": 0,
                            "parsestring": ""
                        },
                        "poly/osc.additive/gain": {
                            "label": "gain",
                            "isEnum": 0,
                            "parsestring": ""
                        },
                        "reverb/decaydiffusion1": {
                            "label": "reverb/decaydiffusion1",
                            "isEnum": 0,
                            "parsestring": ""
                        },
                        "poly/env.adsr/attack": {
                            "label": "attack",
                            "isEnum": 0,
                            "parsestring": ""
                        },
                        "reverb/indiffusion1": {
                            "label": "reverb/indiffusion1",
                            "isEnum": 0,
                            "parsestring": ""
                        },
                        "poly/osc.additive/balance": {
                            "label": "balance",
                            "isEnum": 0,
                            "parsestring": ""
                        },
                        "poly/env.adsr/decay": {
                            "label": "decay",
                            "isEnum": 0,
                            "parsestring": ""
                        },
                        "reverb/decaydiffusion2": {
                            "label": "reverb/decaydiffusion2",
                            "isEnum": 0,
                            "parsestring": ""
                        },
                        "poly/env.adsr/release": {
                            "label": "release",
                            "isEnum": 0,
                            "parsestring": ""
                        },
                        "reverb/indiffusion2": {
                            "label": "reverb/indiffusion2",
                            "isEnum": 0,
                            "parsestring": ""
                        },
                        "reverb/predelay": {
                            "label": "reverb/predelay",
                            "isEnum": 0,
                            "parsestring": ""
                        },
                        "reverb/inbandwidth": {
                            "label": "reverb/inbandwidth",
                            "isEnum": 0,
                            "parsestring": ""
                        },
                        "poly/osc.additive/partials": {
                            "label": "partials",
                            "isEnum": 0,
                            "parsestring": ""
                        }
                    },
                    "rnboversion": "1.4.2",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "rnbo~[1]",
                            "parameter_modmode": 0,
                            "parameter_shortname": "rnbo~",
                            "parameter_type": 3
                        }
                    },
                    "saved_object_attributes": {
                        "optimization": "O1",
                        "parameter_enable": 1,
                        "polyphony": 4,
                        "uuid": "9ee37473-ba62-11eb-b473-a683e7612c99"
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
                            "__sps": {
                                "poly": [
                                    {
                                        "__sps": {
                                            "osc.additive": {
                                                "gain": {
                                                    "value": 0.5
                                                },
                                                "balance": {
                                                    "value": 0.5
                                                },
                                                "decay": {
                                                    "value": 10.0
                                                },
                                                "partials": {
                                                    "value": 20.0
                                                }
                                            },
                                            "env.adsr": {
                                                "release": {
                                                    "value": 300.0
                                                },
                                                "sustain": {
                                                    "value": 0.5
                                                },
                                                "decay": {
                                                    "value": 30.0
                                                },
                                                "attack": {
                                                    "value": 30.0
                                                }
                                            }
                                        }
                                    },
                                    {
                                        "__sps": {
                                            "osc.additive": {
                                                "gain": {
                                                    "value": 0.5
                                                },
                                                "balance": {
                                                    "value": 0.5
                                                },
                                                "decay": {
                                                    "value": 10.0
                                                },
                                                "partials": {
                                                    "value": 20.0
                                                }
                                            },
                                            "env.adsr": {
                                                "release": {
                                                    "value": 300.0
                                                },
                                                "sustain": {
                                                    "value": 0.5
                                                },
                                                "decay": {
                                                    "value": 30.0
                                                },
                                                "attack": {
                                                    "value": 30.0
                                                }
                                            }
                                        }
                                    },
                                    {
                                        "__sps": {
                                            "osc.additive": {
                                                "gain": {
                                                    "value": 0.5
                                                },
                                                "balance": {
                                                    "value": 0.5
                                                },
                                                "decay": {
                                                    "value": 10.0
                                                },
                                                "partials": {
                                                    "value": 20.0
                                                }
                                            },
                                            "env.adsr": {
                                                "release": {
                                                    "value": 300.0
                                                },
                                                "sustain": {
                                                    "value": 0.5
                                                },
                                                "decay": {
                                                    "value": 30.0
                                                },
                                                "attack": {
                                                    "value": 30.0
                                                }
                                            }
                                        }
                                    },
                                    {
                                        "__sps": {
                                            "osc.additive": {
                                                "gain": {
                                                    "value": 0.5
                                                },
                                                "balance": {
                                                    "value": 0.5
                                                },
                                                "decay": {
                                                    "value": 10.0
                                                },
                                                "partials": {
                                                    "value": 20.0
                                                }
                                            },
                                            "env.adsr": {
                                                "release": {
                                                    "value": 300.0
                                                },
                                                "sustain": {
                                                    "value": 0.5
                                                },
                                                "decay": {
                                                    "value": 30.0
                                                },
                                                "attack": {
                                                    "value": 30.0
                                                }
                                            }
                                        }
                                    }
                                ]
                            },
                            "reverb/inbandwidth": {
                                "value": 0.5
                            },
                            "reverb/drywet": {
                                "value": 0.5
                            },
                            "reverb/decaydiffusion2": {
                                "value": 0.5
                            },
                            "reverb/predelay": {
                                "value": 10.0
                            },
                            "reverb/decay": {
                                "value": 0.5
                            },
                            "reverb/indiffusion1": {
                                "value": 0.75
                            },
                            "reverb/damping": {
                                "value": 0.5
                            },
                            "reverb/indiffusion2": {
                                "value": 0.625
                            },
                            "reverb/decaydiffusion1": {
                                "value": 0.7
                            },
                            "__presetid": "9ee37473-ba62-11eb-b473-a683e7612c99"
                        },
                        "snapshotlist": {
                            "current_snapshot": 0,
                            "entries": [
                                {
                                    "filetype": "C74Snapshot",
                                    "version": 2,
                                    "minorversion": 0,
                                    "name": "untitled",
                                    "origin": "9ee37473-ba62-11eb-b473-a683e7612c99",
                                    "type": "rnbo",
                                    "subtype": "",
                                    "embed": 1,
                                    "snapshot": {
                                        "__sps": {
                                            "poly": [
                                                {
                                                    "__sps": {
                                                        "osc.additive": {
                                                            "gain": {
                                                                "value": 0.5
                                                            },
                                                            "balance": {
                                                                "value": 0.5
                                                            },
                                                            "decay": {
                                                                "value": 10.0
                                                            },
                                                            "partials": {
                                                                "value": 20.0
                                                            }
                                                        },
                                                        "env.adsr": {
                                                            "release": {
                                                                "value": 300.0
                                                            },
                                                            "sustain": {
                                                                "value": 0.5
                                                            },
                                                            "decay": {
                                                                "value": 30.0
                                                            },
                                                            "attack": {
                                                                "value": 30.0
                                                            }
                                                        }
                                                    }
                                                },
                                                {
                                                    "__sps": {
                                                        "osc.additive": {
                                                            "gain": {
                                                                "value": 0.5
                                                            },
                                                            "balance": {
                                                                "value": 0.5
                                                            },
                                                            "decay": {
                                                                "value": 10.0
                                                            },
                                                            "partials": {
                                                                "value": 20.0
                                                            }
                                                        },
                                                        "env.adsr": {
                                                            "release": {
                                                                "value": 300.0
                                                            },
                                                            "sustain": {
                                                                "value": 0.5
                                                            },
                                                            "decay": {
                                                                "value": 30.0
                                                            },
                                                            "attack": {
                                                                "value": 30.0
                                                            }
                                                        }
                                                    }
                                                },
                                                {
                                                    "__sps": {
                                                        "osc.additive": {
                                                            "gain": {
                                                                "value": 0.5
                                                            },
                                                            "balance": {
                                                                "value": 0.5
                                                            },
                                                            "decay": {
                                                                "value": 10.0
                                                            },
                                                            "partials": {
                                                                "value": 20.0
                                                            }
                                                        },
                                                        "env.adsr": {
                                                            "release": {
                                                                "value": 300.0
                                                            },
                                                            "sustain": {
                                                                "value": 0.5
                                                            },
                                                            "decay": {
                                                                "value": 30.0
                                                            },
                                                            "attack": {
                                                                "value": 30.0
                                                            }
                                                        }
                                                    }
                                                },
                                                {
                                                    "__sps": {
                                                        "osc.additive": {
                                                            "gain": {
                                                                "value": 0.5
                                                            },
                                                            "balance": {
                                                                "value": 0.5
                                                            },
                                                            "decay": {
                                                                "value": 10.0
                                                            },
                                                            "partials": {
                                                                "value": 20.0
                                                            }
                                                        },
                                                        "env.adsr": {
                                                            "release": {
                                                                "value": 300.0
                                                            },
                                                            "sustain": {
                                                                "value": 0.5
                                                            },
                                                            "decay": {
                                                                "value": 30.0
                                                            },
                                                            "attack": {
                                                                "value": 30.0
                                                            }
                                                        }
                                                    }
                                                }
                                            ]
                                        },
                                        "reverb/inbandwidth": {
                                            "value": 0.5
                                        },
                                        "reverb/drywet": {
                                            "value": 0.5
                                        },
                                        "reverb/decaydiffusion2": {
                                            "value": 0.5
                                        },
                                        "reverb/predelay": {
                                            "value": 10.0
                                        },
                                        "reverb/decay": {
                                            "value": 0.5
                                        },
                                        "reverb/indiffusion1": {
                                            "value": 0.75
                                        },
                                        "reverb/damping": {
                                            "value": 0.5
                                        },
                                        "reverb/indiffusion2": {
                                            "value": 0.625
                                        },
                                        "reverb/decaydiffusion1": {
                                            "value": 0.7
                                        },
                                        "__presetid": "9ee37473-ba62-11eb-b473-a683e7612c99"
                                    },
                                    "fileref": {
                                        "name": "untitled",
                                        "filename": "untitled_20260102_2.maxsnap",
                                        "filepath": "~/Documents/Max 9/Snapshots",
                                        "filepos": -1,
                                        "snapshotfileid": "fdbd82854436efdd9c0901aaa7a41306"
                                    }
                                }
                            ]
                        }
                    },
                    "text": "rnbo~ @polyphony 4",
                    "varname": "rnbo~"
                }
            },
            {
                "box": {
                    "autosave": 1,
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "id": "obj-132",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 8,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal", "", "list", "int", "", "", "" ],
                    "patching_rect": [ 626.0, -200.0, 300.0, 100.0 ],
                    "save": [ "#N", "vst~", "loaduniqueid", 0, "C74_AU:/AUBandpass", ";" ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "vst~[1]",
                            "parameter_modmode": 0,
                            "parameter_shortname": "vst~[1]",
                            "parameter_type": 3
                        }
                    },
                    "saved_object_attributes": {
                        "parameter_enable": 1,
                        "parameter_mappable": 0
                    },
                    "snapshot": {
                        "filetype": "C74Snapshot",
                        "version": 2,
                        "minorversion": 0,
                        "name": "snapshotlist",
                        "origin": "vst~",
                        "type": "list",
                        "subtype": "Undefined",
                        "embed": 1,
                        "snapshot": {
                            "pluginname": "AUBandpass.auinfo",
                            "plugindisplayname": "AUBandpass",
                            "pluginsavedname": "",
                            "pluginsaveduniqueid": 1651532147,
                            "version": 1,
                            "isbank": 0,
                            "isbase64": 1,
                            "sliderorder": [],
                            "slidervisibility": [ 1, 1 ],
                            "blob": "167.hAGaoMGcv.i0AHv.DTfAGfPBJr.CT4VXsUFWsEla0YVXiQWcxUlbTQVXzEFUzkGbkc0b0IFc4AWYWYWYxMWZu4FVU4FcoQGakQlDgAGbr8DDb...............B.....PQIHE7....ATDwUUqDgUmY3IgXvE1bP..BUnwIrDSNAozStMGd........AD..........M....................nG"
                        },
                        "snapshotlist": {
                            "current_snapshot": 0,
                            "entries": [
                                {
                                    "filetype": "C74Snapshot",
                                    "version": 2,
                                    "minorversion": 0,
                                    "name": "AUBandpass",
                                    "origin": "AUBandpass.auinfo",
                                    "type": "AudioUnit",
                                    "subtype": "AudioEffect",
                                    "embed": 0,
                                    "snapshot": {
                                        "pluginname": "AUBandpass.auinfo",
                                        "plugindisplayname": "AUBandpass",
                                        "pluginsavedname": "",
                                        "pluginsaveduniqueid": 1651532147,
                                        "version": 1,
                                        "isbank": 0,
                                        "isbase64": 1,
                                        "sliderorder": [],
                                        "slidervisibility": [ 1, 1 ],
                                        "blob": "167.hAGaoMGcv.i0AHv.DTfAGfPBJr.CT4VXsUFWsEla0YVXiQWcxUlbTQVXzEFUzkGbkc0b0IFc4AWYWYWYxMWZu4FVU4FcoQGakQlDgAGbr8DDb...............B.....PQIHE7....ATDwUUqDgUmY3IgXvE1bP..BUnwIrDSNAozStMGd........AD..........M....................nG"
                                    },
                                    "fileref": {
                                        "name": "AUBandpass",
                                        "filename": "AUBandpass.maxsnap",
                                        "filepath": "~/Documents/Max 9/Snapshots",
                                        "filepos": -1,
                                        "snapshotfileid": "38daf8ccedae8c15df4faa7944c2b3aa"
                                    }
                                }
                            ]
                        }
                    },
                    "text": "vst~ C74_AU:/AUBandpass",
                    "varname": "vst~[1]",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-129",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1448.0, -117.0, 82.0, 22.0 ],
                    "text": "r trigger_pitch"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 10.0,
                    "id": "obj-56",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1091.0, -258.0, 55.070773273706436, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 185.15, -1.0, 73.164387, 18.0 ],
                    "text": "Note Off",
                    "textcolor": [ 0.647058823529412, 0.643137254901961, 0.643137254901961, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-122",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 646.5, 974.0, 49.0, 22.0 ],
                    "text": "dac~"
                }
            },
            {
                "box": {
                    "id": "obj-121",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "orientation": 1,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 646.5, 914.0, 139.0, 47.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 594.0, 8.0, 136.0, 47.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.gain~",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "synth_volume",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-117",
                    "maxclass": "newobj",
                    "numinlets": 7,
                    "numoutlets": 2,
                    "outlettype": [ "int", "" ],
                    "patching_rect": [ 420.0, 626.5, 108.0, 23.0 ],
                    "text": "midiformat"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-118",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 420.0, 588.0, 32.5, 23.0 ],
                    "text": "join"
                }
            },
            {
                "box": {
                    "autosave": 1,
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "id": "obj-114",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 8,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal", "", "list", "int", "", "", "" ],
                    "patching_rect": [ 646.5, 784.0, 300.0, 100.0 ],
                    "save": [ "#N", "vst~", "loaduniqueid", 0, "C74_AU:/Europa by Reason", ";" ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "vst~",
                            "parameter_modmode": 0,
                            "parameter_shortname": "vst~",
                            "parameter_type": 3
                        }
                    },
                    "saved_object_attributes": {
                        "parameter_enable": 1,
                        "parameter_mappable": 0
                    },
                    "snapshot": {
                        "filetype": "C74Snapshot",
                        "version": 2,
                        "minorversion": 0,
                        "name": "snapshotlist",
                        "origin": "vst~",
                        "type": "list",
                        "subtype": "Undefined",
                        "embed": 1,
                        "snapshot": {
                            "pluginname": "Europa by Reason.auinfo",
                            "plugindisplayname": "Europa by Reason",
                            "pluginsavedname": "",
                            "pluginsaveduniqueid": 1165324911,
                            "version": 1,
                            "isbank": 0,
                            "isbase64": 1,
                            "sliderorder": [],
                            "slidervisibility": [ 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0 ],
                            "blob": "18226.hAGaoMGcv.C1AHv.DTfAGfPBJrvDTTgEWvUag4VclE1XzUmbkIGUjEFcgwUYrUVak4Fcs3VXsU1UyUmXzkGbkckckI2bo8laTQWdvU1WP7fZ0MVYPwVcmklaSQWXzUFUtEVakIATnM0cOEABjC............P.a.P.3z2O......Rjc2CyL+K.uvcv8XyBgAvxwCxOyLyLA3xGh7C...P.jh3J.....D.sq40NCLBNAP6Zesy.ifS.0msp.....HfUdZjOHfXhCvNqSC....v.8uyv+.H..P..0LM.....Dv.6A9iJptJAGZi8+LyLyPf5qOwO.B..EzWZbC....PA8car.....Tv5rKN.....ErN6iC....fA9BRW.....XP65GO.....GLpFf7Cf...BReGq+vDyMifzcRG.....HXu2y1CPBhOB7ShB.....jvV6DD.....IrktE.....PBjxed+....jfsB2MO1tPXJv9zr+CHDy4B5iTO.....zPTrtO.....MDqgo9C...PC+5oJ+....3vO1RROLy7uN3pis+Cf...DXw4e7X6BgAAmRA4O....QHxFXA....PDhLkh8vLy+FwSWo+O....QDkmS.....vDD.Sl9XL.HLgA1IK.....Tvy21+C....E4l.N+....PwtOEE.....TrujXB....fERD83+....XQn2cMO1tPXW7.WZ9C...vEXGQp.....fQzeQI.....XnNwA8yLyLSFNDSn93t6umA0G9O.....ZPAqK6Cn..fFmzcQ+7S9xowIlqkOOmubZfhA0+CcDntFhwQm+Lg+cogXpIG.....ZLG1xzC3AknF40Qh.....nQdEiNO1tPXZ7aExB....vFdyMj+.H..vwG1AF.....b7gcgA.....GGxb3+.H..vwz205O.B..bLM6L7Cf...GTC1Z+.H..vQ7otM.....cXSk59iEVdYGAQla8XtlT2ARU83O.B..c7opBA....PGAy67+.H..zQvFi......cDr4i9Cf..PGbaeF+.H..3wKGRvO.B..ejxYOC....vGmKiy+.H...xPyd3O.B..f3s99C....PH50nI.....DR0U5OO1tPXhXYNp8C...fHjB05+....PhmdVJ.....j3omlB.....IyOSm+.H..TBbRCB.....kLmXR8Cf..PIys1Y.....TxbLJvO.B..l.zbO8Cf..fIbqzZ+jQlZdxMTr4OLwbynzNIa9iEVdoJQKLH9fMDhox0GbG.....pfsNh6Cf..fJ2SHo+....rxxdeL.....rbI3jA....PKkbPr+.H..zRIPXL.....sTRLgA....vKJIl39vHyM+hUG0G.....wjZEU2CyL+qLy7G68.L..HiT+6sOJslJxH0+eC....fLAip1+.H..HSzwN......xDs28.....fLY6Bl+nPOwIy2HSH.....x7c89B....vLkLSV9.O..PyeXjYOLy7uz7WFbC.....MiNKe+XgkWVCZl+J.....0.86B4ijIURMSeVu9bVNNWyzm4K.....0Tc+7B....PMV6pQ+....Ty0AeTOp4Pn2nG6q7C...vMEdb39HYRkbCh.wE.....2fHPcA....vMIN.q+....bihVuE.....2rngk+yA1uxMLlo487ph4iyaIrO.....3L9cD7Cf...Nyehv+nhpqlyMh54O.B..4nCn.B....PN8fw9.....jSOXvO.....47iq5C....PN.8Eg+....jSPxUH.....4zlb27yLyLSNYB1Q.....jSzlPkOmyet5HMJi.....fNRiBI.....rSIl.wO.B..6P5VdB.....OF2fk7X6Bg4Ch+PN.....9fXad.....fOVdUY.....3ikD9I.....+Hn7d7C...vObeSY+.....jVB00OVX4kCQKl0C.....Q0UpP+.H..PjcYDJ.....EUxo1A....PQ6bQ997u7kaj2hkI.....F0t2lA....vQlt0l.....njONWL.....J4y9+C....fRLYtQ.....nTSS.H.....J0TlvA.....Se4I6+....vTa111O....L4KSpC....PS7Ewm.....zTmNYYOpp5pNUfll4y18ffSpzOi8vLy+5zJxL4O....NoGjE9C...vSC3lY+bfqT7TDEd9O....OwRTG9C...vSll2Z9DqIoCUBXG8O.B..P0X2b.....PTEDan.....DUAwJJ.....Qg6LnA....PTWWNG.....HEF3S......SkEc9A....vTKeit+....PEvpaxO....WYZbb9C....V5RwP.....fktHJJ.....ZMWhQ6CSL2rVzw7J.....rEYj.zO....a87J0A....PWUHx3.....3kFHgD.....dUSVlvi74Z8WxvTL.....DFQQ05O....gwjaB4Sv+ieXRklK+....HVAti......hYfIT9C...fXpOZU7X6BgMV.FE9O....igdHm7yQtRwX1iCp+vFyMSlse.3O....kUl4y8iEVdoYpg+G+....XVliY5O....lw6yeyisKD1Y4ryG+DA2GcVN6.RONHNOnsfaZB.....ZrBaO.....fVqc7+OyLyLoUJmm+C...PZ8RgW.....j10FjH.....pcyxk3CBHlHaIwVX+D1Qtxl+CRD.....r4+8iB....PaLQB8.....zFu7kdOf2vFswas08C...PaIKaQ+.H..zV1iMvOpn5ptMUq38iG07ia2FVk.....71A5KA.....u0UEI7SFYp4a3NFY.....7FtiUF.....vonkeC.....bXd6F......WlD.O.....wwQcT8iEVdob9d1W+.H..LmNqH+OLwby0YAy.A....vcUTIe.....bWdkSyO.B..28mJKB.....d4jrW7X6BggGySi9O....3o85o8C...Pdysfx9.H..j2bDY0O....7c0iGxisKDFeSSPM+XgkW12h3JwO.B..8sYeR7C...PeaB3i+....zWpTN4O.A..8kJlP7C...Pe2xJE9.H..z2suF4O....8UdzR9Cf..feJ9Dp+....3mi66M.....9gqMG+C...feI6wb.....321iB.O1tPXRyPCNDQTwDkLQ+.DQASUI4Fb0QWzOHgUOUGcvUGcRTTcx8FD.HQX00VcOEQOZY0PxDRT8...7nTcqUlXugGTgQ2XnABbgQ2Xn4VXsUVOhfTdvUlbyE1cfvTYgQlH9vyTg0FbrU1bu3COPI2avUlbzkVYy4COOIlZkMFcf3VXsUVOhLVcyQ2as8Ebx8FbkIGcoU1bh3COVEFa0UFHvI2avUlbzkWOhDTavARPzQWXislHfPWdvUVOh3VcsIVYxIhOv3BL0fCLv.SL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhDTavABQkMVX4IBHzkGbk0iHtUWahUlbh3SL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhDTavAxT0MGcgklah.Bc4AWY8Hha00lXkImH9DCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHA0FbfHUYrUVXyUlHfPWdvUVOh3VcsIVYxIhOv3BL1XSN4jSN77hUgwVck4COVEFa0UFHvI2avUlbzkWOhHUY1UlbhABQg0Fbh.Bc4AWY8Hha00lXkImH9.iK0vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HhTkYWYxIFHSkldkIBHzkGbk0iHtUWahUlbh3SL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhHUY1UlbhABQkMVX4IBHzkGbk0iHtUWahUlbh3CLtXCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHRUlckImXfDTauUmazIBHzkGbk0iHtUWahUlbh3CLt.SN4jSN4jCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHEYlYkMFcf7jah.Bc4AWY8Hha00lXkImH9DCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHLYzSfDCHREFckIBHzkGbk0iHtUWahUlbh3CLtbSL3bSM77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajECHDU1bzECHA0Fch.Bc4AWY8Hha00lXkImH9.iK0LSLwvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSuQVLfPTYyQmLfDTazIBHzkGbk0iHtUWahUlbh3CLtTCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FYw.BQkMGcwHBHzkGbk0iHtUWahUlbh3SL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajECHDU1bzIiHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSuQVLfL0XgwVYfDTazIBHzkGbk0iHtUWahUlbh3SL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajECHSMVXrUlHfPWdvUVOh3VcsIVYxIhOw.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FYw.xTuUmbiUlHfPWdvUVOh3VcsIVYxIhOyvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSuQlLfPTYyQWLfDTazIBHzkGbk0iHtUWahUlbh3CLtTSMvXCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FYx.BQkMGcx.RPsQmHfPWdvUVOh3VcsIVYxIhOv3RM0.iM77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajICHDU1bzEiHfPWdvUVOh3VcsIVYxIhOxvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSuQlLfPTYyQmLh.Bc4AWY8Hha00lXkImH9fCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FYx.xTiEFakARPsQmHfPWdvUVOh3VcsIVYxIhOv3RM77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajICHSMVXrUlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSuQlLfL0a0I2XkIBHzkGbk0iHtUWahUlbh3CM77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajMCHDU1bzECHA0Fch.Bc4AWY8Hha00lXkImH9.iK3.CL1vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSuQ1LfPTYyQmLfDTazIBHzkGbk0iHtUWahUlbh3CLtTCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FYy.BQkMGcwHBHzkGbk0iHtUWahUlbh3CN77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajMCHDU1bzIiHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSuQ1LfL0XgwVYfDTazIBHzkGbk0iHtUWahUlbh3CLtTCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FYy.xTiEFakIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajMCHS8VcxMVYh.Bc4AWY8Hha00lXkImH9bCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FYz.BQkMGcw.RPsQmHfPWdvUVOh3VcsIVYxIhOv3RMwDiM77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajQCHDU1bzICHA0Fch.Bc4AWY8Hha00lXkImH9.iK0vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSuQFMfPTYyQWLh.Bc4AWY8Hha00lXkImH9DCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FYz.BQkMGcxHBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajQCHSMVXrUFHA0Fch.Bc4AWY8Hha00lXkImH9.iK0vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSuQFMfL0XgwVYh.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FYz.xTuUmbiUlHfPWdvUVOh3VcsIVYxIhOwfCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FY0.BQkMGcw.RPsQmHfPWdvUVOh3VcsIVYxIhOv3xMzjSN77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajUCHDU1bzICHA0Fch.Bc4AWY8Hha00lXkImH9.iK0vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSuQVMfPTYyQWLh.Bc4AWY8Hha00lXkImH9TCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FY0.BQkMGcxHBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajUCHSMVXrUFHA0Fch.Bc4AWY8Hha00lXkImH9.iK0vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSuQVMfL0XgwVYh.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FY0.xTuUmbiUlHfPWdvUVOh3VcsIVYxIhOw.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FY1.BQkMGcw.RPsQmHfPWdvUVOh3VcsIVYxIhOv3RMwTSM77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajYCHDU1bzICHA0Fch.Bc4AWY8Hha00lXkImH9.iK0vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSuQlMfPTYyQWLh.Bc4AWY8Hha00lXkImH9DCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FY1.BQkMGcxHBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajYCHSMVXrUFHA0Fch.Bc4AWY8Hha00lXkImH9.iK0vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSuQlMfL0XgwVYh.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FY1.xTuUmbiUlHfPWdvUVOh3VcsIVYxIhO0vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSuQ1MfPTYyQWLfDTazIBHzkGbk0iHtUWahUlbh3CLtTCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FY2.BQkMGcx.RPsQmHfPWdvUVOh3VcsIVYxIhOv3RM77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajcCHDU1bzEiHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSuQ1MfPTYyQmLh.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FY2.xTiEFakARPsQmHfPWdvUVOh3VcsIVYxIhOv3RM77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajcCHSMVXrUlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSuQ1MfL0a0I2XkIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajgCHDU1bzECHA0Fch.Bc4AWY8Hha00lXkImH9.iK0vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSuQFNfPTYyQmLfDTazIBHzkGbk0iHtUWahUlbh3CLtTCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FY3.BQkMGcwHBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajgCHDU1bzIiHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSuQFNfL0XgwVYfDTazIBHzkGbk0iHtUWahUlbh3CLtTCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FY3.xTiEFakIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajgCHS8VcxMVYh.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHLYzSfDCHDUFagkmHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRauQ1W2gVYkwlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMVLfLUYsklHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMVLf7zXzIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiECHTUmakIBHzkGbk0iHtUWahUlbh3CLtTCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xw.BToQ2XnAxRhQlHfPWdvUVOh3VcsIVYxIhOwvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HBTuIGcg0VYtQ2ah.Bc4AWY8Hha00lXkImH9.iKxTCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHKUVdfzzajUlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HBTuIGcg0VYtQ2afzzajUlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HBToQ2XnIVYtQFHRElamUlHfPWdvUVOh3VcsIVYxIhOwHCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHE4lcfLUYrU1XzIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhTja1ARLfHUXzUlHfPWdvUVOh3VcsIVYxIhOv3hM0HyLzPCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHE4lcfHCHREFckIBHzkGbk0iHtUWahUlbh3CLtLiM2DCN3vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRQtYGHy.hTgQWYh.Bc4AWY8Hha00lXkImH9.iK0vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRQtYGHz.hTgQWYh.Bc4AWY8Hha00lXkImH9.iK0vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRQtYGHw.xT441XxEFckIBHzkGbk0iHtUWahUlbh3SLvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRQtYGHx.xT441XxEFckIBHzkGbk0iHtUWahUlbh3SLvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRQtYGHy.xT441XxEFckIBHzkGbk0iHtUWahUlbh3SLvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRQtYGHz.xT441XxEFckIBHzkGbk0iHtUWahUlbh3SLvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRQtYGHEQVZzARSuQVYh.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHEYlYkMFcfLUYrU1XzIBHzkGbk0iHtUWahUlbh3SL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhTjYlU1XzAxSxQVYxIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhHUY1UlbhAxStIBHzkGbk0iHtUWahUlbh3SL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhPTYrEVdf7jah.Bc4AWY8Hha00lXkImH9DCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHDk1bzAxStIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhLzasAGHO4lHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HBTnE1bkIGHO4lHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRQwAxStIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhvjQOARLfLUdtMlTgQWYh.Bc4AWY8Hha00lXkImH9DCL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhvjQOARLfrTY4MUdtMlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HBSF8DHw.xQr8lXgwlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HBSF8DHw.BUk0FbuMUdtMlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HBSF8DHw.xUgYWYh.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHLYzSfHCHREFckIBHzkGbk0iHtUWahUlbh3CLtPyLyTSNzvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HBSF8DHx.BQkwVX4IBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhvjQOAhLfLUdtMlTgQWYh.Bc4AWY8Hha00lXkImH9DCL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhvjQOAhLfrTY4MUdtMlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HBSF8DHx.xQr8lXgwlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HBSF8DHx.BUk0FbuMUdtMlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HBSF8DHx.xUgYWYh.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHLYzSfLCHREFckIBHzkGbk0iHtUWahUlbh3CLtPyLyTSNzvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HBSF8DHy.BQkwVX4IBHzkGbk0iHtUWahUlbh3CLtTCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHLYzSfLCHSkmaiIUXzUlHfPWdvUVOh3VcsIVYxIhOw.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHLYzSfLCHKUVdSkmaiIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhvjQOAxLfbDauIVXrIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhvjQOAxLfPUYsA2aSkmaiIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhvjQOAxLfbUX1UlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HBSF8DHSUFakMFch.Bc4AWY8Hha00lXkImH9HCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHA0FbfbTXo4lHfPWdvUVOh3VcsIVYxIhOv3BN77hUgwVck4COVEFa0UFHvI2avUlbzkWOhDTavAhUkw1aikFc4IBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh.UXtIBHzkGbk0iHtUWahUlbh3CLtTCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHFkFazUlbfXjbkEmHfPWdvUVOh3VcsIVYxIhOwvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HhQowFckIGHRU1buIBHzkGbk0iHtUWahUlbh3CLtHSM77hUgwVck4COVEFa0UFHvI2avUlbzkWOhXTZrQWYxABU4AWYh.Bc4AWY8Hha00lXkImH9HCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHFkFazUlbfrjXjIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhXTZrQWYxARSuQlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HhQowFckIGHVUFah.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xw.BSkYWYrIBHzkGbk0iHtUWahUlbh3SL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhPTZyQGHDIWZ1UlHfPWdvUVOh3VcsIVYxIhOv3RM77hUgwVck4COVEFa0UFHvI2avUlbzkWOhPTZyQGHTkGbkIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhPTZyQGHT8lakIBHzkGbk0iHtUWahUlbh3CLtfCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FYfTjYlU1XzARPs8VctQmHfPWdvUVOh3VcsIVYxIhOv3hM77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajARQlYVYiQGHREFckIBHzkGbk0iHtUWahUlbh3CLtHCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FYfTjYlU1XzABQkAGcnIBHzkGbk0iHtUWahUlbh3CLtfCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FYfTjYlU1XzAxTvIWYgQlHfPWdvUVOh3VcsIVYxIhOv3BL4jSN4jSN77hUgwVck4COVEFa0UFHvI2avUlbzkWOhPTYrEVdfDTauUmazIBHzkGbk0iHtUWahUlbh3CLtDyL4jCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHDUFagkGHFIjHfPWdvUVOh3VcsIVYxIhOv3hLyjSN77hUgwVck4COVEFa0UFHvI2avUlbzkWOhPTYrEVdfLUdtMlHfPWdvUVOh3VcsIVYxIhOwvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HBQkwVX4ABTo41YP8lamIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhPTYrEVdfPUZsUlHfPWdvUVOh3VcsIVYxIhOv3BL4jSN4jSN77hUgwVck4COVEFa0UFHvI2avUlbzkWOhPTYrEVdfLUdtMVYjABUo0VYh.Bc4AWY8Hha00lXkImH9TCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHEEEHGEVZtIBHzkGbk0iHtUWahUlbh3CLtTCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHEEEHQIBHzkGbk0iHtUWahUlbh3CLt.SN4jSN4jCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHEEEHFIWYwIBHzkGbk0iHtUWahUlbh3CLt.SN4jSN4jCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHC8VavAhTkwVYgMWYh.Bc4AWY8Hha00lXkImH9.iK0vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxPu0FbfDDczE1XqIBHzkGbk0iHtUWahUlbh3CLtTCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHC8VavABUnIWYyg1arQlHfPWdvUVOh3VcsIVYxIhOv3RM77hUgwVck4COVEFa0UFHvI2avUlbzkWOhLzasAGHREFco8lHfPWdvUVOh3VcsIVYxIhOv3RM77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajARQlYVYiQGHTkGbkIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhPTYrEVdf.UXtIBHzkGbk0iHtUWahUlbh3CLtTCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHDk1bzARPs8VctQmHfPWdvUVOh3VcsIVYxIhOwvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HhUuk1XkMmHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMVLfLEZgAWYh.Bc4AWY8Hha00lXkImH9.iK4HSN2vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMVLfbUX1UlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSgMGckIGHV8Fa00VYh.Bc4AWY8Hha00lXkImH9.iK3HSM77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiECHM8FYwHBHzkGbk0iHtUWahUlbh3CN77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiECHM8FYw.RPsQmHfPWdvUVOh3VcsIVYxIhOv3RM77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiECHFkFazUlbh.Bc4AWY8Hha00lXkImH9DCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xw.hQowFckIGHFIWYwIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiECHFkFazUlbfHUYy8lHfPWdvUVOh3VcsIVYxIhOv3RM77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiECHPElah.Bc4AWY8Hha00lXkImH9.iK0vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMVLfXTZrQWYxAxRhQlHfPWdvUVOh3VcsIVYxIhOwvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMVLfLza04Fch.Bc4AWY8Hha00lXkImH9XCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xw.BQkQWctUlHfPWdvUVOh3VcsIVYxIhOv3xM0vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMVLfHDak4FYh.Bc4AWY8Hha00lXkImH9DCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xw.xTvIWYgQlHfPWdvUVOh3VcsIVYxIhOwvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMVLfTkaoM2atARSuQVYh.Bc4AWY8Hha00lXkImH9PCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xw.BRgIWah.Bc4AWY8Hha00lXkImH9LCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xw.BRgIWaf.0ayIBHzkGbk0iHtUWahUlbh3CLtTCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xw.RSuQlLh.Bc4AWY8Hha00lXkImH9fCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xw.RSuQlLfDTazIBHzkGbk0iHtUWahUlbh3CLtTCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHFkFazUlbfPjboYWYh.Bc4AWY8Hha00lXkImH9.iKzjSN3vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMVLfTkaoM2atAxStIBHzkGbk0iHtUWahUlbh3SL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiECHFkFazUlbf7jah.Bc4AWY8Hha00lXkImH9DCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xw.BRgIWaf7jah.Bc4AWY8Hha00lXkImH9DCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xw.RSuQVLf7jah.Bc4AWY8Hha00lXkImH9DCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xw.RSuQlLf7jah.Bc4AWY8Hha00lXkImH9DCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xw.BUuAhQowFckImHfPWdvUVOh3VcsIVYxIhOwvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMVLffTXx0FHA0Fch.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xw.xT441XPgVXyUlHfPWdvUVOh3VcsIVYxIhOwvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMVLfLEZgAWYfL0a0I2XkIBHzkGbk0iHtUWahUlbh3yL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiECHSgVXvUFHA0Fch.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xw.xTnEFbkAhUkwlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMVLfXTZrQWYxAxTuUmbiUlHfPWdvUVOh3VcsIVYxIhO1vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMVLfXTZrQWYxARSuQlHfPWdvUVOh3VcsIVYxIhOwvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMVLfXTZrQWYxAhUkwlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMVLfzzajECHS8VcxMVYh.Bc4AWY8Hha00lXkImH9LCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xw.RSuQVLfzzajIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiECHM8FYx.xTuUmbiUlHfPWdvUVOh3VcsIVYxIhOyvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMVLfzzajICHM8FYh.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHFkFazUlbfzzajAxTuUmbiUlHfPWdvUVOh3VcsIVYxIhOyvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMVLf7jah.Bc4AWY8Hha00lXkImH9DCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2XSUFah.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xx.xTk0VZh.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xx.xSiQmHfPWdvUVOh3VcsIVYxIhOxvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMlLfPUctUlHfPWdvUVOh3VcsIVYxIhOv3RM77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiICHPkFcigFHKIFYh.Bc4AWY8Hha00lXkImH9DCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xx.BSkYWYrIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiICHSgVXvUlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMlLfbUX1UlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMlLfzzajEiHfPWdvUVOh3VcsIVYxIhO3vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMlLfzzajECHA0Fch.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xx.hQowFckImHfPWdvUVOh3VcsIVYxIhOwvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMlLfXTZrQWYxAhQxUVbh.Bc4AWY8Hha00lXkImH9DCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xx.hQowFckIGHRU1buIBHzkGbk0iHtUWahUlbh3CLtTCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xx.BTg4lHfPWdvUVOh3VcsIVYxIhOv3RM77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiICHFkFazUlbfrjXjIBHzkGbk0iHtUWahUlbh3SL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiICHC8VctQmHfPWdvUVOh3VcsIVYxIhOwvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMlLfPTYzUmakIBHzkGbk0iHtUWahUlbh3CLtTCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xx.hPrUlajIBHzkGbk0iHtUWahUlbh3SL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiICHSAmbkEFYh.Bc4AWY8Hha00lXkImH9DCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xx.RUtk1bu4FHM8FYkIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiICHHElbsIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiICHHElbsABTuMmHfPWdvUVOh3VcsIVYxIhOv3RM77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiICHM8FYxHBHzkGbk0iHtUWahUlbh3CN77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiICHM8FYx.RPsQmHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMlLfTkaoM2atAxStIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiICHFkFazUlbf7jah.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xx.BRgIWaf7jah.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xx.RSuQVLf7jah.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xx.RSuQlLf7jah.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xx.BUuAhQowFckImHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMlLffTXx0FHA0Fch.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xx.xT441XPgVXyUlHfPWdvUVOh3VcsIVYxIhOwvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMlLfLEZgAWYfL0a0I2XkIBHzkGbk0iHtUWahUlbh3yL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiICHSgVXvUFHA0Fch.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xx.xTnEFbkAhUkwlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMlLfXTZrQWYxAxTuUmbiUlHfPWdvUVOh3VcsIVYxIhOyvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMlLfXTZrQWYxARSuQlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMlLfXTZrQWYxAhUkwlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMlLfzzajECHS8VcxMVYh.Bc4AWY8Hha00lXkImH9LCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xx.RSuQVLfzzajIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiICHM8FYx.xTuUmbiUlHfPWdvUVOh3VcsIVYxIhOyvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMlLfzzajICHM8FYh.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xx.xStIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiMCHSUVaoIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiMCHOMFch.Bc4AWY8Hha00lXkImH9HCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xy.BU04VYh.Bc4AWY8Hha00lXkImH9.iK0vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyM1Lf.UZzMFZfrjXjIBHzkGbk0iHtUWahUlbh3SL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiMCHLUlckwlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyM1LfLEZgAWYh.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xy.xUgYWYh.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xy.RSuQVLh.Bc4AWY8Hha00lXkImH9fCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xy.RSuQVLfDTazIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiMCHFkFazUlbh.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xy.hQowFckIGHFIWYwIBHzkGbk0iHtUWahUlbh3SL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiMCHFkFazUlbfHUYy8lHfPWdvUVOh3VcsIVYxIhOv3RM77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiMCHPElah.Bc4AWY8Hha00lXkImH9.iK0vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyM1LfXTZrQWYxAxRhQlHfPWdvUVOh3VcsIVYxIhOwvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyM1LfLza04Fch.Bc4AWY8Hha00lXkImH9DCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xy.BQkQWctUlHfPWdvUVOh3VcsIVYxIhOv3RM77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiMCHBwVYtQlHfPWdvUVOh3VcsIVYxIhOwvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyM1LfLEbxUVXjIBHzkGbk0iHtUWahUlbh3SL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiMCHU4VZy8lafzzajUlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyM1LffTXx0lHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyM1LffTXx0FHP81bh.Bc4AWY8Hha00lXkImH9.iK0vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyM1LfzzajIiHfPWdvUVOh3VcsIVYxIhO3vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyM1LfzzajICHA0Fch.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xy.RUtk1bu4FHO4lHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyM1LfXTZrQWYxAxStIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiMCHHElbsAxStIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiMCHM8FYw.xStIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiMCHM8FYx.xStIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiMCHT8FHFkFazUlbh.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xy.BRgIWafDTazIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiMCHSkmaiAEZgMWYh.Bc4AWY8Hha00lXkImH9DCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xy.xTnEFbkAxTuUmbiUlHfPWdvUVOh3VcsIVYxIhOyvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyM1LfLEZgAWYfDTazIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiMCHSgVXvUFHVUFah.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xy.hQowFckIGHS8VcxMVYh.Bc4AWY8Hha00lXkImH9LCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xy.hQowFckIGHM8FYh.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xy.hQowFckIGHVUFah.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xy.RSuQVLfL0a0I2XkIBHzkGbk0iHtUWahUlbh3yL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiMCHM8FYw.RSuQlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyM1LfzzajICHS8VcxMVYh.Bc4AWY8Hha00lXkImH9LCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xy.RSuQlLfzzajIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiMCHO4lHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxP0ImckEiHfPWdvUVOhLGcxklamIhOvDCLy.SLvDCLwTSLvDCLwfiPvDSPwXCQ0DyM4bSMAECLwfSL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhLTcxYWYxHBHzkGbk0iHyQmbo41Yh3CLw.SLvDCLw.SLvDCLw.SL3DSPwDTL3.SPw.SL3DCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHCUmb1U1Lh.Bc4AWY8HxbzIWZtclH9.SLvDCLw.SLvDCLw.SLvDCNvDTLvDSPwvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxP0ImckQiHfPWdvUVOhLGcxklamIhOvDCLw.SLvDCLw.SLvDCLwfCLAECLwDTL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhLTcxYWYh.Bc4AWY8HxbzIWZtclH9fCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvvyKVEFa0UlO77xShoVYiQmO77BTx8FbkIGcoU1b9vyKJU2ZkI1a3AUXzMFZ9..VU4FcoQGakQF.H.PF.XB.q..N..D.HAPS.7E.jAPZIDUBVk.VInUBckvWITVBnkvaIPWB1kvdFkM.......f.A..........F..................fQhC"
                        },
                        "snapshotlist": {
                            "current_snapshot": 0,
                            "entries": [
                                {
                                    "filetype": "C74Snapshot",
                                    "version": 2,
                                    "minorversion": 0,
                                    "name": "Europa by Reason",
                                    "origin": "Europa by Reason.auinfo",
                                    "type": "AudioUnit",
                                    "subtype": "Instrument",
                                    "embed": 0,
                                    "snapshot": {
                                        "pluginname": "Europa by Reason.auinfo",
                                        "plugindisplayname": "Europa by Reason",
                                        "pluginsavedname": "",
                                        "pluginsaveduniqueid": 1165324911,
                                        "version": 1,
                                        "isbank": 0,
                                        "isbase64": 1,
                                        "sliderorder": [],
                                        "slidervisibility": [ 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0 ],
                                        "blob": "18226.hAGaoMGcv.C1AHv.DTfAGfPBJrvDTTgEWvUag4VclE1XzUmbkIGUjEFcgwUYrUVak4Fcs3VXsU1UyUmXzkGbkckckI2bo8laTQWdvU1WP7fZ0MVYPwVcmklaSQWXzUFUtEVakIATnM0cOEABjC............P.a.P.3z2O......Rjc2CyL+K.uvcv8XyBgAvxwCxOyLyLA3xGh7C...P.jh3J.....D.sq40NCLBNAP6Zesy.ifS.0msp.....HfUdZjOHfXhCvNqSC....v.8uyv+.H..P..0LM.....Dv.6A9iJptJAGZi8+LyLyPf5qOwO.B..EzWZbC....PA8car.....Tv5rKN.....ErN6iC....fA9BRW.....XP65GO.....GLpFf7Cf...BReGq+vDyMifzcRG.....HXu2y1CPBhOB7ShB.....jvV6DD.....IrktE.....PBjxed+....jfsB2MO1tPXJv9zr+CHDy4B5iTO.....zPTrtO.....MDqgo9C...PC+5oJ+....3vO1RROLy7uN3pis+Cf...DXw4e7X6BgAAmRA4O....QHxFXA....PDhLkh8vLy+FwSWo+O....QDkmS.....vDD.Sl9XL.HLgA1IK.....Tvy21+C....E4l.N+....PwtOEE.....TrujXB....fERD83+....XQn2cMO1tPXW7.WZ9C...vEXGQp.....fQzeQI.....XnNwA8yLyLSFNDSn93t6umA0G9O.....ZPAqK6Cn..fFmzcQ+7S9xowIlqkOOmubZfhA0+CcDntFhwQm+Lg+cogXpIG.....ZLG1xzC3AknF40Qh.....nQdEiNO1tPXZ7aExB....vFdyMj+.H..vwG1AF.....b7gcgA.....GGxb3+.H..vwz205O.B..bLM6L7Cf...GTC1Z+.H..vQ7otM.....cXSk59iEVdYGAQla8XtlT2ARU83O.B..c7opBA....PGAy67+.H..zQvFi......cDr4i9Cf..PGbaeF+.H..3wKGRvO.B..ejxYOC....vGmKiy+.H...xPyd3O.B..f3s99C....PH50nI.....DR0U5OO1tPXhXYNp8C...fHjB05+....PhmdVJ.....j3omlB.....IyOSm+.H..TBbRCB.....kLmXR8Cf..PIys1Y.....TxbLJvO.B..l.zbO8Cf..fIbqzZ+jQlZdxMTr4OLwbynzNIa9iEVdoJQKLH9fMDhox0GbG.....pfsNh6Cf..fJ2SHo+....rxxdeL.....rbI3jA....PKkbPr+.H..zRIPXL.....sTRLgA....vKJIl39vHyM+hUG0G.....wjZEU2CyL+qLy7G68.L..HiT+6sOJslJxH0+eC....fLAip1+.H..HSzwN......xDs28.....fLY6Bl+nPOwIy2HSH.....x7c89B....vLkLSV9.O..PyeXjYOLy7uz7WFbC.....MiNKe+XgkWVCZl+J.....0.86B4ijIURMSeVu9bVNNWyzm4K.....0Tc+7B....PMV6pQ+....Ty0AeTOp4Pn2nG6q7C...vMEdb39HYRkbCh.wE.....2fHPcA....vMIN.q+....bihVuE.....2rngk+yA1uxMLlo487ph4iyaIrO.....3L9cD7Cf...Nyehv+nhpqlyMh54O.B..4nCn.B....PN8fw9.....jSOXvO.....47iq5C....PN.8Eg+....jSPxUH.....4zlb27yLyLSNYB1Q.....jSzlPkOmyet5HMJi.....fNRiBI.....rSIl.wO.B..6P5VdB.....OF2fk7X6Bg4Ch+PN.....9fXad.....fOVdUY.....3ikD9I.....+Hn7d7C...vObeSY+.....jVB00OVX4kCQKl0C.....Q0UpP+.H..PjcYDJ.....EUxo1A....PQ6bQ997u7kaj2hkI.....F0t2lA....vQlt0l.....njONWL.....J4y9+C....fRLYtQ.....nTSS.H.....J0TlvA.....Se4I6+....vTa111O....L4KSpC....PS7Ewm.....zTmNYYOpp5pNUfll4y18ffSpzOi8vLy+5zJxL4O....NoGjE9C...vSC3lY+bfqT7TDEd9O....OwRTG9C...vSll2Z9DqIoCUBXG8O.B..P0X2b.....PTEDan.....DUAwJJ.....Qg6LnA....PTWWNG.....HEF3S......SkEc9A....vTKeit+....PEvpaxO....WYZbb9C....V5RwP.....fktHJJ.....ZMWhQ6CSL2rVzw7J.....rEYj.zO....a87J0A....PWUHx3.....3kFHgD.....dUSVlvi74Z8WxvTL.....DFQQ05O....gwjaB4Sv+ieXRklK+....HVAti......hYfIT9C...fXpOZU7X6BgMV.FE9O....igdHm7yQtRwX1iCp+vFyMSlse.3O....kUl4y8iEVdoYpg+G+....XVliY5O....lw6yeyisKD1Y4ryG+DA2GcVN6.RONHNOnsfaZB.....ZrBaO.....fVqc7+OyLyLoUJmm+C...PZ8RgW.....j10FjH.....pcyxk3CBHlHaIwVX+D1Qtxl+CRD.....r4+8iB....PaLQB8.....zFu7kdOf2vFswas08C...PaIKaQ+.H..zV1iMvOpn5ptMUq38iG07ia2FVk.....71A5KA.....u0UEI7SFYp4a3NFY.....7FtiUF.....vonkeC.....bXd6F......WlD.O.....wwQcT8iEVdob9d1W+.H..LmNqH+OLwby0YAy.A....vcUTIe.....bWdkSyO.B..28mJKB.....d4jrW7X6BggGySi9O....3o85o8C...Pdysfx9.H..j2bDY0O....7c0iGxisKDFeSSPM+XgkW12h3JwO.B..8sYeR7C...PeaB3i+....zWpTN4O.A..8kJlP7C...Pe2xJE9.H..z2suF4O....8UdzR9Cf..feJ9Dp+....3mi66M.....9gqMG+C...feI6wb.....321iB.O1tPXRyPCNDQTwDkLQ+.DQASUI4Fb0QWzOHgUOUGcvUGcRTTcx8FD.HQX00VcOEQOZY0PxDRT8...7nTcqUlXugGTgQ2XnABbgQ2Xn4VXsUVOhfTdvUlbyE1cfvTYgQlH9vyTg0FbrU1bu3COPI2avUlbzkVYy4COOIlZkMFcf3VXsUVOhLVcyQ2as8Ebx8FbkIGcoU1bh3COVEFa0UFHvI2avUlbzkWOhDTavARPzQWXislHfPWdvUVOh3VcsIVYxIhOv3BL0fCLv.SL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhDTavABQkMVX4IBHzkGbk0iHtUWahUlbh3SL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhDTavAxT0MGcgklah.Bc4AWY8Hha00lXkImH9DCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHA0FbfHUYrUVXyUlHfPWdvUVOh3VcsIVYxIhOv3BL1XSN4jSN77hUgwVck4COVEFa0UFHvI2avUlbzkWOhHUY1UlbhABQg0Fbh.Bc4AWY8Hha00lXkImH9.iK0vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HhTkYWYxIFHSkldkIBHzkGbk0iHtUWahUlbh3SL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhHUY1UlbhABQkMVX4IBHzkGbk0iHtUWahUlbh3CLtXCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHRUlckImXfDTauUmazIBHzkGbk0iHtUWahUlbh3CLt.SN4jSN4jCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHEYlYkMFcf7jah.Bc4AWY8Hha00lXkImH9DCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHLYzSfDCHREFckIBHzkGbk0iHtUWahUlbh3CLtbSL3bSM77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajECHDU1bzECHA0Fch.Bc4AWY8Hha00lXkImH9.iK0LSLwvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSuQVLfPTYyQmLfDTazIBHzkGbk0iHtUWahUlbh3CLtTCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FYw.BQkMGcwHBHzkGbk0iHtUWahUlbh3SL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajECHDU1bzIiHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSuQVLfL0XgwVYfDTazIBHzkGbk0iHtUWahUlbh3SL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajECHSMVXrUlHfPWdvUVOh3VcsIVYxIhOw.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FYw.xTuUmbiUlHfPWdvUVOh3VcsIVYxIhOyvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSuQlLfPTYyQWLfDTazIBHzkGbk0iHtUWahUlbh3CLtTSMvXCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FYx.BQkMGcx.RPsQmHfPWdvUVOh3VcsIVYxIhOv3RM0.iM77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajICHDU1bzEiHfPWdvUVOh3VcsIVYxIhOxvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSuQlLfPTYyQmLh.Bc4AWY8Hha00lXkImH9fCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FYx.xTiEFakARPsQmHfPWdvUVOh3VcsIVYxIhOv3RM77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajICHSMVXrUlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSuQlLfL0a0I2XkIBHzkGbk0iHtUWahUlbh3CM77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajMCHDU1bzECHA0Fch.Bc4AWY8Hha00lXkImH9.iK3.CL1vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSuQ1LfPTYyQmLfDTazIBHzkGbk0iHtUWahUlbh3CLtTCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FYy.BQkMGcwHBHzkGbk0iHtUWahUlbh3CN77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajMCHDU1bzIiHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSuQ1LfL0XgwVYfDTazIBHzkGbk0iHtUWahUlbh3CLtTCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FYy.xTiEFakIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajMCHS8VcxMVYh.Bc4AWY8Hha00lXkImH9bCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FYz.BQkMGcw.RPsQmHfPWdvUVOh3VcsIVYxIhOv3RMwDiM77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajQCHDU1bzICHA0Fch.Bc4AWY8Hha00lXkImH9.iK0vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSuQFMfPTYyQWLh.Bc4AWY8Hha00lXkImH9DCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FYz.BQkMGcxHBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajQCHSMVXrUFHA0Fch.Bc4AWY8Hha00lXkImH9.iK0vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSuQFMfL0XgwVYh.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FYz.xTuUmbiUlHfPWdvUVOh3VcsIVYxIhOwfCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FY0.BQkMGcw.RPsQmHfPWdvUVOh3VcsIVYxIhOv3xMzjSN77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajUCHDU1bzICHA0Fch.Bc4AWY8Hha00lXkImH9.iK0vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSuQVMfPTYyQWLh.Bc4AWY8Hha00lXkImH9TCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FY0.BQkMGcxHBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajUCHSMVXrUFHA0Fch.Bc4AWY8Hha00lXkImH9.iK0vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSuQVMfL0XgwVYh.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FY0.xTuUmbiUlHfPWdvUVOh3VcsIVYxIhOw.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FY1.BQkMGcw.RPsQmHfPWdvUVOh3VcsIVYxIhOv3RMwTSM77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajYCHDU1bzICHA0Fch.Bc4AWY8Hha00lXkImH9.iK0vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSuQlMfPTYyQWLh.Bc4AWY8Hha00lXkImH9DCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FY1.BQkMGcxHBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajYCHSMVXrUFHA0Fch.Bc4AWY8Hha00lXkImH9.iK0vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSuQlMfL0XgwVYh.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FY1.xTuUmbiUlHfPWdvUVOh3VcsIVYxIhO0vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSuQ1MfPTYyQWLfDTazIBHzkGbk0iHtUWahUlbh3CLtTCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FY2.BQkMGcx.RPsQmHfPWdvUVOh3VcsIVYxIhOv3RM77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajcCHDU1bzEiHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSuQ1MfPTYyQmLh.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FY2.xTiEFakARPsQmHfPWdvUVOh3VcsIVYxIhOv3RM77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajcCHSMVXrUlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSuQ1MfL0a0I2XkIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajgCHDU1bzECHA0Fch.Bc4AWY8Hha00lXkImH9.iK0vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSuQFNfPTYyQmLfDTazIBHzkGbk0iHtUWahUlbh3CLtTCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FY3.BQkMGcwHBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajgCHDU1bzIiHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSuQFNfL0XgwVYfDTazIBHzkGbk0iHtUWahUlbh3CLtTCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FY3.xTiEFakIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajgCHS8VcxMVYh.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHLYzSfDCHDUFagkmHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRauQ1W2gVYkwlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMVLfLUYsklHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMVLf7zXzIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiECHTUmakIBHzkGbk0iHtUWahUlbh3CLtTCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xw.BToQ2XnAxRhQlHfPWdvUVOh3VcsIVYxIhOwvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HBTuIGcg0VYtQ2ah.Bc4AWY8Hha00lXkImH9.iKxTCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHKUVdfzzajUlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HBTuIGcg0VYtQ2afzzajUlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HBToQ2XnIVYtQFHRElamUlHfPWdvUVOh3VcsIVYxIhOwHCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHE4lcfLUYrU1XzIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhTja1ARLfHUXzUlHfPWdvUVOh3VcsIVYxIhOv3hM0HyLzPCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHE4lcfHCHREFckIBHzkGbk0iHtUWahUlbh3CLtLiM2DCN3vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRQtYGHy.hTgQWYh.Bc4AWY8Hha00lXkImH9.iK0vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRQtYGHz.hTgQWYh.Bc4AWY8Hha00lXkImH9.iK0vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRQtYGHw.xT441XxEFckIBHzkGbk0iHtUWahUlbh3SLvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRQtYGHx.xT441XxEFckIBHzkGbk0iHtUWahUlbh3SLvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRQtYGHy.xT441XxEFckIBHzkGbk0iHtUWahUlbh3SLvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRQtYGHz.xT441XxEFckIBHzkGbk0iHtUWahUlbh3SLvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRQtYGHEQVZzARSuQVYh.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHEYlYkMFcfLUYrU1XzIBHzkGbk0iHtUWahUlbh3SL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhTjYlU1XzAxSxQVYxIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhHUY1UlbhAxStIBHzkGbk0iHtUWahUlbh3SL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhPTYrEVdf7jah.Bc4AWY8Hha00lXkImH9DCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHDk1bzAxStIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhLzasAGHO4lHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HBTnE1bkIGHO4lHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRQwAxStIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhvjQOARLfLUdtMlTgQWYh.Bc4AWY8Hha00lXkImH9DCL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhvjQOARLfrTY4MUdtMlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HBSF8DHw.xQr8lXgwlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HBSF8DHw.BUk0FbuMUdtMlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HBSF8DHw.xUgYWYh.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHLYzSfHCHREFckIBHzkGbk0iHtUWahUlbh3CLtPyLyTSNzvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HBSF8DHx.BQkwVX4IBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhvjQOAhLfLUdtMlTgQWYh.Bc4AWY8Hha00lXkImH9DCL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhvjQOAhLfrTY4MUdtMlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HBSF8DHx.xQr8lXgwlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HBSF8DHx.BUk0FbuMUdtMlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HBSF8DHx.xUgYWYh.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHLYzSfLCHREFckIBHzkGbk0iHtUWahUlbh3CLtPyLyTSNzvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HBSF8DHy.BQkwVX4IBHzkGbk0iHtUWahUlbh3CLtTCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHLYzSfLCHSkmaiIUXzUlHfPWdvUVOh3VcsIVYxIhOw.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHLYzSfLCHKUVdSkmaiIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhvjQOAxLfbDauIVXrIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhvjQOAxLfPUYsA2aSkmaiIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhvjQOAxLfbUX1UlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HBSF8DHSUFakMFch.Bc4AWY8Hha00lXkImH9HCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHA0FbfbTXo4lHfPWdvUVOh3VcsIVYxIhOv3BN77hUgwVck4COVEFa0UFHvI2avUlbzkWOhDTavAhUkw1aikFc4IBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh.UXtIBHzkGbk0iHtUWahUlbh3CLtTCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHFkFazUlbfXjbkEmHfPWdvUVOh3VcsIVYxIhOwvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HhQowFckIGHRU1buIBHzkGbk0iHtUWahUlbh3CLtHSM77hUgwVck4COVEFa0UFHvI2avUlbzkWOhXTZrQWYxABU4AWYh.Bc4AWY8Hha00lXkImH9HCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHFkFazUlbfrjXjIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhXTZrQWYxARSuQlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HhQowFckIGHVUFah.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xw.BSkYWYrIBHzkGbk0iHtUWahUlbh3SL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhPTZyQGHDIWZ1UlHfPWdvUVOh3VcsIVYxIhOv3RM77hUgwVck4COVEFa0UFHvI2avUlbzkWOhPTZyQGHTkGbkIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhPTZyQGHT8lakIBHzkGbk0iHtUWahUlbh3CLtfCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FYfTjYlU1XzARPs8VctQmHfPWdvUVOh3VcsIVYxIhOv3hM77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajARQlYVYiQGHREFckIBHzkGbk0iHtUWahUlbh3CLtHCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FYfTjYlU1XzABQkAGcnIBHzkGbk0iHtUWahUlbh3CLtfCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHM8FYfTjYlU1XzAxTvIWYgQlHfPWdvUVOh3VcsIVYxIhOv3BL4jSN4jSN77hUgwVck4COVEFa0UFHvI2avUlbzkWOhPTYrEVdfDTauUmazIBHzkGbk0iHtUWahUlbh3CLtDyL4jCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHDUFagkGHFIjHfPWdvUVOh3VcsIVYxIhOv3hLyjSN77hUgwVck4COVEFa0UFHvI2avUlbzkWOhPTYrEVdfLUdtMlHfPWdvUVOh3VcsIVYxIhOwvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HBQkwVX4ABTo41YP8lamIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhPTYrEVdfPUZsUlHfPWdvUVOh3VcsIVYxIhOv3BL4jSN4jSN77hUgwVck4COVEFa0UFHvI2avUlbzkWOhPTYrEVdfLUdtMVYjABUo0VYh.Bc4AWY8Hha00lXkImH9TCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHEEEHGEVZtIBHzkGbk0iHtUWahUlbh3CLtTCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHEEEHQIBHzkGbk0iHtUWahUlbh3CLt.SN4jSN4jCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHEEEHFIWYwIBHzkGbk0iHtUWahUlbh3CLt.SN4jSN4jCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHC8VavAhTkwVYgMWYh.Bc4AWY8Hha00lXkImH9.iK0vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxPu0FbfDDczE1XqIBHzkGbk0iHtUWahUlbh3CLtTCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHC8VavABUnIWYyg1arQlHfPWdvUVOh3VcsIVYxIhOv3RM77hUgwVck4COVEFa0UFHvI2avUlbzkWOhLzasAGHREFco8lHfPWdvUVOh3VcsIVYxIhOv3RM77hUgwVck4COVEFa0UFHvI2avUlbzkWOhzzajARQlYVYiQGHTkGbkIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhPTYrEVdf.UXtIBHzkGbk0iHtUWahUlbh3CLtTCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHDk1bzARPs8VctQmHfPWdvUVOh3VcsIVYxIhOwvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HhUuk1XkMmHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMVLfLEZgAWYh.Bc4AWY8Hha00lXkImH9.iK4HSN2vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMVLfbUX1UlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HRSgMGckIGHV8Fa00VYh.Bc4AWY8Hha00lXkImH9.iK3HSM77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiECHM8FYwHBHzkGbk0iHtUWahUlbh3CN77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiECHM8FYw.RPsQmHfPWdvUVOh3VcsIVYxIhOv3RM77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiECHFkFazUlbh.Bc4AWY8Hha00lXkImH9DCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xw.hQowFckIGHFIWYwIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiECHFkFazUlbfHUYy8lHfPWdvUVOh3VcsIVYxIhOv3RM77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiECHPElah.Bc4AWY8Hha00lXkImH9.iK0vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMVLfXTZrQWYxAxRhQlHfPWdvUVOh3VcsIVYxIhOwvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMVLfLza04Fch.Bc4AWY8Hha00lXkImH9XCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xw.BQkQWctUlHfPWdvUVOh3VcsIVYxIhOv3xM0vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMVLfHDak4FYh.Bc4AWY8Hha00lXkImH9DCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xw.xTvIWYgQlHfPWdvUVOh3VcsIVYxIhOwvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMVLfTkaoM2atARSuQVYh.Bc4AWY8Hha00lXkImH9PCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xw.BRgIWah.Bc4AWY8Hha00lXkImH9LCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xw.BRgIWaf.0ayIBHzkGbk0iHtUWahUlbh3CLtTCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xw.RSuQlLh.Bc4AWY8Hha00lXkImH9fCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xw.RSuQlLfDTazIBHzkGbk0iHtUWahUlbh3CLtTCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHFkFazUlbfPjboYWYh.Bc4AWY8Hha00lXkImH9.iKzjSN3vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMVLfTkaoM2atAxStIBHzkGbk0iHtUWahUlbh3SL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiECHFkFazUlbf7jah.Bc4AWY8Hha00lXkImH9DCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xw.BRgIWaf7jah.Bc4AWY8Hha00lXkImH9DCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xw.RSuQVLf7jah.Bc4AWY8Hha00lXkImH9DCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xw.RSuQlLf7jah.Bc4AWY8Hha00lXkImH9DCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xw.BUuAhQowFckImHfPWdvUVOh3VcsIVYxIhOwvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMVLffTXx0FHA0Fch.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xw.xT441XPgVXyUlHfPWdvUVOh3VcsIVYxIhOwvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMVLfLEZgAWYfL0a0I2XkIBHzkGbk0iHtUWahUlbh3yL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiECHSgVXvUFHA0Fch.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xw.xTnEFbkAhUkwlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMVLfXTZrQWYxAxTuUmbiUlHfPWdvUVOh3VcsIVYxIhO1vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMVLfXTZrQWYxARSuQlHfPWdvUVOh3VcsIVYxIhOwvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMVLfXTZrQWYxAhUkwlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMVLfzzajECHS8VcxMVYh.Bc4AWY8Hha00lXkImH9LCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xw.RSuQVLfzzajIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiECHM8FYx.xTuUmbiUlHfPWdvUVOh3VcsIVYxIhOyvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMVLfzzajICHM8FYh.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHFkFazUlbfzzajAxTuUmbiUlHfPWdvUVOh3VcsIVYxIhOyvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMVLf7jah.Bc4AWY8Hha00lXkImH9DCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2XSUFah.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xx.xTk0VZh.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xx.xSiQmHfPWdvUVOh3VcsIVYxIhOxvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMlLfPUctUlHfPWdvUVOh3VcsIVYxIhOv3RM77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiICHPkFcigFHKIFYh.Bc4AWY8Hha00lXkImH9DCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xx.BSkYWYrIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiICHSgVXvUlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMlLfbUX1UlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMlLfzzajEiHfPWdvUVOh3VcsIVYxIhO3vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMlLfzzajECHA0Fch.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xx.hQowFckImHfPWdvUVOh3VcsIVYxIhOwvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMlLfXTZrQWYxAhQxUVbh.Bc4AWY8Hha00lXkImH9DCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xx.hQowFckIGHRU1buIBHzkGbk0iHtUWahUlbh3CLtTCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xx.BTg4lHfPWdvUVOh3VcsIVYxIhOv3RM77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiICHFkFazUlbfrjXjIBHzkGbk0iHtUWahUlbh3SL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiICHC8VctQmHfPWdvUVOh3VcsIVYxIhOwvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMlLfPTYzUmakIBHzkGbk0iHtUWahUlbh3CLtTCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xx.hPrUlajIBHzkGbk0iHtUWahUlbh3SL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiICHSAmbkEFYh.Bc4AWY8Hha00lXkImH9DCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xx.RUtk1bu4FHM8FYkIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiICHHElbsIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiICHHElbsABTuMmHfPWdvUVOh3VcsIVYxIhOv3RM77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiICHM8FYxHBHzkGbk0iHtUWahUlbh3CN77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiICHM8FYx.RPsQmHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMlLfTkaoM2atAxStIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiICHFkFazUlbf7jah.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xx.BRgIWaf7jah.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xx.RSuQVLf7jah.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xx.RSuQlLf7jah.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xx.BUuAhQowFckImHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMlLffTXx0FHA0Fch.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xx.xT441XPgVXyUlHfPWdvUVOh3VcsIVYxIhOwvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMlLfLEZgAWYfL0a0I2XkIBHzkGbk0iHtUWahUlbh3yL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiICHSgVXvUFHA0Fch.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xx.xTnEFbkAhUkwlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMlLfXTZrQWYxAxTuUmbiUlHfPWdvUVOh3VcsIVYxIhOyvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMlLfXTZrQWYxARSuQlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMlLfXTZrQWYxAhUkwlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMlLfzzajECHS8VcxMVYh.Bc4AWY8Hha00lXkImH9LCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xx.RSuQVLfzzajIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiICHM8FYx.xTuUmbiUlHfPWdvUVOh3VcsIVYxIhOyvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyMlLfzzajICHM8FYh.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xx.xStIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiMCHSUVaoIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiMCHOMFch.Bc4AWY8Hha00lXkImH9HCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xy.BU04VYh.Bc4AWY8Hha00lXkImH9.iK0vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyM1Lf.UZzMFZfrjXjIBHzkGbk0iHtUWahUlbh3SL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiMCHLUlckwlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyM1LfLEZgAWYh.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xy.xUgYWYh.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xy.RSuQVLh.Bc4AWY8Hha00lXkImH9fCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xy.RSuQVLfDTazIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiMCHFkFazUlbh.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xy.hQowFckIGHFIWYwIBHzkGbk0iHtUWahUlbh3SL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiMCHFkFazUlbfHUYy8lHfPWdvUVOh3VcsIVYxIhOv3RM77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiMCHPElah.Bc4AWY8Hha00lXkImH9.iK0vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyM1LfXTZrQWYxAxRhQlHfPWdvUVOh3VcsIVYxIhOwvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyM1LfLza04Fch.Bc4AWY8Hha00lXkImH9DCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xy.BQkQWctUlHfPWdvUVOh3VcsIVYxIhOv3RM77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiMCHBwVYtQlHfPWdvUVOh3VcsIVYxIhOwvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyM1LfLEbxUVXjIBHzkGbk0iHtUWahUlbh3SL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiMCHU4VZy8lafzzajUlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyM1LffTXx0lHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyM1LffTXx0FHP81bh.Bc4AWY8Hha00lXkImH9.iK0vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyM1LfzzajIiHfPWdvUVOh3VcsIVYxIhO3vyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyM1LfzzajICHA0Fch.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xy.RUtk1bu4FHO4lHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyM1LfXTZrQWYxAxStIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiMCHHElbsAxStIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiMCHM8FYw.xStIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiMCHM8FYx.xStIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiMCHT8FHFkFazUlbh.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xy.BRgIWafDTazIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiMCHSkmaiAEZgMWYh.Bc4AWY8Hha00lXkImH9DCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xy.xTnEFbkAxTuUmbiUlHfPWdvUVOh3VcsIVYxIhOyvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyM1LfLEZgAWYfDTazIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiMCHSgVXvUFHVUFah.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xy.hQowFckIGHS8VcxMVYh.Bc4AWY8Hha00lXkImH9LCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xy.hQowFckIGHM8FYh.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xy.hQowFckIGHVUFah.Bc4AWY8Hha00lXkImH9.COuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xy.RSuQVLfL0a0I2XkIBHzkGbk0iHtUWahUlbh3yL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiMCHM8FYw.RSuQlHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxSyM1LfzzajICHS8VcxMVYh.Bc4AWY8Hha00lXkImH9LCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHOM2Xy.RSuQlLfzzajIBHzkGbk0iHtUWahUlbh3CL77hUgwVck4COVEFa0UFHvI2avUlbzkWOh7zbiMCHO4lHfPWdvUVOh3VcsIVYxIhOvvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxP0ImckEiHfPWdvUVOhLGcxklamIhOvDCLy.SLvDCLwTSLvDCLwfiPvDSPwXCQ0DyM4bSMAECLwfSL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhLTcxYWYxHBHzkGbk0iHyQmbo41Yh3CLw.SLvDCLw.SLvDCLw.SL3DSPwDTL3.SPw.SL3DCOuXUXrUWY9viUgwVckABbx8FbkIGc40iHCUmb1U1Lh.Bc4AWY8HxbzIWZtclH9.SLvDCLw.SLvDCLw.SLvDCNvDTLvDSPwvyKVEFa0UlO7XUXrUWYf.mbuAWYxQWd8HxP0ImckQiHfPWdvUVOhLGcxklamIhOvDCLw.SLvDCLw.SLvDCLwfCLAECLwDTL77hUgwVck4COVEFa0UFHvI2avUlbzkWOhLTcxYWYh.Bc4AWY8HxbzIWZtclH9fCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvfCL3.CNvvyKVEFa0UlO77xShoVYiQmO77BTx8FbkIGcoU1b9vyKJU2ZkI1a3AUXzMFZ9..VU4FcoQGakQF.H.PF.XB.q..N..D.HAPS.7E.jAPZIDUBVk.VInUBckvWITVBnkvaIPWB1kvdFkM.......f.A..........F..................fQhC"
                                    },
                                    "fileref": {
                                        "name": "Europa by Reason",
                                        "filename": "Europa by Reason.maxsnap",
                                        "filepath": "~/Documents/Max 9/Snapshots",
                                        "filepos": -1,
                                        "snapshotfileid": "f97962d9473eeb72553f7b5f0448d08f"
                                    }
                                }
                            ]
                        }
                    },
                    "text": "vst~ \"C74_AU:/Europa by Reason\"",
                    "varname": "vst~",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-107",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1615.0, -22.0, 50.0, 22.0 ],
                    "text": "48"
                }
            },
            {
                "box": {
                    "blackkeycolor": [ 1.0, 1.0, 1.0, 0.02 ],
                    "hkeycolor": [ 0.745098, 0.596078, 1.0, 1.0 ],
                    "id": "obj-46",
                    "ignoreclick": 1,
                    "maxclass": "kslider",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "offset": 24,
                    "outlettype": [ "int", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1746.0, 59.0, 420.0, 64.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 491.0, 60.0, 364.0, 57.0 ],
                    "saved_attribute_attributes": {
                        "hkeycolor": {
                            "expression": "themecolor.live_scale_awareness"
                        }
                    },
                    "whitekeycolor": [ 0.0, 0.0, 0.0, 0.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
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
                        "rect": [ 34.0, 96.0, 1444.0, 852.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 130.0, 417.0, 46.0, 22.0 ],
                                    "text": "route 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 78.0, 499.0, 29.5, 22.0 ],
                                    "text": "+ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-81",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 242.0, 463.0, 35.0, 22.0 ],
                                    "text": "clear"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-72",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 186.0, 463.0, 44.0, 22.0 ],
                                    "text": "join"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-71",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "bang", "bang", "clear", "int" ],
                                    "patching_rect": [ 130.0, 96.0, 78.0, 22.0 ],
                                    "text": "t b b clear i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-64",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 165.0, 308.0, 38.0, 22.0 ],
                                    "text": "jam 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-49",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
                                    "numoutlets": 4,
                                    "outlettype": [ "int", "", "", "int" ],
                                    "patching_rect": [ 130.0, 355.0, 61.0, 22.0 ],
                                    "text": "counter"
                                }
                            },
                            {
                                "box": {
                                    "coll_data": {
                                        "count": 4,
                                        "data": [
                                            {
                                                "key": 1,
                                                "value": [ 48 ]
                                            },
                                            {
                                                "key": 2,
                                                "value": [ 31 ]
                                            },
                                            {
                                                "key": 3,
                                                "value": [ 36 ]
                                            },
                                            {
                                                "key": 4,
                                                "value": [ 39 ]
                                            }
                                        ]
                                    },
                                    "id": "obj-48",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
                                    "patching_rect": [ 193.0, 540.0, 120.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "embed": 1,
                                        "precision": 6
                                    },
                                    "text": "coll scale @embed 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 130.0, 237.0, 29.5, 22.0 ],
                                    "text": "bag"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 189.0, 185.0, 92.0, 22.0 ],
                                    "text": "join"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-91",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 130.0, 36.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-92",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 78.0, 454.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-93",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 262.0, 36.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-94",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 157.0, 604.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-95",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 193.0, 604.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-48", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "midpoints": [ 198.5, 217.0, 139.5, 217.0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-49", 0 ],
                                    "midpoints": [ 139.5, 261.0, 139.5, 261.0 ],
                                    "order": 1,
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-72", 1 ],
                                    "midpoints": [ 139.5, 301.0, 220.109375, 301.0, 220.109375, 448.0, 220.5, 448.0 ],
                                    "order": 0,
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-95", 0 ],
                                    "source": [ "obj-48", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "order": 1,
                                    "source": [ "obj-49", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-72", 0 ],
                                    "order": 0,
                                    "source": [ "obj-49", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.79731673002243, 0.612278521060944, 0.38196262717247, 1.0 ],
                                    "destination": [ "obj-49", 0 ],
                                    "midpoints": [ 174.5, 337.0, 139.5, 337.0 ],
                                    "source": [ "obj-64", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-81", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-94", 0 ],
                                    "source": [ "obj-7", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-71", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "midpoints": [ 139.5, 121.0, 139.5, 121.0 ],
                                    "source": [ "obj-71", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-48", 0 ],
                                    "midpoints": [ 178.83333333333334, 121.0, 172.3125, 121.0, 172.3125, 184.96875, 117.0, 184.96875, 117.0, 507.4921875, 202.5, 507.4921875 ],
                                    "source": [ "obj-71", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.79731673002243, 0.612278521060944, 0.38196262717247, 1.0 ],
                                    "destination": [ "obj-64", 0 ],
                                    "midpoints": [ 159.16666666666666, 217.0, 174.5, 217.0 ],
                                    "source": [ "obj-71", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-48", 0 ],
                                    "midpoints": [ 195.5, 508.0, 202.5, 508.0 ],
                                    "source": [ "obj-72", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-48", 0 ],
                                    "midpoints": [ 251.5, 508.0, 202.5, 508.0 ],
                                    "source": [ "obj-81", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-71", 0 ],
                                    "source": [ "obj-91", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-92", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 1 ],
                                    "source": [ "obj-93", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 1527.0, 20.0, 140.0, 22.0 ],
                    "text": "p note_random"
                }
            },
            {
                "box": {
                    "id": "obj-90",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1448.0, 41.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1448.0, -43.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-50",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1448.0, 1.0, 49.0, 22.0 ],
                    "text": "random"
                }
            },
            {
                "box": {
                    "hkeycolor": [ 1.0, 0.725490196078431, 0.003921568627451, 1.0 ],
                    "id": "obj-51",
                    "maxclass": "kslider",
                    "mode": 1,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "offset": 24,
                    "outlettype": [ "int", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1587.0, -127.0, 560.0, 83.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 491.0, 59.0, 364.0, 57.0 ],
                    "saved_attribute_attributes": {
                        "hkeycolor": {
                            "expression": "themecolor.live_gain_reduction_line_color"
                        }
                    }
                }
            },
            {
                "box": {
                    "id": "obj-54",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1648.0, 65.0, 41.0, 22.0 ],
                    "text": "s note"
                }
            },
            {
                "box": {
                    "id": "obj-57",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
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
                        "rect": [ 84.0, 140.0, 1000.0, 691.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "comment": "y-axis",
                                    "id": "obj-3",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 198.0, 139.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "edge number",
                                    "id": "obj-2",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 38.0, 139.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Threshold Number",
                                    "id": "obj-1",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 38.0, 29.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 38.0, 81.0, 117.0, 22.0 ],
                                    "text": "scale 0. 1. 0.01 1.01"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-64",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 198.0000033378601, 81.00000101327896, 117.0, 22.0 ],
                                    "text": "scale 0. 1. 127. 22.7"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "order": 1,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-64", 0 ],
                                    "order": 0,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-64", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 996.0, -226.0, 145.0, 22.0 ],
                    "text": "p scale-threshold-number"
                }
            },
            {
                "box": {
                    "id": "obj-97",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 780.0, 369.0, 39.0, 22.0 ],
                    "text": "r note"
                }
            },
            {
                "box": {
                    "annotation": "A MIDI note off message will be output when the input signal falls below this threshold.",
                    "annotation_name": "Note Off Threshold",
                    "appearance": 4,
                    "id": "obj-217",
                    "lcdbgcolor": [ 0.141176470588235, 0.141176470588235, 0.141176470588235, 0.0 ],
                    "lcdcolor": [ 0.498, 0.902, 0.973, 1.0 ],
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1001.0, -251.0, 44.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 230.15, 0.0, 29.335613, 15.0 ],
                    "saved_attribute_attributes": {
                        "lcdbgcolor": {
                            "expression": ""
                        },
                        "lcdcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 0.48 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Note Off Threshold",
                            "parameter_mmax": 0.48,
                            "parameter_modmode": 3,
                            "parameter_shortname": "Note Off Threshold",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "textjustification": 0,
                    "varname": "live.numbox"
                }
            },
            {
                "box": {
                    "id": "obj-112",
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
                        "rect": [ 84.0, 140.0, 1000.0, 691.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 87.0, 371.0, 101.0, 22.0 ],
                                    "text": "prepend textcolor"
                                }
                            },
                            {
                                "box": {
                                    "comment": "textcolor",
                                    "id": "obj-2",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 87.0, 421.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "velocity",
                                    "id": "obj-1",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 118.0, 50.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 411.0, 239.0, 45.0, 22.0 ],
                                    "text": "0, 1 50"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [ "bang", "bang", "" ],
                                    "patching_rect": [ 372.0, 198.0, 44.0, 22.0 ],
                                    "text": "sel 0 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-31",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "int" ],
                                    "patching_rect": [ 118.0, 108.0, 109.5, 22.0 ],
                                    "text": "t i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 208.0, 140.0, 29.5, 22.0 ],
                                    "text": "!= 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 105.0, 198.0, 32.0, 22.0 ],
                                    "text": "gate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 341.0, 243.0, 52.0, 22.0 ],
                                    "text": "1, 0 400"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "patching_rect": [ 411.0, 284.0, 40.0, 22.0 ],
                                    "text": "line"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 443.0, 319.0, 150.0, 20.0 ],
                                    "text": "fade alpha on change"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 87.0, 325.0, 343.0, 22.0 ],
                                    "text": "pak 1. f 0. 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-90",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 195.0, 284.0, 103.0, 22.0 ],
                                    "text": "scale 0 127 1. 0.3"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-31", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-90", 0 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "order": 1,
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "order": 0,
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 1 ],
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-31", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-7", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 3 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 1 ],
                                    "source": [ "obj-90", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 978.0, 547.0, 131.0, 22.0 ],
                    "text": "p a2m-get-textcolor-list"
                }
            },
            {
                "box": {
                    "id": "obj-191",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
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
                        "rect": [ 34.0, 95.0, 868.0, 803.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-1",
                                    "linecount": 3,
                                    "maxclass": "live.comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 140.0, 173.5, 150.0, 45.0 ],
                                    "text": "bit of a hacky way of ensuring we can visually see the note off messages. ",
                                    "textjustification": 0
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-187",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 91.0, 142.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-160",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 91.0, 183.0, 35.0, 22.0 ],
                                    "text": "del 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-182",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 91.0, 208.46575033664703, 29.5, 22.0 ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-175",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 212.0, 29.5, 22.0 ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-169",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 50.0, 100.0, 60.0, 22.0 ],
                                    "text": "sel 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-50",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 50.0, 268.0, 31.0, 22.0 ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "comment": "makenote-velocity",
                                    "id": "obj-188",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "signal-for-scope",
                                    "id": "obj-189",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 321.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-182", 0 ],
                                    "source": [ "obj-160", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-175", 0 ],
                                    "source": [ "obj-169", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-187", 0 ],
                                    "source": [ "obj-169", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "source": [ "obj-175", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "source": [ "obj-182", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-160", 0 ],
                                    "source": [ "obj-187", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-169", 0 ],
                                    "source": [ "obj-188", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-189", 0 ],
                                    "source": [ "obj-50", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 647.0, 618.0, 97.0, 22.0 ],
                    "text": "p get-scope-midi"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 2,
                    "id": "obj-152",
                    "linecount": 5,
                    "maxclass": "live.comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 875.0, -58.0, 92.0, 83.0 ],
                    "text": "Get velocity of new note to be triggered once old notes have been stopped",
                    "textjustification": 0
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 3,
                    "id": "obj-108",
                    "linecount": 13,
                    "maxclass": "live.comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 441.0, 38.5, 66.0, 159.0 ],
                    "text": "Then obviously also send \"stop\" when note off threshold is crossed in dynamic length mode",
                    "textjustification": 0
                }
            },
            {
                "box": {
                    "color": [ 1.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-105",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 342.0, -367.0, 95.0, 22.0 ],
                    "text": "r ---scope-active"
                }
            },
            {
                "box": {
                    "color": [ 1.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-96",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 749.0, 618.0, 95.0, 22.0 ],
                    "text": "r ---scope-active"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 3,
                    "id": "obj-71",
                    "linecount": 15,
                    "maxclass": "live.comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 293.0, 27.0, 98.0, 182.0 ],
                    "text": "Sending \"stop\" to makenote on each note-on ensures true monophonic behaviour. Without it, triggering at a new pitch when the old pitch hadn't received a note-off would leave it hanging in dynamic mode.",
                    "textjustification": 0
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 511.0, -1.0, 35.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "fontsize": 20.0,
                    "id": "obj-68",
                    "maxclass": "live.comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 806.0, -548.0, 280.0, 30.0 ],
                    "text": "MISC UI",
                    "textjustification": 0
                }
            },
            {
                "box": {
                    "color": [ 1.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-198",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 671.0, 70.0, 95.0, 22.0 ],
                    "text": "r ---length-mode"
                }
            },
            {
                "box": {
                    "color": [ 1.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-196",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 463.0, 194.0, 95.0, 22.0 ],
                    "text": "r ---length-mode"
                }
            },
            {
                "box": {
                    "color": [ 1.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-195",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 999.0, -343.0, 95.0, 22.0 ],
                    "text": "r ---length-mode"
                }
            },
            {
                "box": {
                    "color": [ 1.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-194",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1253.0, -226.0, 95.0, 22.0 ],
                    "text": "r ---length-mode"
                }
            },
            {
                "box": {
                    "color": [ 0.874509803921569, 0.980392156862745, 0.0, 1.0 ],
                    "id": "obj-193",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1049.0, 37.0, 97.0, 22.0 ],
                    "text": "s ---length-mode"
                }
            },
            {
                "box": {
                    "id": "obj-190",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 420.0, 441.0, 31.0, 22.0 ],
                    "text": "stop"
                }
            },
            {
                "box": {
                    "id": "obj-186",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 463.0, 332.0, 75.0, 22.0 ],
                    "text": "== 0"
                }
            },
            {
                "box": {
                    "id": "obj-185",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 463.0, 361.0, 98.7749794125557, 22.0 ],
                    "text": "gate"
                }
            },
            {
                "box": {
                    "id": "obj-184",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 671.0, 294.0, 29.5, 22.0 ],
                    "text": "f"
                }
            },
            {
                "box": {
                    "id": "obj-181",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "bang", "int" ],
                    "patching_rect": [ 570.0, 256.0, 71.0, 22.0 ],
                    "text": "t 100000 b i"
                }
            },
            {
                "box": {
                    "id": "obj-180",
                    "maxclass": "gswitch",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 645.0, 328.0, 45.0, 42.0 ]
                }
            },
            {
                "box": {
                    "annotation": "The pitch of the output MIDI note.",
                    "annotation_name": "Note Pitch",
                    "appearance": 1,
                    "id": "obj-87",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 830.0, 416.0, 43.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 276.15, 81.0, 43.0, 15.0 ],
                    "prototypename": "pitch",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 60 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "Note Pitch",
                            "parameter_mmax": 120.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Pitch",
                            "parameter_type": 0,
                            "parameter_unitstyle": 8
                        }
                    },
                    "varname": "Note Pitch"
                }
            },
            {
                "box": {
                    "id": "obj-85",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 420.0, 547.0, 246.0, 22.0 ],
                    "text": "makenote 127 100 @repeatmode 1"
                }
            },
            {
                "box": {
                    "annotation": "Length of the output MIDI note in Fixed mode.",
                    "annotation_name": "Note Length",
                    "hint": "",
                    "id": "obj-134",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 671.0, 137.0, 27.0, 37.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 446.15, 65.0, 27.0, 37.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "1/128", "1/64", "1/32T", "1/64D", "1/32", "1/16T", "1/32D", "1/16", "1/8T", "1/16D", "1/8", "1/4T", "1/8D", "1/4", "1/2T", "1/4D", "1/2", "1/1T", "1/2D", "1/1" ],
                            "parameter_initial": [ 7 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "Note Length",
                            "parameter_mapping_index": 28,
                            "parameter_mmax": 19,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Note Length",
                            "parameter_type": 2,
                            "parameter_unitstyle": 9
                        }
                    },
                    "showname": 0,
                    "varname": "Note Length"
                }
            },
            {
                "box": {
                    "id": "obj-141",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 671.0, 256.0, 137.0, 22.0 ],
                    "text": "translate notevalues ms"
                }
            },
            {
                "box": {
                    "fontname": "Arial Bold",
                    "fontsize": 10.0,
                    "id": "obj-159",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 671.0, 222.0, 73.0, 20.0 ],
                    "text": "route symbol"
                }
            },
            {
                "box": {
                    "coll_data": {
                        "count": 30,
                        "data": [
                            {
                                "key": 0,
                                "value": [ "128n" ]
                            },
                            {
                                "key": 1,
                                "value": [ "64n" ]
                            },
                            {
                                "key": 2,
                                "value": [ "32nt" ]
                            },
                            {
                                "key": 3,
                                "value": [ "64nd" ]
                            },
                            {
                                "key": 4,
                                "value": [ "32n" ]
                            },
                            {
                                "key": 5,
                                "value": [ "16nt" ]
                            },
                            {
                                "key": 6,
                                "value": [ "32nd" ]
                            },
                            {
                                "key": 7,
                                "value": [ "16n" ]
                            },
                            {
                                "key": 8,
                                "value": [ "8nt" ]
                            },
                            {
                                "key": 9,
                                "value": [ "16nd" ]
                            },
                            {
                                "key": 10,
                                "value": [ "8n" ]
                            },
                            {
                                "key": 11,
                                "value": [ "4nt" ]
                            },
                            {
                                "key": 12,
                                "value": [ "8nd" ]
                            },
                            {
                                "key": 13,
                                "value": [ "4n" ]
                            },
                            {
                                "key": 14,
                                "value": [ "2nt" ]
                            },
                            {
                                "key": 15,
                                "value": [ "4nd" ]
                            },
                            {
                                "key": 16,
                                "value": [ "2n" ]
                            },
                            {
                                "key": 17,
                                "value": [ "1nt" ]
                            },
                            {
                                "key": 18,
                                "value": [ "2nd" ]
                            },
                            {
                                "key": 19,
                                "value": [ "1n" ]
                            },
                            {
                                "key": 20,
                                "value": [ "1nd" ]
                            },
                            {
                                "key": 21,
                                "value": [ 2 ]
                            },
                            {
                                "key": 22,
                                "value": [ 3 ]
                            },
                            {
                                "key": 23,
                                "value": [ 4 ]
                            },
                            {
                                "key": 24,
                                "value": [ 6 ]
                            },
                            {
                                "key": 25,
                                "value": [ 8 ]
                            },
                            {
                                "key": 26,
                                "value": [ 12 ]
                            },
                            {
                                "key": 27,
                                "value": [ 16 ]
                            },
                            {
                                "key": 28,
                                "value": [ 24 ]
                            },
                            {
                                "key": 29,
                                "value": [ 32 ]
                            }
                        ]
                    },
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 10.0,
                    "id": "obj-162",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 671.0, 194.0, 59.5, 20.0 ],
                    "saved_object_attributes": {
                        "embed": 1,
                        "precision": 6
                    },
                    "text": "coll"
                }
            },
            {
                "box": {
                    "color": [ 1.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-167",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 875.0, -472.0, 97.0, 22.0 ],
                    "text": "r ---surface-color"
                }
            },
            {
                "box": {
                    "id": "obj-125",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 87.0, -313.0, 160.0, 22.0 ],
                    "text": "selector~ 3 @ramptime 100."
                }
            },
            {
                "box": {
                    "id": "obj-123",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 87.0, -339.0, 29.5, 22.0 ],
                    "text": "+ 1"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.0, 0.0, 0.0, 0.0 ],
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 14.0,
                    "id": "obj-38",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 872.0, 627.0, 49.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 277.15, 128.0, 40.0, 22.0 ],
                    "text": "95",
                    "textcolor": [ 1.0, 0.47637795275590555, 0.0, 0.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Medium",
                    "fontsize": 11.0,
                    "id": "obj-116",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 884.0, -500.0, 100.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 267.15, 41.0, 77.0, 20.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.live_control_fg"
                        }
                    },
                    "text": "MIDI OUTPUT"
                }
            },
            {
                "box": {
                    "id": "obj-115",
                    "maxclass": "live.comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 56.0, -470.0, 65.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 271.15, 18.0, 61.0, 18.0 ],
                    "text": "Monitoring:",
                    "textjustification": 0
                }
            },
            {
                "box": {
                    "id": "obj-99",
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 840.0, -448.0, 26.0, 51.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 325.15, 59.0, 5.0, 45.0 ]
                }
            },
            {
                "box": {
                    "annotation": "Determines if you hear the input signal pre or post input gain, or not at all.",
                    "annotation_name": "Monitoring Mode",
                    "id": "obj-93",
                    "maxclass": "live.tab",
                    "num_lines_patching": 3,
                    "num_lines_presentation": 1,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 87.0, -397.0, 56.0, 50.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 333.15, 16.0, 148.0, 19.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "Pre-Gain", "Post-Gain", "Off" ],
                            "parameter_linknames": 1,
                            "parameter_longname": "Monitoring Mode",
                            "parameter_mmax": 2,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Monitoring Mode",
                            "parameter_type": 2,
                            "parameter_unitstyle": 9
                        }
                    },
                    "varname": "Monitoring Mode"
                }
            },
            {
                "box": {
                    "id": "obj-82",
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
                        "rect": [ 84.0, 140.0, 1000.0, 691.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "comment": "textcolor-list",
                                    "id": "obj-7",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 280.0, 145.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 124.0, 288.0, 29.5, 22.0 ],
                                    "text": "\" \""
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 124.0, 446.0, 72.0, 22.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "comment": "unsync-bang",
                                    "id": "obj-9",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 124.0, 145.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-31",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "int" ],
                                    "patching_rect": [ 189.0, 198.0, 29.5, 22.0 ],
                                    "text": "t i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 199.5, 246.0, 29.5, 22.0 ],
                                    "text": "!= 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 176.0, 288.0, 32.0, 22.0 ],
                                    "text": "gate"
                                }
                            },
                            {
                                "box": {
                                    "comment": "textcolor",
                                    "id": "obj-1",
                                    "index": 3,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 280.0, 194.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "set",
                                    "id": "obj-6",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 124.0, 482.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "realtime-velocity-value",
                                    "id": "obj-5",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 189.0, 145.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 27.0, 52.128712832927704, 304.0, 35.0 ],
                                    "text": "if $i1 == 0 then textcolor \"LCD Text / Icon (Inactive)\" else textcolor \"LCD Text / Icon\""
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.855166792869568, 0.383484303951263, 0.223099306225777, 1.0 ],
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 27.0, 13.128712832927704, 99.0, 22.0 ],
                                    "text": "r ---device-status"
                                }
                            },
                            {
                                "box": {
                                    "comment": "text-color",
                                    "id": "obj-2",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 27.0, 102.1287128329277, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 1 ],
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-31", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-31", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 872.0, 588.0, 147.0, 22.0 ],
                    "text": "p a2m-format-velocity-text"
                }
            },
            {
                "box": {
                    "id": "obj-77",
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
                        "rect": [ 59.0, 106.0, 640.0, 480.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "comment": "active",
                                    "id": "obj-5",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 140.0, 215.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 140.0, 172.0, 57.0, 22.0 ],
                                    "text": "active $1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "velocity-mode",
                                    "id": "obj-1",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 140.0, 116.0, 30.0, 30.0 ]
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
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 1176.0, 174.0, 124.0, 22.0 ],
                    "text": "p format fixed-vel-box"
                }
            },
            {
                "box": {
                    "annotation": "In Fixed velocity mode, every MIDI note that is output will recieve this velocity.",
                    "annotation_name": "Fixed Velocity Value",
                    "id": "obj-76",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1176.0, 206.0, 44.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 438.15, 136.0, 44.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 100 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "Fixed Velocity Value",
                            "parameter_modmode": 0,
                            "parameter_shortname": "Fixed Velocity Value",
                            "parameter_type": 1,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "Fixed Velocity Value"
                }
            },
            {
                "box": {
                    "annotation": "Determines how much velocity will vary in Dynamic velocity mode.\n\nA low sensitivity means that the amount the signal exceeds the Note On threshold by matters less and output velocities will be relatively consistant.\n\nA high sensitivity will output more varied velocities (so long as the input signal is dynamic).\n",
                    "annotation_name": "Velocity Sensitivity",
                    "id": "obj-75",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1053.0, 252.0, 44.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 438.15, 117.0, 44.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 50 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "Velocity Sensitivity",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Velocity Sensitivity",
                            "parameter_type": 0,
                            "parameter_unitstyle": 5
                        }
                    },
                    "varname": "Velocity Sensitivity"
                }
            },
            {
                "box": {
                    "id": "obj-72",
                    "maxclass": "live.comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1228.0, 204.0, 38.98530697822571, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 379.15, 135.0, 57.0, 18.0 ],
                    "text": "Value",
                    "textjustification": 2
                }
            },
            {
                "box": {
                    "id": "obj-67",
                    "maxclass": "live.comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1104.0, 251.0, 57.417329996824265, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 379.15, 116.0, 57.0, 18.0 ],
                    "text": "Sensitivity",
                    "textjustification": 2
                }
            },
            {
                "box": {
                    "annotation": "In Dynamic mode, output MIDI notes will have a velocity that is relative to the amount the input audio exceeds the Note On threshold by. E.g. a signal that only just reaches the threshold will output a MIDI note with a relatively low velocity.\n\nIn Fixed mode, output MIDI notes will receive a fixed velocity value.",
                    "annotation_name": "Velocity Mode",
                    "id": "obj-4",
                    "maxclass": "live.tab",
                    "num_lines_patching": 1,
                    "num_lines_presentation": 2,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1053.0, 122.0, 100.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 333.15, 117.0, 49.0, 36.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "Dynamic", "Fixed" ],
                            "parameter_initial": [ 0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Velocity Mode",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Velocity Mode",
                            "parameter_type": 2,
                            "parameter_unitstyle": 9
                        }
                    },
                    "varname": "live.tab[1]"
                }
            },
            {
                "box": {
                    "id": "obj-88",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 830.0, 446.0, 41.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "obj-80",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "int" ],
                    "patching_rect": [ 889.0, 446.0, 29.5, 22.0 ],
                    "text": "t b i"
                }
            },
            {
                "box": {
                    "id": "obj-78",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 830.0, 481.0, 88.0, 22.0 ],
                    "text": "pack i i"
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Medium",
                    "fontsize": 11.0,
                    "id": "obj-43",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 390.0, -570.0, 79.27927923202515, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 267.15, -5.0, 99.0, 20.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.live_control_fg"
                        }
                    },
                    "text": "AUDIO INPUT"
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Medium",
                    "fontsize": 11.0,
                    "id": "obj-73",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 831.0, 393.0, 36.697018682956696, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 271.15, 61.0, 34.0, 20.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.live_control_fg"
                        }
                    },
                    "text": "Note"
                }
            },
            {
                "box": {
                    "annotation": "In Dynamic mode, the output MIDI note will end when the audio signal falls below the Note Off threshold.\n\nIn Fixed mode, the output MIDI note will end after a fixed note length.",
                    "annotation_name": "Note Length Mode",
                    "id": "obj-59",
                    "maxclass": "live.tab",
                    "num_lines_patching": 1,
                    "num_lines_presentation": 1,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1049.0, 6.0, 100.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 333.15, 80.0, 103.0, 17.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "Dynamic", "Fixed" ],
                            "parameter_initial": [ 0 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "Note Length Mode",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Note Length Mode",
                            "parameter_type": 2,
                            "parameter_unitstyle": 9
                        }
                    },
                    "spacing_x": 8.0,
                    "varname": "Note Length Mode"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 991.0, -448.0, 138.0, 37.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 267.15, 103.0, 218.0, 5.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 671.0, 104.0, 57.0, 22.0 ],
                    "text": "active $1"
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Medium",
                    "fontsize": 11.0,
                    "id": "obj-24",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1049.0, -17.0, 73.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 333.15, 61.0, 75.0, 20.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.live_control_fg"
                        }
                    },
                    "text": "Note Length"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
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
                        "rect": [ 191.0, 337.0, 640.0, 480.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-7",
                                    "linecount": 6,
                                    "maxclass": "live.comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 599.9999803304672, 247.8260788321495, 97.0, 79.0 ],
                                    "text": "when this was 0.01 some note offs were being missed when it came to quick transients",
                                    "textjustification": 0
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 314.0, 139.0, 29.5, 22.0 ],
                                    "text": "f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "int", "bang", "int" ],
                                    "patching_rect": [ 44.0, 72.0, 252.0, 22.0 ],
                                    "text": "t i b i"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-4",
                                    "linecount": 9,
                                    "maxclass": "live.comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 353.91803550720215, 87.0, 77.08196449279785, 113.0 ],
                                    "text": "...then when we re-enter dynamic mode we need to set our lower limit to 0 again",
                                    "textjustification": 0
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 0,
                                    "id": "obj-22",
                                    "linecount": 7,
                                    "maxclass": "live.comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 386.0, 318.0, 97.0, 105.0 ],
                                    "text": "if we're in fixed mode we need to have our low threshold follow our high threshold or else new transients will be missed...",
                                    "textjustification": 0
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 541.0, 272.0, 39.0, 22.0 ],
                                    "text": "- 0.02"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 315.0, 318.0, 29.5, 22.0 ],
                                    "text": "f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 428.0, 272.0, 39.0, 22.0 ],
                                    "text": "- 0.02"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 277.0, 318.0, 29.5, 22.0 ],
                                    "text": "0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "gswitch2",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 277.0, 263.0, 56.70491695404053, 31.967212200164795 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 276.0, 498.0, 155.0, 22.0 ],
                                    "text": "prepend _parameter_range"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 276.0, 453.0, 283.6065492630005, 22.0 ],
                                    "text": "pack 0. 1."
                                }
                            },
                            {
                                "box": {
                                    "comment": "hidden",
                                    "id": "obj-6",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 44.0, 557.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 44.0, 498.0, 61.0, 22.0 ],
                                    "text": "hidden $1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "note-length-mode",
                                    "id": "obj-3",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 44.26229381561279, 34.426228523254395, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "parameter-range",
                                    "id": "obj-2",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 276.0, 557.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-79",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "bang", "float", "float" ],
                                    "patching_rect": [ 315.0, 213.0, 245.90163230895996, 22.0 ],
                                    "text": "t b f f"
                                }
                            },
                            {
                                "box": {
                                    "comment": "note-on-value",
                                    "id": "obj-1",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 314.0, 64.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "source": [ "obj-12", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-79", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 1 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 1 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 1 ],
                                    "source": [ "obj-79", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-79", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "source": [ "obj-79", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-8", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-8", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 1000.0, -301.0, 120.0, 22.0 ],
                    "text": "p format-note-off-box"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.043137254901961, 0.043137254901961, 0.043137254901961, 0.0 ],
                    "activelinecolor": [ 1.0, 0.725490196078431, 0.101960784313725, 1.0 ],
                    "bgcolor": [ 0.043137254901961, 0.043137254901961, 0.043137254901961, 0.0 ],
                    "gridcolor": [ 0.109803921568627, 0.109803921568627, 0.109803921568627, 1.0 ],
                    "id": "obj-15",
                    "line_width": 3.0,
                    "linecolor": [ 0.043137254901961, 0.043137254901961, 0.043137254901961, 1.0 ],
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 342.0, -329.0, 124.52506136894226, 39.7687728703022 ],
                    "presentation": 1,
                    "presentation_rect": [ 3.1500000000000057, 16.75, 260.0, 124.0 ],
                    "range": [ -0.2, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 16.0,
                    "id": "obj-25",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 56.0, -497.0, 82.0, 24.0 ],
                    "text": "audio out"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 0,
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
                        "rect": [ 34.0, 95.0, 1372.0, 803.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 55.0, 121.0, 82.0, 22.0 ],
                                    "text": "ignoreclick $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 55.0, 82.0, 33.0, 22.0 ],
                                    "text": "== 0"
                                }
                            },
                            {
                                "box": {
                                    "comment": "ignoreclick",
                                    "id": "obj-2",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 55.0, 157.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.855166792869568, 0.383484303951263, 0.223099306225777, 1.0 ],
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 55.0, 42.0, 99.0, 22.0 ],
                                    "text": "r ---device-status"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 87.0, -435.0, 113.0, 22.0 ],
                    "text": "p format-monitoring"
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
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
                        "rect": [ 34.0, 95.0, 1372.0, 803.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "comment": "active",
                                    "id": "obj-6",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 454.0, 260.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-51",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 454.0, 182.0, 33.0, 22.0 ],
                                    "text": "== 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-46",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 454.0, 213.4764397740364, 57.0, 22.0 ],
                                    "text": "active $1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "velocity-mode",
                                    "id": "obj-3",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 450.0, 128.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "ignoreclick",
                                    "id": "obj-2",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 175.0, 192.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 175.0, 114.0, 33.0, 22.0 ],
                                    "text": "== 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 175.0, 145.55656480789185, 82.0, 22.0 ],
                                    "text": "ignoreclick $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 175.0, 73.0, 99.0, 22.0 ],
                                    "text": "r ---device-status"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-51", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-46", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-46", 0 ],
                                    "source": [ "obj-51", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 1053.0, 174.0, 131.0, 22.0 ],
                    "text": "p format-sensitivity-dial"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
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
                        "rect": [ 106.0, 96.0, 1372.0, 768.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-9",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 260.55302760998416, 118.0, 286.0, 35.0 ],
                                    "text": "if $i1 == 0 then textcolor \"LCD Text / Icon (Inactive)\" else textcolor 1. 1. 1. 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "linecount": 4,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 38.0, 118.0, 165.0, 62.0 ],
                                    "text": "if $i1 == 0 then textcolor \"LCD Text / Icon (Inactive)\" else textcolor \"LCD Text / Icon\""
                                }
                            },
                            {
                                "box": {
                                    "comment": "notes-text",
                                    "id": "obj-4",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 260.55302760998416, 221.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "signal-text",
                                    "id": "obj-3",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 38.0, 221.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.855166792869568, 0.383484303951263, 0.223099306225777, 1.0 ],
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 155.0, 46.0, 99.0, 22.0 ],
                                    "text": "r ---device-status"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "order": 1,
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "order": 0,
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 103.0, 45.0, 112.0, 22.0 ],
                    "text": "p format-scope-text"
                }
            },
            {
                "box": {
                    "fontname": "Ableton Sans Medium",
                    "fontsize": 11.0,
                    "id": "obj-17",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1053.0, 94.0, 74.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 269.15, 104.0, 57.0, 20.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.live_control_fg"
                        }
                    },
                    "text": "Velocity"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
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
                        "rect": [ 59.0, 106.0, 640.0, 480.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 70.0, 284.96575033664703, 29.5, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-14",
                                    "maxclass": "number~",
                                    "mode": 2,
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "float" ],
                                    "patching_rect": [ 185.0, 238.96575033664703, 94.0, 22.0 ],
                                    "sig": 0.0
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 157.0, 192.96575033664703, 29.5, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 157.0, 156.96575033664703, 40.0, 22.0 ],
                                    "text": "> -70."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 222.5, 126.96575033664703, 39.0, 22.0 ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 222.5, 156.96575033664703, 34.0, 22.0 ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 222.5, 192.96575033664703, 46.0, 22.0 ],
                                    "text": "dbtoa~"
                                }
                            },
                            {
                                "box": {
                                    "comment": "Gain Amount",
                                    "id": "obj-3",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 157.0, 64.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Gained Signal",
                                    "id": "obj-2",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 70.0, 337.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Raw Signal",
                                    "id": "obj-1",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 70.0, 64.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "order": 0,
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 1 ],
                                    "order": 1,
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 1 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "order": 1,
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "order": 0,
                                    "source": [ "obj-3", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 510.0, -494.0, 104.25, 22.0 ],
                    "text": "p applyInputGain"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 510.0, -412.0, 139.0, 22.0 ],
                    "text": "rampsmooth~ 44.1 4410"
                }
            },
            {
                "box": {
                    "id": "obj-74",
                    "maxclass": "newobj",
                    "numinlets": 6,
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
                        "rect": [ 34.0, 96.0, 1372.0, 721.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 411.0, 782.0, 84.0, 22.0 ],
                                    "text": "s trigger_pitch"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 411.0, 738.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "int" ],
                                    "patching_rect": [ 107.33333333333333, 130.0, 32.0, 22.0 ],
                                    "text": "t b 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "bang", "bang", "bang", "int" ],
                                    "patching_rect": [ 23.0, 57.0, 272.0, 22.0 ],
                                    "text": "t b b b 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 349.0, 656.0, 50.0, 22.0 ],
                                    "text": "100"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 230.0, 727.0, 65.0, 22.0 ],
                                    "text": "95.958793"
                                }
                            },
                            {
                                "box": {
                                    "comment": "fixed-vel-value",
                                    "id": "obj-14",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 380.0, 607.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "gswitch",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 304.0, 691.0, 64.0, 32.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "velocity-mode",
                                    "id": "obj-11",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 273.0, 652.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 3,
                                    "id": "obj-34",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 187.0, 519.0, 134.47619181871414, 64.0 ],
                                    "text": "helps order of execution at short note lengths\n"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "int" ],
                                    "patching_rect": [ 304.0, 792.0, 49.5, 22.0 ],
                                    "text": "t b i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 303.0, 833.0, 50.0, 22.0 ],
                                    "text": "95"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "int": 1,
                                    "maxclass": "gswitch2",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 276.0, 236.0, 65.0, 46.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 344.0, 515.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 0,
                                    "id": "obj-7",
                                    "linecount": 7,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 66.0, 309.0, 139.0, 119.0 ],
                                    "text": "peakamp reports and starts new recording on bang. we wanna start a new recording without reporting and then report 10 ms after that new recording "
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-67",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 628.0, 447.0, 130.0, 22.0 ],
                                    "text": "scale 0. 100. 100. 127."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-66",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 476.0, 447.0, 117.0, 22.0 ],
                                    "text": "scale 0. 100. 100. 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-64",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 324.0, 487.0, 323.0, 22.0 ],
                                    "text": "clip"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-60",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 107.33333333333333, 95.0, 54.0, 22.0 ],
                                    "text": "delay 10"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-109",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 324.0, 447.0, 89.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 477.0, 37.827969, 150.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-107",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 324.0, 419.0, 118.0, 22.0 ],
                                    "text": "zmap 0. 0.25 0. 127."
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-104",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 383.0, 369.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-102",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 383.0, 327.0, 29.5, 22.0 ],
                                    "text": "- 1."
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-100",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 322.0, 301.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-98",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 322.0, 197.0, 65.0, 22.0 ],
                                    "text": "peakamp~"
                                }
                            },
                            {
                                "box": {
                                    "comment": "High Threshold Value",
                                    "id": "obj-5",
                                    "index": 5,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 396.0, 14.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Smoothed Signal",
                                    "id": "obj-4",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 322.0, 14.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Threshold On Bang",
                                    "id": "obj-3",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 23.0, 14.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Sensitivity Value",
                                    "id": "obj-2",
                                    "index": 6,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 470.5, 14.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Scaled Velocity",
                                    "id": "obj-1",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 303.0, 872.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-102", 0 ],
                                    "source": [ "obj-100", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-104", 0 ],
                                    "source": [ "obj-102", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-107", 0 ],
                                    "source": [ "obj-104", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-109", 0 ],
                                    "source": [ "obj-107", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-64", 0 ],
                                    "source": [ "obj-109", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "order": 0,
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "order": 1,
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 1 ],
                                    "order": 2,
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 1 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-100", 0 ],
                                    "source": [ "obj-16", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 1 ],
                                    "source": [ "obj-18", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-66", 0 ],
                                    "order": 1,
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-67", 0 ],
                                    "order": 0,
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 2 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-98", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-102", 1 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-6", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "midpoints": [ 32.5, 637.48046875, 358.5, 637.48046875 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-60", 0 ],
                                    "source": [ "obj-6", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-98", 0 ],
                                    "source": [ "obj-6", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 1 ],
                                    "order": 1,
                                    "source": [ "obj-64", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "order": 0,
                                    "source": [ "obj-64", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-64", 1 ],
                                    "source": [ "obj-66", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-64", 2 ],
                                    "source": [ "obj-67", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-9", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-98", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 1 ],
                                    "source": [ "obj-98", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 889.0, 287.0, 182.23957309126854, 22.0 ],
                    "text": "p getVelocity"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 631.0, -278.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-48",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 611.0, -242.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 512.0, -60.0, 49.774979412555695, 22.0 ],
                    "text": "edge~"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 512.0, -94.0, 118.0, 22.0 ],
                    "text": "thresh~ 0.1 1."
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
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
                        "rect": [ 84.0, 140.0, 1000.0, 691.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "comment": "y-axis",
                                    "id": "obj-3",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 198.0, 139.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "edge number",
                                    "id": "obj-2",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 38.0, 139.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Threshold Number",
                                    "id": "obj-1",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 38.0, 29.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 38.0, 81.0, 117.0, 22.0 ],
                                    "text": "scale 0. 1. 0.01 1.01"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-64",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 198.0000033378601, 81.00000101327896, 117.0, 22.0 ],
                                    "text": "scale 0. 1. 127. 22.7"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "order": 1,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-64", 0 ],
                                    "order": 0,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-64", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 611.0, -301.0, 145.0, 22.0 ],
                    "text": "p scale-threshold-number"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 2,
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
                        "rect": [ 34.0, 95.0, 1372.0, 803.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "comment": "hidden",
                                    "id": "obj-10",
                                    "index": 3,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 501.0, 174.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 501.0, 137.0, 61.0, 22.0 ],
                                    "text": "hidden $1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "note-length-mode",
                                    "id": "obj-6",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 501.0, 87.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.855166792869568, 0.383484303951263, 0.223099306225777, 1.0 ],
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 29.0, 45.0, 99.0, 22.0 ],
                                    "text": "r ---device-status"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "linecount": 3,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 29.0, 91.0, 182.0, 49.0 ],
                                    "text": "if $i1 == 0 then linecolor 0 0 0 0 else linecolor 0.498 0.902 0.973 1."
                                }
                            },
                            {
                                "box": {
                                    "comment": "linecolor",
                                    "id": "obj-4",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 29.0, 162.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "presentation_rect",
                                    "id": "obj-3",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 250.0, 162.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-37",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 250.0, 118.0, 187.0, 22.0 ],
                                    "text": "presentation_rect 3 $1 260.3 11.1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "Y Position",
                                    "id": "obj-2",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 250.0, 45.0, 30.0, 30.0 ]
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
                                    "destination": [ "obj-37", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 1122.0, -186.0, 150.0, 22.0 ],
                    "text": "p format-note-off-threshold"
                }
            },
            {
                "box": {
                    "id": "obj-63",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
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
                        "rect": [ 106.0, 96.0, 1372.0, 768.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-7",
                                    "linecount": 3,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 49.0, 87.0, 182.0, 49.0 ],
                                    "text": "if $i1 == 0 then linecolor 0 0 0 0 else linecolor 0.498 0.902 0.973 1."
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.855166792869568, 0.383484303951263, 0.223099306225777, 1.0 ],
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 49.0, 41.0, 99.0, 22.0 ],
                                    "text": "r ---device-status"
                                }
                            },
                            {
                                "box": {
                                    "comment": "linecolor",
                                    "id": "obj-4",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 49.0, 164.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "presentation_rect",
                                    "id": "obj-3",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 282.0, 164.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-37",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 282.0, 87.0, 187.0, 22.0 ],
                                    "text": "presentation_rect 3 $1 260.3 11.1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "Y Position",
                                    "id": "obj-2",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 282.0, 41.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 726.0, -255.0, 151.0, 22.0 ],
                    "text": "p format-note-on-threshold"
                }
            },
            {
                "box": {
                    "hint": "",
                    "id": "obj-58",
                    "linecolor": [ 0.498, 0.902, 0.973, 1.0 ],
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1122.0, -143.0, 200.0, 5.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 3.0, 127.0, 260.3, 11.1 ],
                    "saved_attribute_attributes": {
                        "linecolor": {
                            "expression": ""
                        }
                    },
                    "varname": "note-off-threshold-line"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 510.0, -451.0, 35.0, 22.0 ],
                    "text": "abs~"
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 52.0, -2.5, 35.0, 22.0 ],
                    "text": "dac~"
                }
            },
            {
                "box": {
                    "annotation": "Control the gain of the input signal.",
                    "annotation_name": "Input Gain",
                    "appearance": 4,
                    "id": "obj-8",
                    "lcdbgcolor": [ 0.12156862745098, 0.12156862745098, 0.12156862745098, 0.0 ],
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 595.0, -530.0, 44.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 59.150000000000006, 1.0, 44.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "lcdbgcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_linknames": 1,
                            "parameter_longname": "Input Gain",
                            "parameter_mmax": 12.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Input Gain",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "textjustification": 0,
                    "varname": "Input Gain"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 10.0,
                    "id": "obj-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1108.0, -529.0, 55.464615657925606, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 4.150000000000006, -1.0, 62.16438700000001, 18.0 ],
                    "text": "Input Gain",
                    "textcolor": [ 0.647058823529412, 0.643137254901961, 0.643137254901961, 1.0 ]
                }
            },
            {
                "box": {
                    "hint": "",
                    "id": "obj-31",
                    "linecolor": [ 0.498, 0.902, 0.973, 1.0 ],
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 726.0, -217.0, 200.0, 5.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 3.0, 74.85, 260.3, 11.1 ],
                    "saved_attribute_attributes": {
                        "linecolor": {
                            "expression": ""
                        }
                    },
                    "varname": "note-on-threshold-line"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 103.0, -30.0, 110.0, 10.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 3.1500000000000057, 16.0, 260.0, 15.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 10.0,
                    "id": "obj-70",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1108.0, -505.0, 55.070773273706436, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 105.15, -1.0, 48.164387000000005, 18.0 ],
                    "text": "Note On",
                    "textcolor": [ 0.647058823529412, 0.643137254901961, 0.643137254901961, 1.0 ]
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.109803921568627, 0.109803921568627, 0.109803921568627, 1.0 ],
                    "annotation": "A MIDI note on message will be output when the audio signal exceeds this threshold. \n\nAt higher values, the device is less sensitive and will output less triggers.\n\nAt extremely low values, you may experience feedback.",
                    "annotation_name": "Note On Threshold",
                    "appearance": 4,
                    "id": "obj-55",
                    "lcdbgcolor": [ 0.043137254901961, 0.043137254901961, 0.043137254901961, 0.0 ],
                    "lcdcolor": [ 0.498039215686275, 0.901960784313726, 0.972549019607843, 1.0 ],
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 611.0, -340.0, 44.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 150.15, 1.0, 29.335613012313843, 15.0 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "lcdbgcolor": {
                            "expression": ""
                        },
                        "lcdcolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": "themecolor.live_value_bar"
                        },
                        "valueof": {
                            "parameter_initial": [ 0.5 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "Note On Threshold",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Note On Threshold",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "textcolor": [ 0.594473705410263, 0.720560630419913, 0.928309050695498, 1.0 ],
                    "textjustification": 0,
                    "varname": "Note On Threshold"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "live.comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 103.0, 84.0, 64.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 3.1500000000000057, 143.0, 68.0, 18.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.live_lcd_control_fg"
                        }
                    },
                    "text": "Audio Input",
                    "textcolor": [ 0.931948395395052, 0.771744459193783, 0.523883756405412, 1.0 ],
                    "textjustification": 0
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "live.comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 185.0, 84.0, 62.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 199.15, 143.0, 64.0, 18.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": ""
                        }
                    },
                    "text": "MIDI Output",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "textjustification": 0
                }
            },
            {
                "box": {
                    "fontname": "Arial Bold",
                    "fontsize": 10.0,
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 510.0, -558.0, 32.0, 20.0 ],
                    "text": "adc~"
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.043137254901961, 0.043137254901961, 0.043137254901961, 1.0 ],
                    "id": "obj-19",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 103.0, -17.0, 110.16438674926758, 51.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 3.1500000000000057, -2.0, 260.0, 161.5 ],
                    "proportion": 0.39,
                    "rounded": 7
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.6470588235294118, 0.6470588235294118, 0.6470588235294118, 1.0 ],
                    "id": "obj-7",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 734.0, -448.0, 96.5, 52.99794793128967 ],
                    "presentation": 1,
                    "presentation_rect": [ 267.15, 13.0, 219.0, 25.0 ],
                    "proportion": 0.39
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ],
                    "id": "obj-21",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1143.0, -418.0, 43.83333333333326, 35.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 273.15, 125.0, 47.0, 27.0 ],
                    "proportion": 0.39,
                    "saved_attribute_attributes": {
                        "bgfillcolor": {
                            "expression": "themecolor.live_lcd_bg"
                        }
                    }
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.6470588235294118, 0.6470588235294118, 0.6470588235294118, 1.0 ],
                    "id": "obj-110",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 875.0, -448.0, 100.86523693799973, 53.5 ],
                    "presentation": 1,
                    "presentation_rect": [ 267.15, 59.0, 218.0, 100.0 ],
                    "proportion": 0.39
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.876076281070709, 0.981157898902893, 0.0, 0.16 ],
                    "bordercolor": [ 1.0, 1.0, 1.0, 0.11 ],
                    "id": "obj-3",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 52.0, -511.0, 252.0, 278.0 ],
                    "proportion": 0.39
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.811764705882353, 0.811764705882353, 0.811764705882353, 0.5 ],
                    "id": "obj-66",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 706.0, -553.0, 547.0, 184.0 ],
                    "proportion": 0.39
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.043137254901961, 0.043137254901961, 0.043137254901961, 0.0 ],
                    "activelinecolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "annotation": "",
                    "bgcolor": [ 0.043137254901961, 0.043137254901961, 0.043137254901961, 0.0 ],
                    "hint": "",
                    "id": "obj-53",
                    "line_width": 3.0,
                    "linecolor": [ 0.0, 0.0, 0.0, 0.0 ],
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 647.0, 654.0, 124.52506136894226, 47.534249663352966 ],
                    "presentation": 1,
                    "presentation_rect": [ 3.1500000000000057, 18.0, 260.0, 107.0 ],
                    "range": [ 0.0, 1.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-125", 1 ],
                    "order": 1,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "order": 0,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-185", 1 ],
                    "source": [ "obj-10", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-105", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-93", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-82", 2 ],
                    "source": [ "obj-112", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-121", 1 ],
                    "source": [ "obj-114", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-121", 0 ],
                    "source": [ "obj-114", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-114", 0 ],
                    "source": [ "obj-117", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-173", 1 ],
                    "source": [ "obj-117", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-117", 0 ],
                    "midpoints": [ 429.5, 612.0, 429.5, 612.0 ],
                    "source": [ "obj-118", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-122", 1 ],
                    "source": [ "obj-121", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-122", 0 ],
                    "source": [ "obj-121", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-125", 0 ],
                    "source": [ "obj-123", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-174", 1 ],
                    "order": 0,
                    "source": [ "obj-125", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-174", 0 ],
                    "order": 1,
                    "source": [ "obj-125", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "source": [ "obj-129", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-132", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-162", 0 ],
                    "source": [ "obj-134", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-184", 0 ],
                    "source": [ "obj-141", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-157", 1 ],
                    "source": [ "obj-155", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-157", 0 ],
                    "source": [ "obj-156", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-173", 0 ],
                    "source": [ "obj-157", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-173", 0 ],
                    "source": [ "obj-158", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-141", 0 ],
                    "source": [ "obj-159", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "order": 1,
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 1 ],
                    "order": 2,
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "order": 3,
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-74", 2 ],
                    "order": 0,
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-173", 0 ],
                    "source": [ "obj-160", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-160", 2 ],
                    "source": [ "obj-161", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-159", 0 ],
                    "source": [ "obj-162", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-160", 3 ],
                    "source": [ "obj-163", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-160", 0 ],
                    "source": [ "obj-164", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-171", 0 ],
                    "midpoints": [ 233.5, 1013.0, 197.0, 1013.0, 197.0, 834.0, 222.5, 834.0 ],
                    "source": [ "obj-166", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "order": 0,
                    "source": [ "obj-167", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "order": 1,
                    "source": [ "obj-167", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-158", 2 ],
                    "source": [ "obj-169", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-158", 1 ],
                    "source": [ "obj-170", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-172", 1 ],
                    "order": 0,
                    "source": [ "obj-171", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-172", 0 ],
                    "order": 1,
                    "source": [ "obj-171", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-171", 1 ],
                    "source": [ "obj-173", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-171", 0 ],
                    "source": [ "obj-173", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 1 ],
                    "source": [ "obj-174", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "source": [ "obj-174", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
                    "source": [ "obj-18", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
                    "source": [ "obj-18", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-85", 2 ],
                    "source": [ "obj-180", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-180", 0 ],
                    "source": [ "obj-181", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-180", 1 ],
                    "source": [ "obj-181", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-184", 0 ],
                    "source": [ "obj-181", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-180", 2 ],
                    "source": [ "obj-184", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-190", 0 ],
                    "source": [ "obj-185", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-185", 0 ],
                    "source": [ "obj-186", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-85", 0 ],
                    "source": [ "obj-190", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "source": [ "obj-191", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 1 ],
                    "source": [ "obj-194", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-195", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-181", 0 ],
                    "order": 0,
                    "source": [ "obj-196", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-186", 0 ],
                    "order": 1,
                    "source": [ "obj-196", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "source": [ "obj-198", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-190", 0 ],
                    "midpoints": [ 536.5, 33.43924403190613, 429.3902741074562, 33.43924403190613, 429.3902741074562, 422.0056502819061, 429.5, 422.0056502819061 ],
                    "source": [ "obj-20", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-74", 0 ],
                    "midpoints": [ 520.5, 50.00565028190613, 898.5, 50.00565028190613 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-57", 0 ],
                    "source": [ "obj-217", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-157", 2 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-28", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-160", 1 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-158", 0 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-134", 0 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-125", 2 ],
                    "order": 1,
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "order": 0,
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-75", 0 ],
                    "source": [ "obj-39", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-75", 0 ],
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 0 ],
                    "order": 1,
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-74", 1 ],
                    "order": 2,
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-77", 0 ],
                    "order": 0,
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 0 ],
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-63", 0 ],
                    "source": [ "obj-40", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-158", 3 ],
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-217", 0 ],
                    "source": [ "obj-42", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-217", 0 ],
                    "order": 1,
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 0 ],
                    "order": 0,
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 0 ],
                    "order": 0,
                    "source": [ "obj-47", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 1 ],
                    "midpoints": [ 1536.5, 63.15234375, 1508.0, 63.15234375, 1508.0, -4.0, 1487.5, -4.0 ],
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 0 ],
                    "order": 1,
                    "source": [ "obj-47", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 2 ],
                    "order": 1,
                    "source": [ "obj-48", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-74", 4 ],
                    "order": 0,
                    "source": [ "obj-48", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "midpoints": [ 1457.5, -16.0, 1457.5, -16.0 ],
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-90", 0 ],
                    "midpoints": [ 1457.5, 26.0, 1457.5, 26.0 ],
                    "source": [ "obj-50", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 1 ],
                    "order": 0,
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 2 ],
                    "source": [ "obj-51", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 1 ],
                    "order": 1,
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "order": 1,
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 1 ],
                    "order": 0,
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 1 ],
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-57", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-193", 0 ],
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-63", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-80", 0 ],
                    "source": [ "obj-74", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-74", 5 ],
                    "source": [ "obj-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-74", 3 ],
                    "midpoints": [ 1185.5, 279.542165517807, 996.4437438547611, 279.542165517807 ],
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
                    "destination": [ "obj-85", 0 ],
                    "source": [ "obj-78", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 1 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-78", 1 ],
                    "source": [ "obj-80", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-78", 0 ],
                    "source": [ "obj-80", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "source": [ "obj-82", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "source": [ "obj-82", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "source": [ "obj-82", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-112", 0 ],
                    "order": 0,
                    "source": [ "obj-85", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-118", 1 ],
                    "order": 3,
                    "source": [ "obj-85", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-118", 0 ],
                    "source": [ "obj-85", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-191", 0 ],
                    "order": 2,
                    "source": [ "obj-85", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-82", 1 ],
                    "order": 1,
                    "source": [ "obj-85", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-88", 0 ],
                    "source": [ "obj-87", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-78", 0 ],
                    "source": [ "obj-88", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 0 ],
                    "source": [ "obj-90", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-123", 0 ],
                    "source": [ "obj-93", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "source": [ "obj-96", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-87", 0 ],
                    "source": [ "obj-97", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-114": [ "vst~", "vst~", 0 ],
            "obj-121": [ "live.gain~", "synth_volume", 0 ],
            "obj-132": [ "vst~[1]", "vst~[1]", 0 ],
            "obj-134": [ "Note Length", "Note Length", 0 ],
            "obj-155": [ "damping", "damping", 0 ],
            "obj-156": [ "reverb", "reverb", 0 ],
            "obj-161": [ "env_sustain", "sustain", 0 ],
            "obj-163": [ "env_release", "release", 0 ],
            "obj-164": [ "env_attack", "attack", 0 ],
            "obj-169": [ "partials_decay", "harm decay", 0 ],
            "obj-170": [ "balance", "balance", 0 ],
            "obj-171": [ "live.gain~[1]", "live.gain~", 0 ],
            "obj-173": [ "rnbo~[1]", "rnbo~", 0 ],
            "obj-174": [ "live.gain~[2]", "live.gain~[2]", 0 ],
            "obj-217": [ "Note Off Threshold", "Note Off Threshold", 0 ],
            "obj-22": [ "predelay", "predelay", 0 ],
            "obj-29": [ "env_decay", "decay", 0 ],
            "obj-32": [ "osc_gain", "osc gain", 0 ],
            "obj-4": [ "Velocity Mode", "Velocity Mode", 0 ],
            "obj-41": [ "num_partials", "harmonics", 0 ],
            "obj-55": [ "Note On Threshold", "Note On Threshold", 0 ],
            "obj-59": [ "Note Length Mode", "Note Length Mode", 0 ],
            "obj-75": [ "Velocity Sensitivity", "Velocity Sensitivity", 0 ],
            "obj-76": [ "Fixed Velocity Value", "Fixed Velocity Value", 0 ],
            "obj-8": [ "Input Gain", "Input Gain", 0 ],
            "obj-87": [ "Note Pitch", "Pitch", 0 ],
            "obj-93": [ "Monitoring Mode", "Monitoring Mode", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                },
                "1": {
                    "index": 1,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                },
                "2": {
                    "index": 2,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                },
                "3": {
                    "index": 3,
                    "name": "",
                    "parameters": [ "-", "-", "-", "Note Length", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}