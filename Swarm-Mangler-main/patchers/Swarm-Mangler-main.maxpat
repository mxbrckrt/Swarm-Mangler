{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 2,
            "revision": 1,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 129.0, 68.0, 943.0, 942.0 ],
        "openinpresentation": 1,
        "lefttoolbarpinned": 2,
        "toptoolbarpinned": 2,
        "righttoolbarpinned": 2,
        "bottomtoolbarpinned": 2,
        "toolbars_unpinned_last_save": 15,
        "tags": "sample player",
        "subpatcher_template": "<none>",
        "title": "swarm mangler MAIN",
        "boxes": [
            {
                "box": {
                    "color": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                    "fontname": "Helvetica Neue",
                    "fontsize": 11.0,
                    "id": "obj-93",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 193.24812030075194, 162.57692307692312, 76.0, 21.0 ],
                    "text": "s -internal-init"
                }
            },
            {
                "box": {
                    "color": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                    "id": "obj-91",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 923.5, 133.30769230769226, 103.0, 22.0 ],
                    "text": "r -external-decay-"
                }
            },
            {
                "box": {
                    "color": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                    "id": "obj-87",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 676.0, 170.0, 111.0, 22.0 ],
                    "text": "r -external-spatdur-"
                }
            },
            {
                "box": {
                    "id": "obj-92",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 543.0, 418.2936507936508, 45.0, 22.0 ],
                    "text": "open 2"
                }
            },
            {
                "box": {
                    "id": "obj-90",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 614.0, 577.2936507936508, 80.0, 22.0 ],
                    "text": "/clearsources"
                }
            },
            {
                "box": {
                    "color": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                    "fontname": "Helvetica Neue",
                    "fontsize": 11.0,
                    "id": "obj-96",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 612.0, 542.2936507936508, 82.0, 21.0 ],
                    "text": "r -to-visualizer-"
                }
            },
            {
                "box": {
                    "id": "obj-88",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 464.0, 491.2936507936508, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 464.0, 519.2936507936508, 52.0, 22.0 ],
                    "text": "gate 1 0"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 464.0, 645.2936507936508, 95.0, 22.0 ],
                    "text": "route connected"
                }
            },
            {
                "box": {
                    "id": "obj-85",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 31.666666666666686, 666.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-86",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 31.666666666666686, 696.0, 93.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "openviewer.js",
                        "parameter_enable": 0
                    },
                    "text": "js openviewer.js"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "bgcolor2": [ 0.0, 0.0, 0.0, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.0, 0.4823529411764706, 0.47058823529411764, 1.0 ],
                    "bgfillcolor_color1": [ 0.0, 0.0, 0.0, 1.0 ],
                    "bgfillcolor_color2": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "color",
                    "gradient": 1,
                    "id": "obj-46",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 31.666666666666686, 633.0, 89.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 560.0, 375.0, 89.0, 22.0 ],
                    "text": "open visualizer",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 607.0, 719.2936507936508, 91.0, 20.0 ],
                    "text": "to external spat"
                }
            },
            {
                "box": {
                    "color": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                    "fontname": "Helvetica Neue",
                    "fontsize": 11.0,
                    "id": "obj-41",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 527.0, 519.2936507936508, 99.0, 21.0 ],
                    "text": "r -start-html-script"
                }
            },
            {
                "box": {
                    "color": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                    "fontname": "Helvetica Neue",
                    "fontsize": 11.0,
                    "id": "obj-38",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 193.2481203007519, 138.0, 101.0, 21.0 ],
                    "text": "s -start-html-script"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 527.0, 542.2936507936508, 64.0, 22.0 ],
                    "text": "script start"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 464.0, 618.2936507936508, 145.0, 22.0 ],
                    "saved_object_attributes": {
                        "autostart": 0,
                        "defer": 0,
                        "watch": 0
                    },
                    "text": "node.script max_bridge.js",
                    "textfile": {
                        "filename": "max_bridge.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 31.666666666666686, 556.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 31.666666666666686, 586.0, 108.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "openwebpage.js",
                        "parameter_enable": 0
                    },
                    "text": "js openwebpage.js"
                }
            },
            {
                "box": {
                    "color": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                    "fontname": "Helvetica Neue",
                    "fontsize": 11.0,
                    "id": "obj-36",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 193.24812030075188, 111.27819548872179, 95.0, 21.0 ],
                    "text": "s -recall-outpatch"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "bgcolor2": [ 0.0, 0.0, 0.0, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.0, 0.6980392156862745, 0.0, 1.0 ],
                    "bgfillcolor_color1": [ 0.0, 0.0, 0.0, 1.0 ],
                    "bgfillcolor_color2": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "color",
                    "gradient": 1,
                    "id": "obj-4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 31.666666666666686, 530.0, 118.0094786729858, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 97.20448871356174, 112.0, 125.01798561151082, 22.0 ],
                    "text": "open documentation",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-48",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1330.7692307692307, 219.84615384615384, 184.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 43.27199330395109, 158.0, 184.0, 21.0 ],
                    "text": "how many outputs are you using?",
                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "set" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 1,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 287.0, 190.0, 384.0, 561.0 ],
                        "subpatcher_template": "<none>",
                        "boxes": [
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-1",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 11.0, 43.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-42",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 98.0, 197.29629629629608, 55.0, 22.0 ],
                                    "text": "zl slice 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-41",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 96.5, 221.29629629629608, 70.0, 23.0 ],
                                    "text": "nchans $1"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 98.0, 172.22222222222217, 115.0, 22.0 ],
                                    "text": "r -number-of-chans-"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "set" ],
                                    "patching_rect": [ 177.77777777777771, 100.0, 89.0, 22.0 ],
                                    "text": "t b set"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-212",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 177.77777777777771, 127.67676767676767, 67.0, 22.0 ],
                                    "text": "open wave"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-204",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 114.81481481481478, 279.6296296296297, 70.0, 22.0 ],
                                    "text": "loadmess 0"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "obj-235",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 87.03703703703707, 390.74074074074076, 45.0, 22.0 ],
                                    "style": "default",
                                    "text": "set $1"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-230",
                                    "maxclass": "number~",
                                    "mode": 2,
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "float" ],
                                    "patching_rect": [ 50.0, 279.6296296296297, 56.037037037037024, 22.0 ],
                                    "sig": 0.0
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-222",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "int", "int", "int", "int" ],
                                    "patching_rect": [ 87.03703703703707, 337.03703703703707, 220.0, 22.0 ],
                                    "text": "unpack 0 0 0 0"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-219",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 87.03703703703707, 311.1111111111112, 129.0, 22.0 ],
                                    "text": "translate ms hh:mm:ss"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-218",
                                    "maxclass": "newobj",
                                    "numinlets": 7,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 87.03703703703707, 364.8148148148149, 220.0, 22.0 ],
                                    "text": "combine @config clocktime @triggers 0"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 50.0, 246.2962962962962, 163.0, 22.0 ],
                                    "text": "mc.sfrecord~ 8 @bitdepth 24"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-43",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 49.99999581481484, 39.999993222222315, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-44",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 177.77776681481487, 39.999993222222315, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-46",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 126.40740481481487, 472.7407772222224, 30.0, 30.0 ]
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
                                    "destination": [ "obj-42", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-219", 0 ],
                                    "source": [ "obj-204", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "midpoints": [ 187.27777777777771, 163.66732877781214, 59.5, 163.66732877781214 ],
                                    "source": [ "obj-212", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-235", 0 ],
                                    "source": [ "obj-218", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-222", 0 ],
                                    "source": [ "obj-219", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-218", 6 ],
                                    "source": [ "obj-222", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-218", 4 ],
                                    "source": [ "obj-222", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-218", 2 ],
                                    "source": [ "obj-222", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-218", 0 ],
                                    "source": [ "obj-222", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-219", 0 ],
                                    "source": [ "obj-230", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-46", 0 ],
                                    "source": [ "obj-235", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-230", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-212", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-46", 0 ],
                                    "source": [ "obj-4", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-41", 0 ],
                                    "source": [ "obj-42", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-44", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 1211.5384615384614, 533.3076923076924, 77.27272727272727, 22.0 ],
                    "text": "p -rec-"
                }
            },
            {
                "box": {
                    "id": "obj-84",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1034.6153846153845, 225.61538461538458, 29.0, 22.0 ],
                    "text": "thru"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-79",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1411.5384615384614, 196.76923076923075, 23.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 629.0, 471.0, 23.0, 21.0 ],
                    "text": "tilt",
                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-80",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1411.5384615384614, 175.61538461538458, 44.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 629.0, 451.0, 44.0, 21.0 ],
                    "text": "absorb",
                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-81",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1411.5384615384614, 154.46153846153845, 39.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 411.0, 471.0, 39.0, 21.0 ],
                    "text": "decay",
                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-82",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1411.5384615384614, 133.3076923076923, 28.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 411.0, 451.0, 28.0, 21.0 ],
                    "text": "size",
                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-77",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1330.7692307692307, 196.76923076923075, 39.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 508.0, 472.0, 39.024390243902445, 21.0 ],
                    "text": "depth",
                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-76",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1330.7692307692307, 175.61538461538458, 66.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 508.0, 451.0, 66.0, 21.0 ],
                    "text": "mod speed",
                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-75",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1330.7692307692307, 154.46153846153845, 78.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 411.0, 491.0, 78.0, 21.0 ],
                    "text": "predelay (ms)",
                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-78",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1330.7692307692307, 133.3076923076923, 27.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 321.0, 451.0, 27.0, 21.0 ],
                    "text": "mix",
                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-72",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1248.076923076923, 185.2307692307692, 68.0, 22.0 ],
                    "text": "prepend tilt"
                }
            },
            {
                "box": {
                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                    "id": "obj-73",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 1253.8461538461538, 133.3076923076923, 71.0, 22.0 ],
                    "restore": [ 0.1 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0,
                        "parameter_mappable": 0
                    },
                    "text": "pattr rev_tilt",
                    "varname": "rev_tilt"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-74",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1253.8461538461538, 164.07692307692307, 25.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 571.0, 472.0, 54.63414634146342, 18.0 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ -0.1 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "revtilt",
                            "parameter_mmax": 1.0,
                            "parameter_mmin": -1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "tilt",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "textcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "varname": "revtilt"
                }
            },
            {
                "box": {
                    "id": "obj-69",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1138.4615384615383, 185.2307692307692, 93.0, 22.0 ],
                    "text": "prepend absorb"
                }
            },
            {
                "box": {
                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                    "id": "obj-70",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 1142.3076923076924, 133.3076923076923, 96.0, 22.0 ],
                    "restore": [ 30.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0,
                        "parameter_mappable": 0
                    },
                    "text": "pattr rev_absorb",
                    "varname": "rev_absorb"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-71",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1142.3076923076924, 164.07692307692307, 25.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 571.0, 452.0, 54.63414634146342, 18.0 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 10.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "revabsorb",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "revabsorb",
                            "parameter_type": 1,
                            "parameter_unitstyle": 5
                        }
                    },
                    "textcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "varname": "revabsorb"
                }
            },
            {
                "box": {
                    "id": "obj-65",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1251.923076923077, 83.3076923076923, 89.0, 22.0 ],
                    "text": "prepend speed"
                }
            },
            {
                "box": {
                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                    "id": "obj-66",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 1255.7692307692307, 31.384615384615387, 92.0, 22.0 ],
                    "restore": [ 1.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0,
                        "parameter_mappable": 0
                    },
                    "text": "pattr rev_speed",
                    "varname": "rev_speed"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-67",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1255.7692307692307, 64.07692307692308, 25.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 453.0, 452.0, 54.63414634146342, 18.0 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 1 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "revspeed",
                            "parameter_mmax": 10.0,
                            "parameter_mmin": 0.01,
                            "parameter_modmode": 0,
                            "parameter_shortname": "revspeed",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "textcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "varname": "revspeed"
                }
            },
            {
                "box": {
                    "id": "obj-61",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1034.6153846153845, 185.2307692307692, 88.0, 22.0 ],
                    "text": "prepend decay"
                }
            },
            {
                "box": {
                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                    "id": "obj-62",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 1038.4615384615383, 133.3076923076923, 91.0, 22.0 ],
                    "restore": [ 94.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0,
                        "parameter_mappable": 0
                    },
                    "text": "pattr rev_decay",
                    "varname": "rev_decay"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-63",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1038.4615384615383, 164.07692307692307, 25.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 356.0, 473.0, 54.63414634146342, 18.0 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 82 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "revdecay",
                            "parameter_mmax": 110.0,
                            "parameter_mmin": 5.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "revdecay",
                            "parameter_type": 1,
                            "parameter_unitstyle": 0
                        }
                    },
                    "textcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "varname": "revdecay"
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1482.6923076923076, 83.3076923076923, 77.0, 22.0 ],
                    "text": "prepend size"
                }
            },
            {
                "box": {
                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                    "id": "obj-59",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 1486.5384615384614, 31.384615384615387, 81.0, 22.0 ],
                    "restore": [ 100.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0,
                        "parameter_mappable": 0
                    },
                    "text": "pattr rev_size",
                    "varname": "rev_size"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-60",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1486.5384615384614, 64.07692307692308, 25.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 356.0, 452.0, 54.63414634146342, 18.0 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 90 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "revsize",
                            "parameter_mmax": 100.0,
                            "parameter_mmin": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "revsize",
                            "parameter_type": 1,
                            "parameter_unitstyle": 0
                        }
                    },
                    "textcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "varname": "revsize"
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1376.923076923077, 83.3076923076923, 86.0, 22.0 ],
                    "text": "prepend depth"
                }
            },
            {
                "box": {
                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                    "id": "obj-56",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 1380.7692307692307, 31.384615384615387, 89.0, 22.0 ],
                    "restore": [ 5.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0,
                        "parameter_mappable": 0
                    },
                    "text": "pattr rev_depth",
                    "varname": "rev_depth"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-57",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1380.7692307692307, 64.07692307692308, 25.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 453.0, 473.0, 54.63414634146342, 18.0 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 5 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "revdepth",
                            "parameter_mmax": 20.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "revdepth",
                            "parameter_type": 1,
                            "parameter_unitstyle": 0
                        }
                    },
                    "textcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "varname": "revdepth"
                }
            },
            {
                "box": {
                    "id": "obj-50",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1142.3076923076924, 83.3076923076923, 102.0, 22.0 ],
                    "text": "prepend predelay"
                }
            },
            {
                "box": {
                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                    "id": "obj-51",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 1146.1538461538462, 31.384615384615387, 95.0, 22.0 ],
                    "restore": [ 10.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0,
                        "parameter_mappable": 0
                    },
                    "text": "pattr rev_pdelay",
                    "varname": "rev_pdelay"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-54",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1146.1538461538462, 66.0, 25.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 356.0, 493.0, 54.63414634146342, 18.0 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 10.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "rev_pdel",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "rev_pdel",
                            "parameter_type": 1,
                            "parameter_unitstyle": 0
                        }
                    },
                    "textcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "varname": "rev_pdel"
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1034.6153846153845, 83.3076923076923, 98.0, 22.0 ],
                    "text": "prepend mix_rev"
                }
            },
            {
                "box": {
                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                    "id": "obj-155",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 1038.4615384615383, 31.384615384615387, 78.0, 22.0 ],
                    "restore": [ 15.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0,
                        "parameter_mappable": 0
                    },
                    "text": "pattr rev_mix",
                    "varname": "rev_mix"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-156",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1038.4615384615383, 66.0, 25.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 267.0, 452.0, 54.63414634146342, 18.0 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 15.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "revmix",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "revmix",
                            "parameter_type": 1,
                            "parameter_unitstyle": 5
                        }
                    },
                    "textcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "varname": "revmix"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Lato",
                    "fontsize": 14.0,
                    "id": "obj-187",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1038.4615384615383, 4.461538461538462, 104.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 428.31707317073165, 421.0, 104.0, 23.0 ],
                    "text": "Reverb settings",
                    "textcolor": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "color": [ 0.0, 0.4823529411764706, 0.47058823529411764, 1.0 ],
                    "id": "obj-27",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1034.6153846153845, 302.5384615384615, 184.0, 22.0 ],
                    "text": "mc.gen~ fdn_multireverb.gendsp"
                }
            },
            {
                "box": {
                    "color": [ 0.0, 0.4823529411764706, 0.47058823529411764, 1.0 ],
                    "id": "obj-45",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 1,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 0.0, 26.0, 943.0, 916.0 ],
                        "openinpresentation": 1,
                        "lefttoolbarpinned": 2,
                        "toptoolbarpinned": 2,
                        "righttoolbarpinned": 2,
                        "bottomtoolbarpinned": 2,
                        "toolbars_unpinned_last_save": 15,
                        "subpatcher_template": "<none>",
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 300.0, 790.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1.0 ],
                                    "bgcolor2": [ 0.301961, 0.301961, 0.301961, 1.0 ],
                                    "bgfillcolor_angle": 270.0,
                                    "bgfillcolor_autogradient": 0.0,
                                    "bgfillcolor_color": [ 0.0, 0.6941176470588235, 0.6823529411764706, 1.0 ],
                                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1.0 ],
                                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                                    "bgfillcolor_proportion": 0.5,
                                    "bgfillcolor_type": "color",
                                    "fontname": "Lato",
                                    "fontsize": 16.0,
                                    "gradient": 1,
                                    "id": "obj-183",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 300.0, 763.0, 228.0, 28.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 354.0, 10.0, 228.0, 28.0 ],
                                    "text": "SAVE CURRENT PATCH STATE",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                                    "fontname": "Helvetica Neue",
                                    "fontsize": 11.0,
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 300.0, 816.0, 94.0, 21.0 ],
                                    "text": "r -recall-outpatch"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 300.0, 848.0, 185.0, 22.0 ],
                                    "text": "read mangler-outputpatch.json, 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 300.0, 875.0, 216.0, 22.0 ],
                                    "text": "store 1, write mangler-outputpatch.json"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 94.0, 847.0, 29.5, 22.0 ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 202.0, 875.0, 89.0, 22.0 ],
                                    "text": "storagewindow"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 155.0, 875.0, 34.0, 22.0 ],
                                    "text": "write"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 94.0, 875.0, 45.0, 22.0 ],
                                    "text": "store 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-52",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 94.0, 929.0, 353.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "client_rect": [ 100, 174, 1314, 1052 ],
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0,
                                        "storage_rect": [ 1149, 102, 1667, 786 ]
                                    },
                                    "text": "pattrstorage mangler-outputpatch @savemode 2 @autorestore 1",
                                    "varname": "mangler-outputpatch"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-87",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 282.9145728643216, 59.0, 59.0, 22.0 ],
                                    "text": "gettheme"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-85",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 167.0, 59.0, 35.0, 22.0 ],
                                    "text": "open"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-82",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 226.63316582914572, 59.0, 39.0, 22.0 ],
                                    "text": "dump"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-81",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 29.0, 55.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-80",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 71.0, 59.0, 50.0, 22.0 ],
                                    "text": "compile"
                                }
                            },
                            {
                                "box": {
                                    "border": 0,
                                    "embedstate": [
                                        [ "clearBtnBorderColor", 4.4e-05, 1, 0.984291, 1 ],
                                        [ "cellBorderColor", 0.219604, 0.219604, 0.219604, 1 ],
                                        [ "titleColor", 0.666544, 0.646787, 0.000278, 1 ],
                                        [ "cellRadius", 1.5 ],
                                        [ "tabActiveBorderColor", 4.4e-05, 1, 0.984291, 1 ],
                                        [ "tabsInactiveTextColor", 0.4, 0.4, 0.4, 1 ],
                                        [ "axisFontSize", 16 ],
                                        [ "cellActiveBgColor", 0, 0.395952, 0.392072, 0.5 ],
                                        [ "padding", 2 ],
                                        [ "axisColor", 0.4, 0.4, 0.4, 1 ],
                                        [ "borderWidth", 1 ],
                                        [ "tabInactiveBgColor", 0.07843, 0.07843, 0.07843, 1 ],
                                        [ "clearTextColor", 1, 1, 1, 1 ],
                                        [ "cellFontSize", 14 ],
                                        [ "cellActiveBorderColor", 4.4e-05, 1, 0.984291, 0.4 ],
                                        [ "activeTextColor", 1, 1, 1, 1 ],
                                        [ "tabInactiveBorderColor", 0.4, 0.4, 0.4, 1 ],
                                        [ "bgColor", 0.07843, 0.07843, 0.07843, 1 ],
                                        [ "tabsFontSize", 12 ],
                                        [ "disabledCellColor", 0.219604, 0.219604, 0.219604, 0.3 ],
                                        [ "sideTitleColor", 0.666544, 0.646787, 0.000278, 1 ],
                                        [ "fontFamily", "Lato" ],
                                        [ "clearBtnBgColor", 0.219604, 0.219604, 0.219604, 0 ],
                                        [ "cellOffColor", 0.07843, 0.07843, 0.07843, 1 ],
                                        [ "clearFontSize", 14 ],
                                        [ "tabActiveBgColor", 0, 0.395952, 0.392072, 1 ],
                                        [ "tabsActiveTextColor", 1, 1, 1, 1 ],
                                        [ "titleFontSize", 20 ]
                                    ],
                                    "filename": "matrix_32x64.js",
                                    "id": "obj-74",
                                    "maxclass": "jsui",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 29.0, 127.0, 751.0, 594.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 10.0, 44.0, 916.0, 787.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_invisible": 1,
                                            "parameter_longname": "jsui",
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "jsui",
                                            "parameter_type": 3
                                        }
                                    },
                                    "varname": "jsui"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.7176470588235294, 0.43529411764705883, 0.0, 1.0 ],
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 49.0, 20.0, 119.0, 22.0 ],
                                    "restore": [ 0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr matrix-patchout",
                                    "varname": "matrix-patchout"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-2",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 29.0, 712.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-52", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-183", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-52", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-52", 0 ],
                                    "midpoints": [ 164.5, 913.1528662420383, 103.5, 913.1528662420383 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-74", 0 ],
                                    "source": [ "obj-5", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-52", 0 ],
                                    "midpoints": [ 211.5, 913.1528662420383, 103.5, 913.1528662420383 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-52", 0 ],
                                    "midpoints": [ 309.5, 913.1528662420383, 103.5, 913.1528662420383 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-74", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-52", 0 ],
                                    "midpoints": [ 309.5, 914.0385407469888, 103.5, 914.0385407469888 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-74", 0 ],
                                    "source": [ "obj-80", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-74", 0 ],
                                    "source": [ "obj-81", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-74", 0 ],
                                    "source": [ "obj-82", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-74", 0 ],
                                    "source": [ "obj-85", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-74", 0 ],
                                    "source": [ "obj-87", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ],
                        "bgcolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ]
                    },
                    "patching_rect": [ 1226.923076923077, 302.5384615384615, 106.0, 22.0 ],
                    "saved_object_attributes": {
                        "locked_bgcolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ]
                    },
                    "text": "p \"output  patche\"",
                    "varname": "@title output matrix patch"
                }
            },
            {
                "box": {
                    "id": "obj-177",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 85.33333333333334, 113.0, 80.0, 22.0 ],
                    "text": "prepend read"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 31.0, 82.5, 61.0, 22.0 ],
                    "text": "pipe 1000"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "embed": 1,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-1",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "preset-manager.maxpat",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "int" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 1,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 729.0, 290.0, 354.0, 628.0 ],
                        "openinpresentation": 1,
                        "lefttoolbarpinned": 2,
                        "toptoolbarpinned": 2,
                        "righttoolbarpinned": 2,
                        "bottomtoolbarpinned": 2,
                        "toolbars_unpinned_last_save": 15,
                        "subpatcher_template": "<none>",
                        "boxes": [
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-236",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 136.0, 936.0, 96.0, 40.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 22.0, 7.0, 132.0, 23.0 ],
                                    "text": "Preset management",
                                    "textcolor": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 247.0, 305.0, 52.0, 22.0 ],
                                    "text": "store $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 73.0, 153.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 186.0, 115.0, 48.0, 22.0 ],
                                    "text": "del 500"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "bang" ],
                                    "patching_rect": [ 105.0, 62.0, 100.0, 22.0 ],
                                    "text": "t 1 b"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 186.0, 143.0, 119.0, 22.0 ],
                                    "text": "pattrstorage mangler"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 111.0, 509.0, 33.0, 22.0 ],
                                    "text": "read"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 105.0, 115.0, 55.0, 22.0 ],
                                    "text": "pipe 800"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 82.0, 278.0, 29.5, 22.0 ],
                                    "text": "t l l"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "fontface": 1,
                                    "fontname": "Lato",
                                    "fontsize": 9.0,
                                    "hint": "current cue",
                                    "htricolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "id": "obj-133",
                                    "maxclass": "number",
                                    "minimum": 1,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 82.0, 344.0, 26.0, 19.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 177.0, 156.0, 18.620689655172413, 19.0 ],
                                    "textcolor": [ 0.5764705882352941, 0.5764705882352941, 0.5764705882352941, 1.0 ],
                                    "triangle": 0,
                                    "tricolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "triscale": 0.5
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 82.0, 311.0, 41.0, 22.0 ],
                                    "text": "set $1"
                                }
                            },
                            {
                                "box": {
                                    "active1": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "bgcolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "bubblesize": 20,
                                    "embed": 0,
                                    "id": "obj-1",
                                    "maxclass": "preset",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                                    "patching_rect": [ 182.0, 218.0, 100.0, 40.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 8.0, 27.0, 175.0, 148.0 ],
                                    "preset_data": [
                                        {
                                            "number": 1,
                                            "data": [ 5, "obj-5", "number", "int", 0 ]
                                        },
                                        {
                                            "number": 2,
                                            "data": [ 5, "obj-5", "number", "int", 0 ]
                                        },
                                        {
                                            "number": 3,
                                            "data": [ 5, "obj-5", "number", "int", 0 ]
                                        },
                                        {
                                            "number": 4,
                                            "data": [ 5, "obj-5", "number", "int", 0 ]
                                        },
                                        {
                                            "number": 29,
                                            "data": [ 5, "obj-5", "number", "int", 0 ]
                                        },
                                        {
                                            "number": 30,
                                            "data": [ 5, "obj-5", "number", "int", 0 ]
                                        },
                                        {
                                            "number": 31,
                                            "data": [ 5, "obj-5", "number", "int", 0 ]
                                        },
                                        {
                                            "number": 32,
                                            "data": [ 5, "obj-5", "number", "int", 0 ]
                                        }
                                    ],
                                    "stored1": [ 0.0, 0.4823529411764706, 0.47058823529411764, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-132",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 146.0, 390.0, 34.0, 22.0 ],
                                    "text": "write"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-168",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 146.0, 509.0, 89.0, 22.0 ],
                                    "text": "storagewindow"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-167",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 146.0, 448.0, 77.0, 22.0 ],
                                    "text": "clientwindow"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "activebgoncolor": [ 0.5764705882352941, 0.5764705882352941, 0.5764705882352941, 1.0 ],
                                    "activetextcolor": [ 0.686275, 0.686275, 0.686275, 1.0 ],
                                    "activetextoncolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "annotation": "view the clients window",
                                    "annotation_name": "view clients",
                                    "bgcolor": [ 0.647058823529412, 0.647058823529412, 0.647058823529412, 0.0 ],
                                    "bgoncolor": [ 0.647058823529412, 0.647058823529412, 0.647058823529412, 0.0 ],
                                    "bordercolor": [ 0.5764705882352941, 0.5764705882352941, 0.5764705882352941, 1.0 ],
                                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "fontsize": 9.0,
                                    "id": "obj-41",
                                    "inactivelcdcolor": [ 0.992157, 0.992157, 0.992157, 1.0 ],
                                    "lcdcolor": [ 0.094117647058824, 0.309803921568627, 0.407843137254902, 1.0 ],
                                    "maxclass": "live.text",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 146.0, 426.0, 17.0, 17.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 197.0, 35.0, 17.31578947368422, 18.235294117647072 ],
                                    "rounded": 32.0,
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "activetextcolor": {
                                            "expression": ""
                                        },
                                        "activetextoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "inactivelcdcolor": {
                                            "expression": ""
                                        },
                                        "lcdcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_invisible": 2,
                                            "parameter_longname": "live.text[55]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.text",
                                            "parameter_type": 2
                                        }
                                    },
                                    "text": "c",
                                    "varname": "live.text[5]"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "activebgoncolor": [ 0.5764705882352941, 0.5764705882352941, 0.5764705882352941, 1.0 ],
                                    "activetextcolor": [ 0.686275, 0.686275, 0.686275, 1.0 ],
                                    "activetextoncolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "annotation": "view the slot preset window",
                                    "annotation_name": "view storage",
                                    "bgcolor": [ 0.647058823529412, 0.647058823529412, 0.647058823529412, 0.0 ],
                                    "bgoncolor": [ 0.647058823529412, 0.647058823529412, 0.647058823529412, 0.0 ],
                                    "bordercolor": [ 0.5764705882352941, 0.5764705882352941, 0.5764705882352941, 1.0 ],
                                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "fontsize": 9.0,
                                    "id": "obj-66",
                                    "inactivelcdcolor": [ 0.992157, 0.992157, 0.992157, 1.0 ],
                                    "lcdcolor": [ 0.094117647058824, 0.309803921568627, 0.407843137254902, 1.0 ],
                                    "maxclass": "live.text",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 146.0, 482.0, 17.0, 17.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 197.0, 61.0, 17.31578947368422, 18.235294117647072 ],
                                    "rounded": 32.0,
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "activetextcolor": {
                                            "expression": ""
                                        },
                                        "activetextoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "inactivelcdcolor": {
                                            "expression": ""
                                        },
                                        "lcdcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_invisible": 2,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "view-storage",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "view-storage",
                                            "parameter_type": 2
                                        }
                                    },
                                    "text": "s",
                                    "varname": "view-storage"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "activebgoncolor": [ 0.5764705882352941, 0.5764705882352941, 0.5764705882352941, 1.0 ],
                                    "activetextcolor": [ 0.686275, 0.686275, 0.686275, 1.0 ],
                                    "activetextoncolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "annotation": "manually write to hard drive",
                                    "annotation_name": "write to disk",
                                    "bgcolor": [ 0.647058823529412, 0.647058823529412, 0.647058823529412, 0.0 ],
                                    "bgoncolor": [ 0.647058823529412, 0.647058823529412, 0.647058823529412, 0.0 ],
                                    "bordercolor": [ 0.5764705882352941, 0.5764705882352941, 0.5764705882352941, 1.0 ],
                                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "fontsize": 9.0,
                                    "id": "obj-128",
                                    "inactivelcdcolor": [ 0.992157, 0.992157, 0.992157, 1.0 ],
                                    "lcdcolor": [ 0.094117647058824, 0.309803921568627, 0.407843137254902, 1.0 ],
                                    "maxclass": "live.text",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 146.0, 368.0, 17.0, 17.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 197.0, 88.0, 17.81578947368422, 18.235294117647072 ],
                                    "rounded": 32.0,
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "activetextcolor": {
                                            "expression": ""
                                        },
                                        "activetextoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "inactivelcdcolor": {
                                            "expression": ""
                                        },
                                        "lcdcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_invisible": 2,
                                            "parameter_longname": "live.text[58]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.text",
                                            "parameter_type": 2
                                        }
                                    },
                                    "text": "w",
                                    "varname": "live.text[2]"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-25",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 105.0, 12.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-26",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 247.0, 539.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "background": 1,
                                    "bgcolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "border": 1,
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "id": "obj-232",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 33.0, 38.0, 29.25, 28.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 5.0, 6.0, 225.0, 173.0 ],
                                    "proportion": 0.39,
                                    "rounded": 4
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-128", 0 ],
                                    "order": 2,
                                    "source": [ "obj-1", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-133", 0 ],
                                    "order": 3,
                                    "source": [ "obj-1", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "order": 1,
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "order": 0,
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-41", 0 ],
                                    "order": 1,
                                    "source": [ "obj-1", 2 ]
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
                                    "destination": [ "obj-66", 0 ],
                                    "order": 0,
                                    "source": [ "obj-1", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-12", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-132", 0 ],
                                    "source": [ "obj-128", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-132", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 91.5, 396.03195067264573, 29.3108546273388, 396.03195067264573, 29.3108546273388, 187.27427709911862, 191.5, 187.27427709911862 ],
                                    "order": 1,
                                    "source": [ "obj-133", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "order": 0,
                                    "source": [ "obj-133", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-167", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-168", 0 ]
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
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-25", 0 ]
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
                                    "destination": [ "obj-167", 0 ],
                                    "source": [ "obj-41", 0 ]
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
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-168", 0 ],
                                    "source": [ "obj-66", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-133", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 139.66666666666669, 190.19607843137254, 73.33333333333337, 35.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 6.980695468661679, 710.0, 230.0, 179.54545454545453 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "color": [ 0.0, 0.4823529411764706, 0.47058823529411764, 1.0 ],
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 497.0, 462.2936507936508, 376.9999999999998, 22.0 ],
                    "text": "poly~ player-core @parallel 1 @voices 32"
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 193.66666666666669, 402.0, 48.0, 22.0 ],
                    "text": "pipe 50"
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "int" ],
                    "patching_rect": [ 193.66666666666669, 343.0, 100.0, 22.0 ],
                    "text": "t 1 l 0"
                }
            },
            {
                "box": {
                    "color": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 617.0, 133.30769230769226, 113.0, 22.0 ],
                    "text": "r -external-oneshot-"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 617.0, 161.0769230769231, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 557.0, 161.0769230769231, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "color": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                    "id": "obj-25",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1226.923076923077, 258.30769230769226, 115.0, 22.0 ],
                    "text": "r -number-of-chans-"
                }
            },
            {
                "box": {
                    "color": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 234.66666666666669, 373.0, 117.0, 22.0 ],
                    "text": "s -number-of-chans-"
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 193.66666666666669, 317.0, 57.0, 22.0 ],
                    "text": "chans $1"
                }
            },
            {
                "box": {
                    "activedialcolor": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                    "activefgdialcolor": [ 0.5764705882352941, 0.5764705882352941, 0.5764705882352941, 1.0 ],
                    "activeneedlecolor": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                    "dialcolor": [ 0.5764705882352941, 0.5764705882352941, 0.5764705882352941, 1.0 ],
                    "fgdialcolor": [ 0.5764705882352941, 0.5764705882352941, 0.5764705882352941, 1.0 ],
                    "focusbordercolor": [ 0.0784301683306694, 0.0784301683306694, 0.0784301683306694, 1.0 ],
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-31",
                    "maxclass": "live.dial",
                    "needlecolor": [ 0.5764705882352941, 0.5764705882352941, 0.5764705882352941, 1.0 ],
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1071.1538461538462, 335.2307692307692, 56.0, 54.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 23.0, 46.20253164556962, 56.0, 54.0 ],
                    "saved_attribute_attributes": {
                        "activedialcolor": {
                            "expression": ""
                        },
                        "activefgdialcolor": {
                            "expression": ""
                        },
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "dialcolor": {
                            "expression": ""
                        },
                        "fgdialcolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "needlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "tricolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_invisible": 2,
                            "parameter_linknames": 1,
                            "parameter_longname": "master-out",
                            "parameter_mmax": 0.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "master out",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "textcolor": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                    "tricolor": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                    "varname": "master-out"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1071.1538461538462, 392.9230769230769, 39.0, 22.0 ],
                    "text": "dbtoa"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 1071.1538461538462, 416.0, 67.45562130177515, 22.0 ],
                    "text": "t f 20"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "multichannelsignal", "", "" ],
                    "patching_rect": [ 1071.1538461538462, 441.0, 67.45562130177515, 22.0 ],
                    "text": "mc.line~ 1"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1034.6153846153845, 467.9230769230769, 56.80473372781065, 22.0 ],
                    "text": "mc.*~ 1"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Lato",
                    "fontsize": 30.0,
                    "id": "obj-28",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 547.9737762237762, 4.461538461538462, 218.0, 42.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 13.98069546866168, 2.2025316455696213, 216.0, 42.0 ],
                    "text": "swarm-mangler",
                    "textcolor": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "color": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 557.0, 108.0769230769231, 99.0, 22.0 ],
                    "text": "r -external-panic-"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubble_bgcolor": [ 0.19607843137254902, 0.19607843137254902, 0.19607843137254902, 1.0 ],
                    "bubble_outlinecolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "id": "obj-6",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 933.0, 370.2936507936508, 84.0, 37.0 ],
                    "text": "n° of channels",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                    "clip_size": 1,
                    "coldcolor": [ 0.01568627450980392, 0.36470588235294116, 0.1450980392156863, 0.6 ],
                    "hotcolor": [ 0.6941176470588235, 0.5254901960784314, 0.023529411764705882, 1.0 ],
                    "id": "obj-10",
                    "interval": 50,
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "int" ],
                    "overloadcolor": [ 0.6941176470588235, 0.023529411764705882, 0.023529411764705882, 1.0 ],
                    "patching_rect": [ 1050.0, 494.8461538461538, 13.0, 31.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 15.48069546866168, 426.0, 213.0, 274.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": ""
                        }
                    },
                    "slidercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                    "warmcolor": [ 0.41568627450980394, 0.5294117647058824, 0.21176470588235294, 0.7 ]
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 687.0, 427.2936507936508, 50.0, 22.0 ],
                    "text": "target 0"
                }
            },
            {
                "box": {
                    "id": "obj-64",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 676.0, 397.2936507936508, 29.5, 22.0 ],
                    "text": "t l b"
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 464.0, 718.2936507936508, 138.0, 22.0 ],
                    "text": "udpsend 127.0.0.1 4001"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "linecount": 7,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1034.6153846153845, 556.3846153846154, 166.0, 102.0 ],
                    "text": "mc.dac~ 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64"
                }
            },
            {
                "box": {
                    "color": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                    "id": "obj-68",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 194.0, 84.96240601503759, 101.0, 22.0 ],
                    "text": "s -external-panic-"
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue",
                    "fontsize": 11.0,
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 31.0, 19.5, 55.0, 21.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-89",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 856.0, 380.2936507936508, 52.0, 22.0 ],
                    "text": "t l b"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 888.0, 411.2936507936508, 49.0, 22.0 ],
                    "text": "target 0"
                }
            },
            {
                "box": {
                    "color": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                    "id": "obj-104",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 856.0, 347.2936507936508, 115.0, 22.0 ],
                    "text": "r -number-of-chans-"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 497.0, 161.0769230769231, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "color": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                    "id": "obj-211",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 497.0, 82.0769230769231, 145.0, 22.0 ],
                    "text": "r -external-arpeggio-start-"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                    "activebgoncolor": [ 0.694117647058824, 0.0, 0.0, 1.0 ],
                    "activetextcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "activetextoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "bgcolor": [ 0.0, 0.0, 0.0, 0.22 ],
                    "bgoncolor": [ 0.694117647058824, 0.0, 0.0, 0.24 ],
                    "bordercolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "fontsize": 16.0,
                    "id": "obj-2",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1242.3076923076924, 464.07692307692304, 37.0, 26.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 27.37397534647763, 348.0, 70.0, 35.0 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "activebgoncolor": {
                            "expression": ""
                        },
                        "activetextcolor": {
                            "expression": ""
                        },
                        "activetextoncolor": {
                            "expression": ""
                        },
                        "bgcolor": {
                            "expression": ""
                        },
                        "bgoncolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "textoffcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "live.text[1]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.text[1]",
                            "parameter_type": 2
                        }
                    },
                    "text": "Rec-OFF",
                    "textcolor": [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
                    "textoffcolor": [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
                    "texton": "Rec-ON",
                    "varname": "live.text"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.243137254901961, 0.243137254901961, 0.243137254901961, 1.0 ],
                    "activebgoncolor": [ 0.0, 0.403921568627451, 0.690196078431373, 1.0 ],
                    "bgcolor": [ 0.243137254901961, 0.243137254901961, 0.243137254901961, 1.0 ],
                    "bordercolor": [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-5",
                    "maxclass": "live.button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1271.1538461538462, 492.9230769230769, 27.0, 27.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 183.54681485265047, 325.0, 19.0, 19.0 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "activebgoncolor": {
                            "expression": ""
                        },
                        "bgcolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [ "off", "on" ],
                            "parameter_longname": "live.button[9]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.button",
                            "parameter_type": 2
                        }
                    },
                    "varname": "count"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "id": "obj-7",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1301.923076923077, 492.9230769230769, 201.0, 35.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 27.37397534647763, 309.0, 172.0, 35.0 ],
                    "text": "choose where you want your soundfile to be written",
                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.301961, 0.301961, 0.301961, 1.0 ],
                    "bgcolor2": [ 0.301961, 0.301961, 0.301961, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.0, 0.6941176470588235, 0.6823529411764706, 1.0 ],
                    "bgfillcolor_color1": [ 0.301961, 0.301961, 0.301961, 1.0 ],
                    "bgfillcolor_color2": [ 0.2, 0.2, 0.2, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "color",
                    "gradient": 1,
                    "id": "obj-183",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 321.6666666666667, 402.0, 55.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 168.35443037974682, 62.202531645569636, 55.0, 22.0 ],
                    "text": "edit card",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "open" ],
                    "patching_rect": [ 321.6666666666667, 427.0, 42.0, 22.0 ],
                    "text": "t open"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 0.0 ],
                    "fontface": 0,
                    "fontname": "Lato",
                    "fontsize": 11.0,
                    "hint": "Elapsed time",
                    "id": "obj-210",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1211.5384615384614, 566.0, 87.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 100.21348151931713, 360.0, 119.0, 20.0 ],
                    "text": "00:00:00.000",
                    "textcolor": [ 0.968627, 0.968627, 0.968627, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-198",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 253.66666666666669, 427.0, 22.0, 22.0 ],
                    "text": "t 0"
                }
            },
            {
                "box": {
                    "id": "obj-166",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 253.66666666666669, 402.0, 63.0, 22.0 ],
                    "text": "closebang"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.290196, 0.309804, 0.301961, 0.0 ],
                    "color": [ 0.135835, 1.0, 0.04054, 1.0 ],
                    "elementcolor": [ 0.368627450980392, 0.019607843137255, 0.019607843137255, 1.0 ],
                    "id": "obj-95",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 193.66666666666669, 516.0, 45.0, 45.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 99.55645304441926, 50.7782892213272, 44.84848484848485, 44.84848484848485 ]
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                    "activebgoncolor": [ 0.0, 0.39595240354537964, 0.3920717239379883, 1.0 ],
                    "bgcolor": [ 0.0784313725490196, 0.0784313725490196, 0.0784313725490196, 1.0 ],
                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "focusbordercolor": [ 0.062745098039216, 0.070588235294118, 0.082352941176471, 1.0 ],
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-191",
                    "inactivetextoncolor": [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
                    "maxclass": "live.tab",
                    "num_lines_patching": 1,
                    "num_lines_presentation": 6,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 31.666666666666686, 294.0, 343.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 16.056803430533378, 181.0, 211.84778407625663, 112.0253164556962 ],
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": ""
                        },
                        "activebgoncolor": {
                            "expression": ""
                        },
                        "bgcolor": {
                            "expression": ""
                        },
                        "bordercolor": {
                            "expression": ""
                        },
                        "focusbordercolor": {
                            "expression": ""
                        },
                        "inactivetextoncolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "textoncolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_enum": [ "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "18", "20", "21", "24", "25", "26", "27", "28", "32" ],
                            "parameter_linknames": 1,
                            "parameter_longname": "multichannel-mode",
                            "parameter_mmax": 23,
                            "parameter_modmode": 0,
                            "parameter_shortname": "multichannel-mode",
                            "parameter_type": 2,
                            "parameter_unitstyle": 9
                        }
                    },
                    "spacing_x": 12.0,
                    "textcolor": [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "varname": "multichannel-mode"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1034.6153846153845, 258.30769230769226, 148.0, 35.0 ],
                    "text": "mc.receive~ polyplayer-out @chans 48"
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue",
                    "fontsize": 11.0,
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "int", "mangler.json", "bang", "bang" ],
                    "patching_rect": [ 31.0, 53.5, 182.0, 21.0 ],
                    "text": "t 4 mangler.json b b"
                }
            },
            {
                "box": {
                    "active": {
                        "@title output matrix patch": 0,
                        "@title output matrix patch::mangler-outputpatch": 0
                    },
                    "id": "obj-52",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 85.66666666666669, 246.0, 286.0, 22.0 ],
                    "saved_object_attributes": {
                        "client_rect": [ 100, 174, 1314, 1052 ],
                        "parameter_enable": 0,
                        "parameter_mappable": 0,
                        "storage_rect": [ 1149, 102, 1667, 786 ]
                    },
                    "text": "pattrstorage mangler @savemode 2 @autorestore 0",
                    "varname": "mangler"
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                    "border": 1,
                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "id": "obj-83",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 501.81993006993, 16.0, 29.25, 28.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 18.11471608721837, 305.0, 207.7319587628866, 87.62886597938144 ],
                    "proportion": 0.39,
                    "rounded": 4
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "multichannelsignal", "" ],
                    "patching_rect": [ 1034.6153846153845, 533.3076923076924, 166.0, 22.0 ],
                    "text": "mcs.matrix~ 32 64 @ramp 20"
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "embed": 1,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-129",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "-polybuffer-.maxpat",
                    "numinlets": 4,
                    "numoutlets": 2,
                    "offset": [ -1.9230769230769056, -3.2051282051282044 ],
                    "outlettype": [ "", "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 1,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 386.0, 149.0, 1074.0, 905.0 ],
                        "bglocked": 1,
                        "openinpresentation": 1,
                        "default_fontname": "Lato",
                        "lefttoolbarpinned": 2,
                        "toptoolbarpinned": 2,
                        "righttoolbarpinned": 2,
                        "bottomtoolbarpinned": 1,
                        "toolbars_unpinned_last_save": 7,
                        "subpatcher_template": "maxb-default-template",
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-246",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 950.8780487804879, 468.55345911949684, 29.5, 23.0 ],
                                    "text": "!- 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-245",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 950.8780487804879, 506.2893081761006, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-243",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 948.9912563276578, 532.0754716981132, 62.0, 23.0 ],
                                    "text": "hidden $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-225",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 903.2972972972973, 424.7162162162162, 66.58075148319062, 23.0 ],
                                    "text": "t l l"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "obj-239",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1252.7567567567567, 581.081081081081, 71.0, 23.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 9.0,
                                    "hidden": 1,
                                    "id": "obj-226",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1425.3414634146343, 599.3243243243244, 128.0, 17.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 463.51351351351354, 114.86486486486487, 197.90214876190487, 17.0 ],
                                    "text": "1 4 5 8 9 11 14",
                                    "textcolor": [ 0.5764705882352941, 0.5764705882352941, 0.5764705882352941, 1.0 ],
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-199",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "set" ],
                                    "patching_rect": [ 1283.7027027027027, 371.97297297297297, 160.6387607119315, 23.0 ],
                                    "text": "t b set"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "obj-188",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 1221.7297297297298, 550.6756756756757, 50.027027027026804, 23.0 ],
                                    "text": "t l l"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                                    "fontname": "Helvetica Neue",
                                    "fontsize": 11.0,
                                    "id": "obj-228",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1283.7027027027027, 344.5945945945946, 74.0, 21.0 ],
                                    "text": "r -internal-init"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-227",
                                    "linecount": 3,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1283.7027027027027, 401.35135135135135, 101.12359550561797, 52.0 ],
                                    "text": "read harmony_presets.json, getkeys"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-187",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1587.8048780487807, 91.35802469135803, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-229",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 903.2972972972973, 630.4054054054054, 135.0, 23.0 ],
                                    "text": "prepend harmonicMode"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "activebgoncolor": [ 0.0, 0.3333333333333333, 0.3254901960784314, 1.0 ],
                                    "activetextcolor": [ 0.0784313725490196, 0.0784313725490196, 0.0784313725490196, 1.0 ],
                                    "activetextoncolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "bgcolor": [ 0.2627450980392157, 0.2627450980392157, 0.2627450980392157, 1.0 ],
                                    "bgoncolor": [ 0.5764705882352941, 0.5764705882352941, 0.5764705882352941, 1.0 ],
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "hidden": 1,
                                    "id": "obj-235",
                                    "maxclass": "live.text",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 903.2972972972973, 396.85534591194966, 44.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 463.5264226666667, 77.9874213836478, 200.7037037037036, 18.98148148148148 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "activetextcolor": {
                                            "expression": ""
                                        },
                                        "activetextoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "textoffcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "harmonicmode",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "harmonicmode",
                                            "parameter_type": 2
                                        }
                                    },
                                    "text": "Random pitch is ON",
                                    "textcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "textoffcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "texton": "Modal pitch is ON",
                                    "varname": "harmonicmode"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                                    "id": "obj-238",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 906.0, 358.1081081081081, 120.0, 23.0 ],
                                    "restore": [ 0.0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr harmonic-mode",
                                    "varname": "harmonic-mode"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubble_bgcolor": [ 0.235, 0.235, 0.235, 0.0 ],
                                    "bubbleside": 2,
                                    "fontsize": 12.0,
                                    "id": "obj-166",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1215.4594594594594, 416.2162162162162, 62.0, 40.0 ],
                                    "text": "Harmony"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "obj-171",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1103.2972972972973, 433.7837837837838, 41.0, 23.0 ],
                                    "text": "set $1"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.09409839659929276, 0.11369907110929489, 0.13720980286598206, 1.0 ],
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "hidden": 1,
                                    "hltcolor": [ 0.09411764705882353, 0.11372549019607843, 0.13725490196078433, 1.0 ],
                                    "hlttextcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "id": "obj-172",
                                    "maxclass": "live.menu",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1103.2972972972973, 408.7837837837838, 86.11111111111111, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 463.5264226666667, 100.97087378640776, 179.54399986854455, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "hltcolor": {
                                            "expression": ""
                                        },
                                        "hlttextcolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "tricolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "debussy_WholeTone", "debussy_MajPenta", "debussy_LydianDominant", "debussy_SoireeDansGrenade", "ravel_PureMaj9", "ravel_LydianStack", "ravel_Min11", "ravel_Daphnis_Maj13", "rachmaninov_Min6_9", "rachmaninov_HalfDim7_Min6", "rachmaninov_Maj7_9_11", "rachmaninov_Op23_Passage", "rachmaninov_Op39_Appassionata", "messiaen_Mode1_WholeTone", "messiaen_Mode2_Octatonic", "messiaen_Mode3", "messiaen_Mode4", "messiaen_Mode5", "messiaen_Mode6", "messiaen_Mode7", "boulez_Marteau_HexachordA", "boulez_Marteau_HexachordB", "boulez_Notations_Aggregate", "stockhausen_Klavierstuck_Fibonacci", "stockhausen_Mantra_RingModMatrix", "stockhausen_Stimmung_Overtones", "scelsi_QuattroPezzi_QuarterToneCluster", "scelsi_BeatingPranam_DetunedUnisons", "scelsi_Anahit_MicroFlurries", "berio_Sequenza_SyntheticScale", "berio_Coro_DenseChromatic", "berio_Sinfonia_Polychord", "manoury_Pluton_SyntheticResonance", "manoury_Jupiter_VirtualFlutePivots", "manoury_EnEcho_InharmonicAggregate", "xenakis_SieveAlpha", "xenakis_SieveBeta", "xenakis_Metastasis_GlissCluster", "xenakis_NomosAlpha_SieveModulo", "ligeti_AtmospheresCluster", "ligeti_CordesAVide", "ligeti_Ramifications_QuarterTones", "ligeti_Melodien_Micropolyphony", "grisey_Partiels_Harmonics_1to16", "grisey_Modulations_InharmonicStretching", "grisey_Talea_ContrastedDissonance", "murail_Gondwana_ResonanceBell", "murail_Desintegrations_InharmonicTritone", "murail_TreizeCouleurs_SpectralRing", "haas_InVain_OvertoneRing", "haas_MicrotonalGlide_SixthTones", "radigue_TrilogieDeLaMort_BeatingInterferometry", "radigue_Occam_BowedOvertones", "nancarrow_Study21_CanonRatios", "nancarrow_IrrationalLadder", "ferneyhough_Cassandra_MicroAggregate", "ferneyhough_TimeAndMotion_QuarterHexachord", "part_TabulaRasa_Tintinnabuli", "furrer_Nuun_GranularCluster", "harvey_MortuosPlango_BellResonances", "rihm_JagdenUndFormen_Explosion", "risset_ShepardGlocken", "risset_InharmonicBell", "risset_ParadoxicalPitch", "risset_HarmonicArpeggione", "risset_SpectralGlissando", "risset_SubharmonicCluster", "risset_OctaveStretch", "wholeToneMirror_Custom", "userSlot_01", "userSlot_02", "userSlot_03", "userSlot_04", "userSlot_05", "userSlot_06", "userSlot_07", "userSlot_08", "userSlot_09", "userSlot_10" ],
                                            "parameter_invisible": 2,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "harmomodels",
                                            "parameter_mmax": 78,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "harmomodels",
                                            "parameter_type": 2
                                        }
                                    },
                                    "textcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "tricolor": [ 0.0, 0.7176470588235294, 0.7019607843137254, 1.0 ],
                                    "varname": "harmomodels"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 0.0 ],
                                    "fontsize": 9.0,
                                    "hidden": 1,
                                    "id": "obj-173",
                                    "maxclass": "number",
                                    "maximum": 100,
                                    "minimum": 0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 1057.3513513513512, 408.7837837837838, 32.0, 19.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 641.7857142857144, 100.47087378640776, 19.642857142857142, 19.0 ],
                                    "textcolor": [ 0.5764705882352941, 0.5764705882352941, 0.5764705882352941, 1.0 ],
                                    "triangle": 0,
                                    "varname": "harmomodelsint"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                                    "fontsize": 12.0,
                                    "id": "obj-186",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 1052.6216216216217, 358.1081081081081, 120.0, 23.0 ],
                                    "restore": [ 22.0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr harmonic-menu",
                                    "varname": "harmonic-menu"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "obj-206",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1221.7297297297298, 630.4054054054054, 120.0, 23.0 ],
                                    "text": "prepend harmonyList"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "obj-212",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1237.7567567567567, 486.4864864864865, 150.0, 23.0 ],
                                    "text": "prepend _parameter_range"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "obj-221",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 1185.7297297297298, 486.4864864864865, 55.0, 23.0 ],
                                    "text": "zl.slice 1"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "obj-223",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1137.7567567567567, 433.7837837837838, 73.0, 23.0 ],
                                    "text": "prepend get"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.09409839659929276, 0.11369907110929489, 0.13720980286598206, 1.0 ],
                                    "color": [ 0.4585953500627549, 0.4585952375649011, 0.45859526696238767, 0.21 ],
                                    "fontsize": 12.0,
                                    "id": "obj-224",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 5,
                                    "outlettype": [ "dictionary", "", "", "", "" ],
                                    "patching_rect": [ 1137.7567567567567, 462.1621621621622, 220.0, 23.0 ],
                                    "saved_object_attributes": {
                                        "legacy": 1,
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "dict harmony harmony_presets.json"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-165",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 412.19512195121956, 1326.829268292683, 188.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 2,
                                    "presentation_rect": [ 230.609756, 27.785714285714292, 128.0, 35.0 ],
                                    "text": "set the way soundfiles are chosen ",
                                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ],
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-151",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 746.3414634146342, 296.2962962962963, 107.0, 23.0 ],
                                    "text": "prepend playMode"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "activebgoncolor": [ 0.0, 0.3333333333333333, 0.3254901960784314, 1.0 ],
                                    "activetextcolor": [ 0.0784313725490196, 0.0784313725490196, 0.0784313725490196, 1.0 ],
                                    "activetextoncolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "bgcolor": [ 0.2627450980392157, 0.2627450980392157, 0.2627450980392157, 1.0 ],
                                    "bgoncolor": [ 0.5764705882352941, 0.5764705882352941, 0.5764705882352941, 1.0 ],
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-153",
                                    "maxclass": "live.text",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 746.3414634146342, 274.0740740740741, 44.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 359.4390791386825, 31.0, 80.76923076923076, 28.57142857142857 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "activetextcolor": {
                                            "expression": ""
                                        },
                                        "activetextoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "textoffcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "play-mode",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "play-mode",
                                            "parameter_type": 2
                                        }
                                    },
                                    "text": "Randomly",
                                    "textcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "textoffcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "texton": "Sequentially",
                                    "varname": "play-mode"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                                    "id": "obj-161",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 746.3414634146342, 249.3827160493827, 88.0, 23.0 ],
                                    "restore": [ 0.0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr playmode",
                                    "varname": "playmode"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-149",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 617.0731707317074, 1304.878048780488, 54.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 67.81400966183574, 328.7405372405372, 54.0, 21.0 ],
                                    "text": "air damp",
                                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-150",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 412.19512195121956, 1304.878048780488, 61.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 204.05405405405406, 329.5648615648616, 61.511544697405796, 21.0 ],
                                    "text": "sharpness",
                                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-148",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 1407.3170731707319, 868.2926829268293, 41.0, 23.0 ],
                                    "text": "/ 100."
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                                    "id": "obj-144",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 1407.3170731707319, 790.2439024390244, 93.0, 23.0 ],
                                    "restore": [ 0.0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr spat-damp",
                                    "varname": "spat-damp"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
                                    "annotation": "High-frequency air absorption intensity (0.0 = off, 100 = deep air damping)",
                                    "annotation_name": "air damp",
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "hint": "High-frequency air absorption intensity (0.0 = off, 100 = deep air damping)",
                                    "id": "obj-146",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1407.3170731707319, 841.4634146341464, 35.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 13.369565217391305, 330.38888888888886, 51.00000000000001, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_initial": [ 15.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "spatdamp",
                                            "parameter_mmax": 100.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "spatdamp",
                                            "parameter_type": 1,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "textcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "varname": "spatdamp"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                                    "id": "obj-141",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 1341.4634146341464, 814.6341463414635, 93.0, 23.0 ],
                                    "restore": [ 1.0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr spat-sharp",
                                    "varname": "spat-sharp"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
                                    "annotation": "Beam slope exponent (1.0 = gentle cos, 2.0 = crisp, 4.0 = razor-sharp isolation)",
                                    "annotation_name": "sharpness",
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "hint": "Beam slope exponent (1.0 = gentle cos, 2.0 = crisp, 4.0 = razor-sharp isolation)",
                                    "id": "obj-142",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1341.4634146341464, 841.4634146341464, 34.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 150.0, 330.24053724053726, 53.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_initial": [ 2.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "spatsharp",
                                            "parameter_mmax": 4.0,
                                            "parameter_mmin": 1.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "spatsharp",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 1
                                        }
                                    },
                                    "textcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "varname": "spatsharp"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-134",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 421.95121951219517, 834.1463414634147, 50.0, 23.0 ],
                                    "text": "compile"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-133",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 480.4878048780488, 792.6829268292684, 70.0, 23.0 ],
                                    "text": "route count"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-109",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 400.0, 675.609756097561, 100.0, 23.0 ],
                                    "text": "t l l"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-132",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 470.7317073170732, 726.829268292683, 34.0, 23.0 ],
                                    "text": "clear"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 1.0, 0.0, 1.0, 1.0 ],
                                    "fontsize": 12.0,
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 380.4878048780488, 768.2926829268293, 213.0, 23.0 ],
                                    "saved_object_attributes": {
                                        "filename": "master_engine.js",
                                        "parameter_enable": 0
                                    },
                                    "text": "js master_engine.js"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-117",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 434.1463414634147, 792.6829268292684, 39.0, 23.0 ],
                                    "text": "dump"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-107",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 612.1951219512196, 1282.9268292682927, 104.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 347.8236945232979, 328.88918588918585, 104.0, 21.0 ],
                                    "text": "acceleration curve",
                                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                                    "id": "obj-105",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 1534.1463414634147, 814.6341463414635, 93.0, 23.0 ],
                                    "restore": [ 1.0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr spat-curve",
                                    "varname": "spat-curve"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
                                    "annotation": "Curvature factor",
                                    "annotation_name": "curve",
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "hint": "Curvature factor",
                                    "id": "obj-106",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1534.1463414634147, 841.4634146341464, 34.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 292.41828911789247, 330.2405372405372, 53.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_initial": [ 1.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "spat-curve[1]",
                                            "parameter_mmax": 6.0,
                                            "parameter_mmin": 1.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "spat-curve",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 1
                                        }
                                    },
                                    "textcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "varname": "spat-curve[1]"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-104",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 612.1951219512196, 1251.219512195122, 203.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 67.81400966183574, 371.0, 203.0, 21.0 ],
                                    "text": "activate 3D for external spat systems",
                                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-102",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1700.0, 193.82716049382714, 79.0, 23.0 ],
                                    "text": "prepend is3D"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                                    "id": "obj-103",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 1700.0, 140.74074074074073, 80.0, 23.0 ],
                                    "restore": [ 0.0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr spat-3D",
                                    "varname": "spat-3D"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "activebgoncolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "activetextcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "activetextoncolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-98",
                                    "maxclass": "live.text",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1700.0, 171.60493827160494, 44.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 13.369565217391305, 372.0, 51.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "activetextcolor": {
                                            "expression": ""
                                        },
                                        "activetextoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "textoffcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "2or3D",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "2or3D",
                                            "parameter_type": 2
                                        }
                                    },
                                    "text": "is2D",
                                    "textoffcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "texton": "is3D",
                                    "varname": "2or3D"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-95",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 412.19512195121956, 1282.9268292682927, 64.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 347.82369452329795, 310.64864864864865, 64.0, 21.0 ],
                                    "text": "smoothing",
                                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-94",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 412.19512195121956, 1258.5365853658536, 86.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 204.0, 310.5, 86.0, 21.0 ],
                                    "text": "aperture width",
                                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                                    "id": "obj-93",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1278.048780487805, 931.7073170731708, 86.0, 23.0 ],
                                    "text": "s -spat-params"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-92",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1278.048780487805, 907.3170731707318, 274.891304347826, 23.0 ],
                                    "text": "pak f f f f f"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-87",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 1468.2926829268295, 868.2926829268293, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-66",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "float" ],
                                    "patching_rect": [ 1412.1951219512196, 760.9756097560976, 75.0, 23.0 ],
                                    "text": "mstosamps~"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                                    "id": "obj-33",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 1412.1951219512196, 709.7560975609756, 103.0, 23.0 ],
                                    "restore": [ 20.0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr spat-smooth",
                                    "varname": "spat-smooth"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
                                    "annotation": "Coordinate slewing",
                                    "annotation_name": "Smooth",
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "hint": "Coordinate slewing",
                                    "id": "obj-62",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1412.1951219512196, 736.5853658536586, 35.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 292.4182891178925, 311.99999999999994, 53.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_initial": [ 20.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "spatsmooth",
                                            "parameter_mmax": 150.0,
                                            "parameter_mmin": 5.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "spatsmooth",
                                            "parameter_type": 1,
                                            "parameter_unitstyle": 2
                                        }
                                    },
                                    "textcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "varname": "spatsmooth"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 1278.048780487805, 790.2439024390244, 94.0, 23.0 ],
                                    "restore": [ 100.0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr spat-width",
                                    "varname": "spat-width"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
                                    "annotation": "Angular aperture / beam width (0% = laser pin-point, 100% = normal, 200% = wide)",
                                    "annotation_name": "aperture",
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "hint": "Angular aperture / beam width (0% = laser pin-point, 100% = normal, 200% = wide)",
                                    "id": "obj-31",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1278.048780487805, 841.4634146341464, 35.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 150.0, 311.5, 53.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_initial": [ 100.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "spatwidth",
                                            "parameter_mmax": 200.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "spatwidth",
                                            "parameter_type": 1,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "textcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "varname": "spatwidth"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubble_bgcolor": [ 0.19607843137254902, 0.19607843137254902, 0.19607843137254902, 1.0 ],
                                    "bubble_outlinecolor": [ 1.0, 1.0, 1.0, 0.97 ],
                                    "fontsize": 16.0,
                                    "id": "obj-26",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 80.48780487804879, 995.1219512195122, 144.0, 30.0 ],
                                    "text": "handling the GUI",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubble_bgcolor": [ 0.19607843137254902, 0.19607843137254902, 0.19607843137254902, 1.0 ],
                                    "bubble_outlinecolor": [ 1.0, 1.0, 1.0, 0.97 ],
                                    "fontsize": 16.0,
                                    "id": "obj-22",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ -41.463414634146346, 646.3414634146342, 146.0, 30.0 ],
                                    "text": "stochastic trigger",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubble_bgcolor": [ 0.19607843137254902, 0.19607843137254902, 0.19607843137254902, 1.0 ],
                                    "bubble_outlinecolor": [ 1.0, 1.0, 1.0, 0.97 ],
                                    "fontsize": 16.0,
                                    "id": "obj-21",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 360.9756097560976, 234.14634146341464, 121.0, 30.0 ],
                                    "text": "simple trigger",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubble_bgcolor": [ 0.19607843137254902, 0.19607843137254902, 0.19607843137254902, 1.0 ],
                                    "bubble_outlinecolor": [ 1.0, 1.0, 1.0, 0.97 ],
                                    "fontsize": 16.0,
                                    "id": "obj-20",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1121.9512195121952, 790.2439024390244, 127.0, 30.0 ],
                                    "text": "curve function",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubble_bgcolor": [ 0.19607843137254902, 0.19607843137254902, 0.19607843137254902, 1.0 ],
                                    "bubble_outlinecolor": [ 1.0, 1.0, 1.0, 0.97 ],
                                    "fontsize": 16.0,
                                    "id": "obj-18",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 604.8780487804878, 517.0731707317074, 121.0, 49.0 ],
                                    "text": "handling the polybuffer",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubble_bgcolor": [ 0.19607843137254902, 0.19607843137254902, 0.19607843137254902, 1.0 ],
                                    "bubble_outlinecolor": [ 1.0, 1.0, 1.0, 0.97 ],
                                    "bubbleside": 2,
                                    "fontsize": 16.0,
                                    "id": "obj-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 873.1707317073171, 83.9506172839506, 328.0, 45.0 ],
                                    "text": "all external controls for [js master_engine.js]",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1112.1951219512196, 843.9024390243903, 150.0, 50.0 ],
                                    "text": "draw a curve and it write in this buffer for playback varispeed or timestretch"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-67",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 1065.8536585365855, 907.3170731707318, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-64",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1065.8536585365855, 936.5853658536586, 39.0, 23.0 ],
                                    "text": "dump"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "linecount": 3,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "bang" ],
                                    "patching_rect": [ 1112.1951219512196, 900.0, 109.0, 52.0 ],
                                    "text": "buffer~ pitchcurve @samps 1024 @chans 1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "selected mode",
                                    "id": "obj-1",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 460.9756097560976, 465.8536585365854, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "hidden": 1,
                                    "id": "obj-240",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 246.34146341463415, 1017.0731707317074, 45.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 536.5264226666668, 287.0, 45.0, 23.0 ],
                                    "text": "Curve",
                                    "textcolor": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                                    "varname": "com_curve"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-237",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 246.34146341463415, 1070.7317073170732, 65.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 380.55712442105266, 164.371088, 65.0, 23.0 ],
                                    "text": "Arpeggio",
                                    "textcolor": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-236",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 246.34146341463415, 1043.9024390243903, 96.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 282.82028231578954, 5.551919100165492, 96.0, 23.0 ],
                                    "text": "Trigger engine",
                                    "textcolor": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "hltcolor": [ 0.0, 0.4823529411764706, 0.47058823529411764, 1.0 ],
                                    "id": "obj-231",
                                    "maxclass": "live.menu",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 575.609756097561, 500.00000000000006, 34.373015873015866, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 14.0, 28.0, 176.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "hltcolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "load", "open", "save", "clear" ],
                                            "parameter_invisible": 2,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "polybufmenu",
                                            "parameter_mmax": 3,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "polybufmenu",
                                            "parameter_type": 2
                                        }
                                    },
                                    "textcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "varname": "polybufmenu"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-230",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "bang", "", "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 2,
                                            "revision": 1,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 869.0, 273.0, 354.0, 395.0 ],
                                        "lefttoolbarpinned": 2,
                                        "toptoolbarpinned": 2,
                                        "righttoolbarpinned": 2,
                                        "bottomtoolbarpinned": 2,
                                        "toolbars_unpinned_last_save": 15,
                                        "subpatcher_template": "maxb-default-template",
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-8",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 210.68074309467465, 186.0, 110.0, 22.0 ],
                                                    "text": "prepend readfolder"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "patching_rect": [ 210.68074309467465, 159.0, 90.0, 22.0 ],
                                                    "text": "opendialog fold"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-93",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 174.68074309467465, 86.41975308641975, 91.0, 22.0 ],
                                                    "text": "route save load"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-25",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 174.69135802469134, 246.91358024691357, 54.75, 22.0 ],
                                                    "text": "t l l"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-33",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "" ],
                                                    "patching_rect": [ 49.99998809467462, 246.91358024691357, 75.34038109467463, 22.0 ],
                                                    "text": "t b l"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-31",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 49.99998809467462, 86.41975308641975, 110.0, 22.0 ],
                                                    "text": "prepend readfolder"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-95",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 174.68074309467465, 122.0, 78.0, 22.0 ],
                                                    "text": "writetofolder"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-225",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 49.99998809467462, 40.00000276190474, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-226",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 174.68074309467465, 40.00000276190474, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-227",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 106.17283950617283, 329.6296296296296, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-228",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 50.0, 329.6296296296296, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-229",
                                                    "index": 3,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 210.49382716049382, 329.6296296296296, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-31", 0 ],
                                                    "source": [ "obj-225", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-93", 0 ],
                                                    "source": [ "obj-226", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-227", 0 ],
                                                    "source": [ "obj-25", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-229", 0 ],
                                                    "source": [ "obj-25", 1 ]
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
                                                    "destination": [ "obj-227", 0 ],
                                                    "source": [ "obj-33", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-228", 0 ],
                                                    "source": [ "obj-33", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-33", 0 ],
                                                    "source": [ "obj-8", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-93", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-25", 0 ],
                                                    "source": [ "obj-93", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-95", 0 ],
                                                    "source": [ "obj-93", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-25", 0 ],
                                                    "source": [ "obj-95", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 400.0, 534.1463414634146, 202.5133204264719, 23.0 ],
                                    "text": "p \"handle polybuffer\""
                                }
                            },
                            {
                                "box": {
                                    "border": 0,
                                    "embedstate": [
                                        [ "fontSize", 11 ],
                                        [ "padding", 2 ],
                                        [ "cardRadius", 0 ],
                                        [ "borderWidth", 0.5 ],
                                        [ "cardBorderColor", 0, 0.395952, 0.392072, 0.5 ],
                                        [ "meterHeight", 4 ],
                                        [ "textColor", 0.837421, 0.837421, 0.837421, 1 ],
                                        [ "bgColor", 0.12, 0.12, 0.13, 0 ],
                                        [ "meterColor", 0, 0.991439, 1, 1 ],
                                        [ "meterBgColor", 0.1, 0.1, 0.11, 0 ],
                                        [ "fontFamily", "Lato" ],
                                        [ "cardBgColor", 0.17, 0.17, 0.18, 0 ],
                                        [ "activeColor", 0, 0.991439, 1, 1 ]
                                    ],
                                    "filename": "poly_monitor.js",
                                    "id": "obj-218",
                                    "maxclass": "jsui",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 475.609756097561, 834.1463414634147, 75.0, 39.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 6.5, 527.0, 659.7764226666667, 355.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-202",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ -48.78048780487805, 1053.658536585366, 77.0, 23.0 ],
                                    "text": "route symbol"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-205",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ -48.78048780487805, 1078.0487804878048, 46.52173913043479, 23.0 ],
                                    "text": "join"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-210",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ -48.78048780487805, 1026.829268292683, 46.52173913043479, 23.0 ],
                                    "text": "buddy"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-215",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ -48.78048780487805, 963.4146341463415, 39.0, 23.0 ],
                                    "text": "dump"
                                }
                            },
                            {
                                "box": {
                                    "coll_data": {
                                        "count": 41,
                                        "data": [
                                            {
                                                "key": "panel_pitch",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "com_random",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "speed",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "max-pitch",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "com_maxpitch",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "min-pitch",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "com_minpitch",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "probability",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "com_changeprob",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "pitch-unchanged",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "com_pitchstable",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "glissandis-durations",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "comm_glissandi",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "timestretch-pitch",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "com_timestretch-pitch",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "line_1",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "line_2",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "line_3",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "line_4",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "panel_bpf",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "panel_bpf2",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "pitchcurve",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "com_curve",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "com_maxspeed",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "com_minspeed",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "com_bpfdive",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "com_bpfriser",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "com_bpfinit",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "com_bpfrndm",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "riser-bpf",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "dive-bpf",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "init-bpf",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "rndm-bpf",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "bpf-pt-0",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "bpf-pt-2",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "bpf-pt-3",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "bpf-pt-4",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "harmomodels",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "harmomodelsint",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "harmonicmode",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "com_harmomodels",
                                                "value": [ 0 ]
                                            }
                                        ]
                                    },
                                    "id": "obj-216",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
                                    "patching_rect": [ -48.78048780487805, 995.1219512195122, 108.0, 23.0 ],
                                    "saved_object_attributes": {
                                        "embed": 1,
                                        "precision": 6
                                    },
                                    "text": "coll @name mode3"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "hidden": 1,
                                    "id": "obj-200",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 612.1951219512196, 1178.048780487805, 30.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 581.4285714285716, 317.0, 30.0, 21.0 ],
                                    "saved_attribute_attributes": {
                                        "textcolor": {
                                            "expression": "themecolor.live_control_selection_variant"
                                        }
                                    },
                                    "text": "dive",
                                    "textcolor": [ 0.0, 0.933333, 1.0, 1.0 ],
                                    "varname": "com_bpfdive"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.0784301683306694, 0.0784301683306694, 0.0784301683306694, 1.0 ],
                                    "activebgoncolor": [ 0.0, 0.403921568627451, 0.690196078431373, 1.0 ],
                                    "bgcolor": [ 0.243137254901961, 0.243137254901961, 0.243137254901961, 1.0 ],
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "focusbordercolor": [ 0.0784301683306694, 0.0784301683306694, 0.0784301683306694, 1.0 ],
                                    "hidden": 1,
                                    "id": "obj-189",
                                    "maxclass": "live.button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1136.5853658536587, 724.3902439024391, 19.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 570.4285714285716, 322.0, 12.389380530973451, 12.389380530973451 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_linknames": 1,
                                            "parameter_longname": "dive-bpf",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "dive-bpf",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "dive-bpf"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-184",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1097.5609756097563, 748.7804878048781, 32.0, 23.0 ],
                                    "text": "riser"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-182",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1046.3414634146343, 748.7804878048781, 49.0, 23.0 ],
                                    "text": "random"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-174",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1012.1951219512196, 748.7804878048781, 29.5, 23.0 ],
                                    "text": "init"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-162",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1136.5853658536587, 748.7804878048781, 30.0, 23.0 ],
                                    "text": "dive"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 1.0, 0.0, 1.0, 1.0 ],
                                    "id": "obj-130",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 978.048780487805, 790.2439024390244, 131.0, 23.0 ],
                                    "saved_object_attributes": {
                                        "filename": "function_generator.js",
                                        "parameter_enable": 0
                                    },
                                    "text": "js function_generator.js"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-101",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 4,
                                    "outlettype": [ "bang", "bang", "bang", "" ],
                                    "patching_rect": [ -287.8048780487805, 912.1951219512196, 379.00000000000006, 23.0 ],
                                    "text": "sel 0 1 2"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                                    "id": "obj-100",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ -287.8048780487805, 880.4878048780488, 131.0, 23.0 ],
                                    "text": "r #0-selected-mode-"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-131",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 412.19512195121956, 1063.4146341463415, 127.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 289.0467137790631, 133.6881519017311, 127.0, 21.0 ],
                                    "text": "stop fade-out duration",
                                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-209",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1687.8048780487807, 298.7654320987654, 132.0, 23.0 ],
                                    "text": "prepend stretchTranspo"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-207",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1573.1707317073171, 298.7654320987654, 108.0, 23.0 ],
                                    "text": "prepend stretchOn"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-204",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1434.1463414634147, 298.7654320987654, 127.0, 23.0 ],
                                    "text": "prepend transpoStable"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-203",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1287.8048780487807, 298.7654320987654, 126.0, 23.0 ],
                                    "text": "prepend transpoProba"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-118",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ -168.2926829268293, 1053.658536585366, 77.0, 23.0 ],
                                    "text": "route symbol"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-119",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ -168.2926829268293, 1078.0487804878048, 46.52173913043479, 23.0 ],
                                    "text": "join"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-195",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ -168.2926829268293, 1029.2682926829268, 46.52173913043479, 23.0 ],
                                    "text": "buddy"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-197",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ -168.2926829268293, 963.4146341463415, 39.0, 23.0 ],
                                    "text": "dump"
                                }
                            },
                            {
                                "box": {
                                    "coll_data": {
                                        "count": 41,
                                        "data": [
                                            {
                                                "key": "panel_pitch",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "com_random",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "speed",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "max-pitch",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "com_maxpitch",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "min-pitch",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "com_minpitch",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "probability",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "com_changeprob",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "pitch-unchanged",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "com_pitchstable",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "glissandis-durations",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "comm_glissandi",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "timestretch-pitch",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "com_timestretch-pitch",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "line_1",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "line_2",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "line_3",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "line_4",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "panel_bpf",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "panel_bpf2",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "pitchcurve",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "com_curve",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "com_maxspeed",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "com_minspeed",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "com_bpfdive",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "com_bpfriser",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "com_bpfinit",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "com_bpfrndm",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "riser-bpf",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "dive-bpf",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "init-bpf",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "rndm-bpf",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "bpf-pt-1",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "bpf-pt-2",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "bpf-pt-3",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "bpf-pt-4",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "harmomodels",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "harmomodelsint",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "harmonicmode",
                                                "value": [ 0 ]
                                            },
                                            {
                                                "key": "com_harmomodels",
                                                "value": [ 0 ]
                                            }
                                        ]
                                    },
                                    "id": "obj-198",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
                                    "patching_rect": [ -168.2926829268293, 995.1219512195122, 108.0, 23.0 ],
                                    "saved_object_attributes": {
                                        "embed": 1,
                                        "precision": 6
                                    },
                                    "text": "coll @name mode2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-222",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ -287.8048780487805, 1053.658536585366, 77.0, 23.0 ],
                                    "text": "route symbol"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-220",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ -287.8048780487805, 1078.0487804878048, 46.52173913043479, 23.0 ],
                                    "text": "join"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-219",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ -287.8048780487805, 1029.2682926829268, 46.52173913043479, 23.0 ],
                                    "text": "buddy"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-217",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ -287.8048780487805, 1121.9512195121952, 182.0, 23.0 ],
                                    "text": "sprintf script send %s hidden %ld"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-214",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ -287.8048780487805, 963.4146341463415, 39.0, 23.0 ],
                                    "text": "dump"
                                }
                            },
                            {
                                "box": {
                                    "coll_data": {
                                        "count": 41,
                                        "data": [
                                            {
                                                "key": "panel_pitch",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "com_random",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "speed",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "max-pitch",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "com_maxpitch",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "min-pitch",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "com_minpitch",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "probability",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "com_changeprob",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "pitch-unchanged",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "com_pitchstable",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "glissandis-durations",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "comm_glissandi",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "timestretch-pitch",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "com_timestretch-pitch",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "line_1",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "line_2",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "line_3",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "line_4",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "panel_bpf",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "panel_bpf2",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "pitchcurve",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "com_curve",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "com_maxspeed",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "com_minspeed",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "com_bpfdive",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "com_bpfriser",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "com_bpfinit",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "com_bpfrndm",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "riser-bpf",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "dive-bpf",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "init-bpf",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "rndm-bpf",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "bpf-pt-1",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "bpf-pt-2",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "bpf-pt-3",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "bpf-pt-4",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "harmomodels",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "harmomodelsint",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "harmonicmode",
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": "com_harmomodels",
                                                "value": [ 1 ]
                                            }
                                        ]
                                    },
                                    "id": "obj-211",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
                                    "patching_rect": [ -287.8048780487805, 995.1219512195122, 108.0, 23.0 ],
                                    "saved_object_attributes": {
                                        "embed": 1,
                                        "precision": 6
                                    },
                                    "text": "coll @name mode1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-194",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ -287.8048780487805, 1148.780487804878, 68.0, 23.0 ],
                                    "save": [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
                                    "text": "thispatcher"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1165.8536585365855, 298.7654320987654, 115.0, 23.0 ],
                                    "text": "prepend transpoDur"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-44",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1029.2682926829268, 298.7654320987654, 119.0, 23.0 ],
                                    "text": "prepend transpoMax"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-85",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 904.8780487804878, 298.7654320987654, 116.0, 23.0 ],
                                    "text": "prepend transpoMin"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "activebgoncolor": [ 0.0, 0.3333333333333333, 0.3254901960784314, 1.0 ],
                                    "activetextcolor": [ 0.0784313725490196, 0.0784313725490196, 0.0784313725490196, 1.0 ],
                                    "activetextoncolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "bgcolor": [ 0.2627450980392157, 0.2627450980392157, 0.2627450980392157, 1.0 ],
                                    "bgoncolor": [ 0.5764705882352941, 0.5764705882352941, 0.5764705882352941, 1.0 ],
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "hidden": 1,
                                    "id": "obj-108",
                                    "maxclass": "live.text",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1573.1707317073171, 276.5432098765432, 44.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 463.5264226666667, 31.0, 95.96383536387586, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "activetextcolor": {
                                            "expression": ""
                                        },
                                        "activetextoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "textoffcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "speed",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "speed",
                                            "parameter_type": 2
                                        }
                                    },
                                    "text": "Varispeed ON",
                                    "textcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "textoffcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "texton": "Timestretch ON",
                                    "varname": "speed"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "hidden": 1,
                                    "id": "obj-110",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 612.1951219512196, 1134.1463414634147, 36.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 529.4285714285716, 316.0, 36.0, 21.0 ],
                                    "saved_attribute_attributes": {
                                        "textcolor": {
                                            "expression": "themecolor.live_control_selection_variant"
                                        }
                                    },
                                    "text": "rndm",
                                    "textcolor": [ 0.0, 0.933333, 1.0, 1.0 ],
                                    "varname": "com_bpfrndm"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "hidden": 1,
                                    "id": "obj-111",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 612.1951219512196, 1112.1951219512196, 25.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 477.42857142857156, 317.0, 25.0, 21.0 ],
                                    "saved_attribute_attributes": {
                                        "textcolor": {
                                            "expression": "themecolor.live_control_selection_variant"
                                        }
                                    },
                                    "text": "init",
                                    "textcolor": [ 0.0, 0.933333, 1.0, 1.0 ],
                                    "varname": "com_bpfinit"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "hidden": 1,
                                    "id": "obj-112",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 612.1951219512196, 1087.8048780487807, 32.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 629.4285714285716, 316.0, 32.0, 21.0 ],
                                    "saved_attribute_attributes": {
                                        "textcolor": {
                                            "expression": "themecolor.live_control_selection_variant"
                                        }
                                    },
                                    "text": "riser",
                                    "textcolor": [ 0.0, 0.933333, 1.0, 1.0 ],
                                    "varname": "com_bpfriser"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.0784301683306694, 0.0784301683306694, 0.0784301683306694, 1.0 ],
                                    "activebgoncolor": [ 0.0, 0.403921568627451, 0.690196078431373, 1.0 ],
                                    "bgcolor": [ 0.243137254901961, 0.243137254901961, 0.243137254901961, 1.0 ],
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "focusbordercolor": [ 0.0784301683306694, 0.0784301683306694, 0.0784301683306694, 1.0 ],
                                    "hidden": 1,
                                    "id": "obj-113",
                                    "maxclass": "live.button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1046.3414634146343, 724.3902439024391, 19.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 514.4285714285716, 322.0, 12.389380530973451, 12.389380530973451 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_linknames": 1,
                                            "parameter_longname": "rndm-bpf",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "rndm-bpf",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "rndm-bpf"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.0784301683306694, 0.0784301683306694, 0.0784301683306694, 1.0 ],
                                    "activebgoncolor": [ 0.0, 0.403921568627451, 0.690196078431373, 1.0 ],
                                    "bgcolor": [ 0.243137254901961, 0.243137254901961, 0.243137254901961, 1.0 ],
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "focusbordercolor": [ 0.0784301683306694, 0.0784301683306694, 0.0784301683306694, 1.0 ],
                                    "hidden": 1,
                                    "id": "obj-114",
                                    "maxclass": "live.button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1012.1951219512196, 724.3902439024391, 19.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 467.42857142857156, 322.0, 12.389380530973451, 12.389380530973451 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_linknames": 1,
                                            "parameter_longname": "init-bpf",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "init-bpf",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "init-bpf"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.0784301683306694, 0.0784301683306694, 0.0784301683306694, 1.0 ],
                                    "activebgoncolor": [ 0.0, 0.403921568627451, 0.690196078431373, 1.0 ],
                                    "bgcolor": [ 0.243137254901961, 0.243137254901961, 0.243137254901961, 1.0 ],
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "focusbordercolor": [ 0.0784301683306694, 0.0784301683306694, 0.0784301683306694, 1.0 ],
                                    "hidden": 1,
                                    "id": "obj-116",
                                    "maxclass": "live.button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1097.5609756097563, 724.3902439024391, 19.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 616.4285714285716, 322.0, 12.389380530973451, 12.389380530973451 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_linknames": 1,
                                            "parameter_longname": "riser-bpf",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "riser-bpf",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "riser-bpf"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "hidden": 1,
                                    "id": "obj-241",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 780.4878048780488, 1112.1951219512196, 62.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 533.5264226666668, 499.0, 62.0, 21.0 ],
                                    "text": "min speed",
                                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ],
                                    "varname": "com_minspeed"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "hidden": 1,
                                    "id": "obj-213",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 780.4878048780488, 1082.9268292682927, 65.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 526.5264226666667, 339.0, 65.0, 21.0 ],
                                    "text": "max speed",
                                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ],
                                    "varname": "com_maxspeed"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                                    "id": "obj-120",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 1434.1463414634147, 251.85185185185185, 99.0, 23.0 ],
                                    "restore": [ 0.9999999999999993 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr pitch-stable",
                                    "varname": "pitch-stable"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "hidden": 1,
                                    "id": "obj-121",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 612.1951219512196, 1063.4146341463415, 148.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 473.42857142857156, 174.32432432432432, 148.0, 21.0 ],
                                    "text": "if unchanged, then value is",
                                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ],
                                    "varname": "com_pitchstable"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "fontsize": 12.0,
                                    "hidden": 1,
                                    "id": "obj-122",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1434.1463414634147, 276.5432098765432, 33.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 621.4285714285716, 175.67567567567568, 32.926829268292686, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_exponent": 3.333,
                                            "parameter_initial": [ 1.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "pitch-unchanged",
                                            "parameter_mmax": 30.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "pitch-unchanged",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 1
                                        }
                                    },
                                    "textcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "varname": "pitch-unchanged"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "hidden": 1,
                                    "id": "obj-123",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 412.19512195121956, 1087.8048780487807, 105.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 524.2605496507938, 150.0, 105.0, 21.0 ],
                                    "text": "change probability",
                                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ],
                                    "varname": "com_changeprob"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                                    "id": "obj-124",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 1287.8048780487807, 251.85185185185185, 98.0, 23.0 ],
                                    "restore": [ 100.0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr pitch-proba",
                                    "varname": "pitch-proba"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "hidden": 1,
                                    "id": "obj-128",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1287.8048780487807, 276.5432098765432, 35.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 473.66531155555566, 152.02702702702703, 53.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_initial": [ 100.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "probability",
                                            "parameter_mmax": 100.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "probability",
                                            "parameter_type": 1,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "textcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "varname": "probability"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                                    "id": "obj-152",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 1687.8048780487807, 251.85185185185185, 105.0, 23.0 ],
                                    "restore": [ 1.0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr stretch-pitch",
                                    "varname": "stretch-pitch"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "hidden": 1,
                                    "id": "obj-179",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 412.19512195121956, 1112.1951219512196, 99.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 521.3919860627179, 250.02898273684207, 99.0, 21.0 ],
                                    "text": "timestretch-pitch",
                                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ],
                                    "textjustification": 2,
                                    "varname": "com_timestretch-pitch"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "hidden": 1,
                                    "id": "obj-175",
                                    "inactivelcdcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1687.8048780487807, 276.5432098765432, 28.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 618.3919860627179, 251.02898273684207, 39.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "inactivelcdcolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "tricolor2": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_initial": [ 1 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "timestretch-pitch",
                                            "parameter_mmax": 6.0,
                                            "parameter_mmin": 0.01,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "timestretch-pitch",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 1
                                        }
                                    },
                                    "textcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "tricolor2": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "varname": "timestretch-pitch"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                                    "id": "obj-163",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 1573.1707317073171, 251.85185185185185, 92.0, 23.0 ],
                                    "restore": [ 0.0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr stretch-on",
                                    "varname": "stretch-on"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                                    "id": "obj-164",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 997.5609756097562, 817.0731707317074, 87.0, 23.0 ],
                                    "restore": [ 1000.0, 0.0, 1.0, 0.0, 0.0, 0, 0.0, 1000.0, 1.0, 0, 0.8, "curve" ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr pitch-env",
                                    "varname": "pitch-env"
                                }
                            },
                            {
                                "box": {
                                    "addpoints_with_curve": [ 0.0, 0.0, 0, 0.0, 1000.0, 1.0, 0, 0.8 ],
                                    "bgcolor": [ 0.6313725490196078, 0.6313725490196078, 0.6313725490196078, 0.0 ],
                                    "classic_curve": 1,
                                    "hidden": 1,
                                    "id": "obj-167",
                                    "legend": 0,
                                    "linecolor": [ 0.0, 0.933333, 1.0, 1.0 ],
                                    "linethickness": 0.6,
                                    "maxclass": "function",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "float", "", "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 978.048780487805, 853.6585365853659, 107.9150326797386, 52.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 460.5264226666667, 343.0, 210.0, 172.0 ],
                                    "saved_attribute_attributes": {
                                        "linecolor": {
                                            "expression": "themecolor.live_control_selection_variant"
                                        }
                                    },
                                    "varname": "pitchcurve"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "hidden": 1,
                                    "id": "obj-168",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 780.4878048780488, 1139.0243902439024, 163.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 481.5264226666666, 5.551919100165492, 155.0, 23.0 ],
                                    "text": "Varipeed or timestretch",
                                    "textcolor": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                                    "varname": "com_random"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "hidden": 1,
                                    "id": "obj-169",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 780.4878048780488, 1168.2926829268292, 106.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 525.6653115555557, 214.1891891891892, 108.0, 21.0 ],
                                    "text": "glissandi durations",
                                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ],
                                    "varname": "comm_glissandi"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "hidden": 1,
                                    "id": "obj-170",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 612.1951219512196, 1156.09756097561, 31.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 508.9153115555555, 50.970873786407765, 31.0, 21.0 ],
                                    "text": "min ",
                                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ],
                                    "varname": "com_minpitch"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "hidden": 1,
                                    "id": "obj-176",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 646.3414634146342, 1156.09756097561, 33.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 583.4523485925926, 51.45631067961165, 33.0, 21.0 ],
                                    "text": "max ",
                                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ],
                                    "varname": "com_maxpitch"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                                    "id": "obj-177",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 1168.2926829268292, 246.91358024691357, 112.0, 23.0 ],
                                    "restore": [ 0.0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr pitch-duration",
                                    "varname": "pitch-duration"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                                    "id": "obj-178",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 1029.2682926829268, 246.91358024691357, 90.0, 23.0 ],
                                    "restore": [ 0.9999999999999986 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr pitch-max",
                                    "varname": "pitch-max"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                                    "id": "obj-180",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 904.8780487804878, 249.3827160493827, 87.0, 23.0 ],
                                    "restore": [ 0.09999999999999998 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr pitch-min",
                                    "varname": "pitch-min"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "hidden": 1,
                                    "id": "obj-181",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1165.8536585365855, 274.0740740740741, 34.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 473.6653115555557, 216.21621621621622, 53.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_exponent": 3.333,
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "glissandis-durations",
                                            "parameter_mmax": 120000.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "glissandis-durations",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 2
                                        }
                                    },
                                    "textcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "varname": "glissandis-durations"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "hidden": 1,
                                    "id": "obj-183",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1029.2682926829268, 274.0740740740741, 30.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 611.2301263703703, 52.9126213592233, 53.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_exponent": 3.333,
                                            "parameter_initial": [ 1.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "max-pitch",
                                            "parameter_mmax": 60.0,
                                            "parameter_mmin": 0.01,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "max-pitch",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 1
                                        }
                                    },
                                    "textcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "varname": "max-pitch"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "hidden": 1,
                                    "id": "obj-185",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 904.8780487804878, 274.0740740740741, 30.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 532.5264226666666, 52.9126213592233, 53.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_exponent": 3.333,
                                            "parameter_initial": [ 0.1 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "min-pitch",
                                            "parameter_mmax": 60.0,
                                            "parameter_mmin": 0.01,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "min-pitch",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 1
                                        }
                                    },
                                    "textcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "varname": "min-pitch"
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "bgcolor": [ 0.290196, 0.309804, 0.301961, 0.0 ],
                                    "border": 1,
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 0.24 ],
                                    "hidden": 1,
                                    "id": "obj-191",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1139.0243902439024, 1014.6341463414635, 29.25, 28.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 463.5264226666667, 343.0, 203.0, 172.0 ],
                                    "proportion": 0.39,
                                    "rounded": 4,
                                    "varname": "panel_bpf"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "panic" ],
                                    "patching_rect": [ 380.4878048780488, 736.5853658536586, 31.0, 23.0 ],
                                    "text": "thru"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubble_bgcolor": [ 0.19607843137254902, 0.19607843137254902, 0.19607843137254902, 1.0 ],
                                    "bubble_outlinecolor": [ 1.0, 1.0, 1.0, 0.97 ],
                                    "fontsize": 16.0,
                                    "id": "obj-99",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 373.1707317073171, 200.0, 106.0, 30.0 ],
                                    "text": "trig one file",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubble_bgcolor": [ 0.19607843137254902, 0.19607843137254902, 0.19607843137254902, 1.0 ],
                                    "bubble_outlinecolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "fontsize": 16.0,
                                    "id": "obj-97",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ -58.53658536585366, 200.0, 76.0, 30.0 ],
                                    "text": "stop all",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "stop all running processes",
                                    "id": "obj-91",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ -87.8048780487805, 200.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "trigger the arpegio from any external source",
                                    "id": "obj-89",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ -287.8048780487805, 482.9268292682927, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-88",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1470.7317073170732, 193.82716049382714, 98.0, 23.0 ],
                                    "text": "prepend stopDur"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                                    "id": "obj-29",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 112.19512195121952, 417.07317073170736, 148.0, 23.0 ],
                                    "restore": [ 8.0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr arpeggio-occurences",
                                    "varname": "arpeggio-occurences"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                                    "id": "obj-32",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 43.90243902439025, 390.2439024390244, 112.0, 23.0 ],
                                    "restore": [ 80.0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr arpeggio-jitter",
                                    "varname": "arpeggio-jitter"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                                    "id": "obj-42",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ -29.26829268292683, 370.7317073170732, 117.0, 23.0 ],
                                    "restore": [ 0.5 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr arpeggio-width",
                                    "varname": "arpeggio-width"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
                                    "bordercolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ],
                                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "id": "obj-43",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 17.073170731707318, 448.7804878048781, 26.0, 15.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_initial": [ 0.5 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "width[1]",
                                            "parameter_mmax": 1.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "width",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 1
                                        }
                                    },
                                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ],
                                    "varname": "width"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubble_bgcolor": [ 0.19607843137254902, 0.19607843137254902, 0.19607843137254902, 1.0 ],
                                    "bubble_outlinecolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "id": "obj-45",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ -265.8536585365854, 524.390243902439, 98.0, 25.0 ],
                                    "text": "start arpeggio",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubble_bgcolor": [ 0.19607843137254902, 0.19607843137254902, 0.19607843137254902, 1.0 ],
                                    "bubble_outlinecolor": [ 1.0, 1.0, 1.0, 0.97 ],
                                    "id": "obj-48",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ -34.146341463414636, 568.2926829268293, 97.0, 25.0 ],
                                    "text": "stop arpeggio",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubble_bgcolor": [ 0.19607843137254902, 0.19607843137254902, 0.19607843137254902, 1.0 ],
                                    "bubble_outlinecolor": [ 1.0, 1.0, 1.0, 0.97 ],
                                    "fontsize": 16.0,
                                    "id": "obj-49",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ -46.34146341463415, 675.609756097561, 260.0, 49.0 ],
                                    "text": "this output might come in handy when working with Eurorack, etc",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubble_bgcolor": [ 0.19607843137254902, 0.19607843137254902, 0.19607843137254902, 1.0 ],
                                    "bubble_outlinecolor": [ 1.0, 1.0, 1.0, 0.97 ],
                                    "bubbleside": 2,
                                    "fontsize": 16.0,
                                    "id": "obj-50",
                                    "linecount": 5,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ -312.1951219512195, 360.9756097560976, 97.0, 121.0 ],
                                    "text": "trigger the arpeggio from any external source",
                                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "color": [ 1.0, 0.0, 1.0, 1.0 ],
                                    "id": "obj-52",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "signal", "signal", "signal" ],
                                    "patching_rect": [ -248.78048780487805, 651.219512195122, 203.0, 23.0 ],
                                    "text": "gen~ @gen stochastic-cloud.gendsp"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-53",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 17.073170731707318, 473.1707317073171, 56.0, 23.0 ],
                                    "text": "width $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-55",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 90.2439024390244, 473.1707317073171, 50.0, 23.0 ],
                                    "text": "jitter $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-57",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 175.609756097561, 473.1707317073171, 91.0, 23.0 ],
                                    "text": "occurrences $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-59",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ -36.58536585365854, 473.1707317073171, 49.0, 23.0 ],
                                    "text": "loop $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-61",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ -151.21951219512195, 473.1707317073171, 65.0, 23.0 ],
                                    "text": "interval $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-65",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "bang" ],
                                    "patching_rect": [ -248.78048780487805, 700.0, 42.0, 23.0 ],
                                    "text": "edge~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-68",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ -287.8048780487805, 604.8780487804878, 39.0, 23.0 ],
                                    "text": "click~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-69",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ -65.85365853658537, 607.3170731707318, 39.0, 23.0 ],
                                    "text": "click~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-72",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ -156.09756097560975, 729.2682926829269, 72.26277372262773, 37.0 ],
                                    "text": "snapshot~ 1 @active 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-74",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ -248.78048780487805, 734.1463414634147, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                                    "id": "obj-75",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 1470.7317073170732, 140.74074074074073, 109.0, 23.0 ],
                                    "restore": [ 3999.9999999999986 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr stop-duration",
                                    "varname": "stop-duration"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-80",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1470.7317073170732, 169.1358024691358, 29.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 241.79396652631584, 135.33650355008274, 47.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_exponent": 3.33,
                                            "parameter_initial": [ 2000.000000000001 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.numbox[15]",
                                            "parameter_mmax": 30000.0,
                                            "parameter_mmin": 20.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.numbox",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 2
                                        }
                                    },
                                    "textcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "varname": "live.numbox[3]"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-81",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 412.19512195121956, 1234.1463414634147, 64.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 267.451861263158, 175.5552985263158, 64.0, 21.0 ],
                                    "text": "arpegiate !",
                                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.0, 0.4823529411764706, 0.47058823529411764, 1.0 ],
                                    "activebgoncolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "bgcolor": [ 0.243137254901961, 0.243137254901961, 0.243137254901961, 1.0 ],
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "id": "obj-82",
                                    "maxclass": "live.button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ -287.8048780487805, 526.829268292683, 19.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 241.79396652631587, 174.23950905263158, 23.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_invisible": 2,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "arpeggio",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "arpeggio",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "arpeggio"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-83",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 412.19512195121956, 1212.1951219512196, 131.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 270.91484564719497, 101.09890109890111, 131.0, 21.0 ],
                                    "text": "stop running soundfiles",
                                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.72156862745098, 0.27843137254902, 0.27843137254902, 0.5 ],
                                    "activebgoncolor": [ 1.0, 0.0, 0.0, 1.0 ],
                                    "bgcolor": [ 0.243137254901961, 0.243137254901961, 0.243137254901961, 1.0 ],
                                    "bordercolor": [ 1.0, 0.1450980392156863, 0.0, 1.0 ],
                                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "id": "obj-84",
                                    "maxclass": "live.button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ -87.8048780487805, 239.02439024390245, 23.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 241.79396652631584, 100.0, 23.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_invisible": 2,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "stopfiles",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "stopfiles",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "stopfiles"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-129",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 412.19512195121956, 1187.8048780487807, 82.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 289.82028231578954, 249.23950905263158, 82.0, 21.0 ],
                                    "text": "arpeggio jitter",
                                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-143",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 612.1951219512196, 1014.6341463414635, 32.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 397.05712442105266, 249.23950905263158, 32.0, 21.0 ],
                                    "text": "loop",
                                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-139",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 412.19512195121956, 1163.4146341463415, 178.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 266.7939665263159, 204.50266694736843, 178.0, 21.0 ],
                                    "text": "n° of occurences in the arpeggio",
                                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-138",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 412.19512195121956, 1136.5853658536587, 152.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 239.82028231578954, 226.871088, 152.0, 21.0 ],
                                    "text": "interval between each note",
                                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.168627450980392, 0.168627450980392, 0.168627450980392, 0.0 ],
                                    "fontface": 0,
                                    "fontsize": 9.0,
                                    "htricolor": [ 0.380392156862745, 0.925490196078431, 0.349019607843137, 0.32156862745098 ],
                                    "id": "obj-190",
                                    "ignoreclick": 1,
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ -156.09756097560975, 770.7317073170732, 22.0, 19.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 326.66238757894746, 179.50266694736843, 18.902439024390244, 19.0 ],
                                    "textcolor": [ 0.0, 0.4823529411764706, 0.47058823529411764, 1.0 ],
                                    "triangle": 0,
                                    "tricolor": [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-127",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 90.2439024390244, 448.7804878048781, 31.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 239.82028231578954, 251.871088, 48.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_initial": [ 80.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "jitter",
                                            "parameter_mmax": 100.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "jitter",
                                            "parameter_type": 1,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "textcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "varname": "jitter"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-86",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ -65.85365853658537, 570.7317073170732, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-96",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "panic", "bang", "int" ],
                                    "patching_rect": [ -87.8048780487805, 275.609756097561, 67.81704260651627, 23.0 ],
                                    "text": "t panic b 0"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                                    "id": "obj-145",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ -82.92682926829269, 343.9024390243903, 110.0, 23.0 ],
                                    "restore": [ 0.0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr arpeggio-loop",
                                    "varname": "arpeggio-loop"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "activebgoncolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "bgcolor": [ 0.372549019607843, 0.356862745098039, 0.333333333333333, 0.0 ],
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "id": "obj-90",
                                    "maxclass": "live.toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ -36.58536585365854, 448.7804878048781, 15.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 427.32028231578954, 252.5289827368421, 15.0, 15.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_linknames": 1,
                                            "parameter_longname": "loop",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "loop",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "loop"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                                    "id": "obj-137",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ -207.31707317073173, 319.51219512195127, 127.0, 23.0 ],
                                    "restore": [ 199.99999999999997 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr arpeggio-interval",
                                    "varname": "arpeggio-interval"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-135",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 175.609756097561, 448.7804878048781, 32.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 239.82028231578954, 206.47635115789473, 27.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_initial": [ 8 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "occurences",
                                            "parameter_mmax": 32.0,
                                            "parameter_mmin": 2.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "occurences",
                                            "parameter_type": 1,
                                            "parameter_unitstyle": 0
                                        }
                                    },
                                    "textcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "varname": "occurences"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-115",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ -151.21951219512195, 448.7804878048781, 31.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 389.82028231578954, 228.84477221052632, 54.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_exponent": 3.33,
                                            "parameter_initial": [ 199.99999999999997 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "interval",
                                            "parameter_mmax": 30000.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "interval",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 2
                                        }
                                    },
                                    "textcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "varname": "interval"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 380.4878048780488, 429.26829268292687, 55.0, 23.0 ],
                                    "text": "mode $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 380.4878048780488, 400.0, 100.0, 23.0 ],
                                    "text": "t l l"
                                }
                            },
                            {
                                "box": {
                                    "comment": "poly~ main inlet",
                                    "id": "obj-12",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 380.4878048780488, 812.1951219512196, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-76",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1346.3414634146343, 193.82716049382714, 98.0, 23.0 ],
                                    "text": "prepend ampDur"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                                    "id": "obj-77",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 1346.3414634146343, 140.74074074074073, 111.9718309859155, 23.0 ],
                                    "restore": [ 3000.0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr amp-duration",
                                    "varname": "amp-duration"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-78",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 412.19512195121956, 1014.6341463414635, 120.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 70.59340659340658, 198.4010989010989, 120.0, 21.0 ],
                                    "text": "amp modulation time",
                                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-79",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1346.3414634146343, 169.1358024691358, 27.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 13.0, 199.5, 54.99999999999999, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_initial": [ 1500.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "amp_speedmod",
                                            "parameter_mmax": 60000.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "amp_speedmod",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 2
                                        }
                                    },
                                    "textcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "varname": "live.numbox[2]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-56",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 870.7317073170732, 681.4814814814814, 31.0, 23.0 ],
                                    "text": "thru"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-41",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1000.0000000000001, 193.82716049382714, 116.0, 23.0 ],
                                    "text": "prepend fadeOutPct"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-40",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 870.7317073170732, 193.82716049382714, 107.0, 23.0 ],
                                    "text": "prepend fadeInPct"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-39",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1234.1463414634147, 193.82716049382714, 102.0, 23.0 ],
                                    "text": "prepend ampMax"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-38",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1129.2682926829268, 193.82716049382714, 99.0, 23.0 ],
                                    "text": "prepend ampMin"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-37",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1587.8048780487807, 193.82716049382714, 98.0, 23.0 ],
                                    "text": "prepend spatDur"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 582.9268292682927, 582.9268292682927, 63.0, 37.0 ],
                                    "text": "routepass clear"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-35",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "dump_done" ],
                                    "patching_rect": [ 500.00000000000006, 651.219512195122, 78.0, 23.0 ],
                                    "text": "t dump_done"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 400.0, 585.3658536585366, 91.0, 23.0 ],
                                    "text": "getcount, dump"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 1.0, 0.0, 1.0, 1.0 ],
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "patching_rect": [ 400.0, 614.6341463414634, 120.0, 23.0 ],
                                    "text": "polybuffer~ my-sfiles"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-11",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 246.34146341463415, 1209.7560975609756, 144.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 157.60975604878047, 287.0, 144.0, 23.0 ],
                                    "text": "Spatialisation settings",
                                    "textcolor": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 246.34146341463415, 1182.9268292682927, 106.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 55.0, 5.551919100165492, 106.0, 23.0 ],
                                    "text": "Load soundfiles",
                                    "textcolor": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-7",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 782.9268292682927, 1034.1463414634147, 63.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 35.0, 71.00000000000001, 63.0, 21.0 ],
                                    "text": "count files",
                                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.243137254901961, 0.243137254901961, 0.243137254901961, 1.0 ],
                                    "activebgoncolor": [ 0.0, 0.403921568627451, 0.690196078431373, 1.0 ],
                                    "annotation": "click to recount the number of files in the buffer. Usefull when you drag and drop files by hand in the polybuffer window",
                                    "annotation_name": "recount",
                                    "bgcolor": [ 0.243137254901961, 0.243137254901961, 0.243137254901961, 1.0 ],
                                    "bordercolor": [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
                                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "hint": "click to recount the number of files in the buffer. Usefull when you drag and drop files by hand in the polybuffer window",
                                    "id": "obj-5",
                                    "maxclass": "live.button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 400.0, 563.4146341463415, 18.4, 18.4 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 14.0, 72.00000000000001, 19.0, 19.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_invisible": 2,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "live.button[1]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "countfiles",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "countfiles"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.0, 0.9768045545, 0.0, 0.52 ],
                                    "activebgoncolor": [ 0.129411764705882, 1.0, 0.0, 1.0 ],
                                    "bgcolor": [ 0.243137254901961, 0.243137254901961, 0.243137254901961, 1.0 ],
                                    "bordercolor": [ 0.0, 0.9768045545, 0.0, 1.0 ],
                                    "focusbordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "id": "obj-4",
                                    "maxclass": "live.button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 317.07317073170736, 239.02439024390245, 27.0, 27.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 241.79396652631584, 69.00000000000001, 23.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_invisible": 2,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "gofiles",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "gofiles",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "gofiles"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 782.9268292682927, 1056.09756097561, 153.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 267.0686918010411, 69.54945054945057, 153.0, 21.0 ],
                                    "text": "manually trigger a soundfile",
                                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-160",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 246.34146341463415, 1100.0, 106.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 64.304878, 228.84477221052632, 106.0, 23.0 ],
                                    "text": "Envelope shape",
                                    "textcolor": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                                    "id": "obj-208",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 1587.8048780487807, 140.74074074074073, 95.0, 23.0 ],
                                    "restore": [ 2500.000000000001 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr spat-speed",
                                    "varname": "spat-speed"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-196",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 412.19512195121956, 1041.4634146341464, 78.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 67.81400966183574, 310.0, 78.0, 21.0 ],
                                    "text": "spat duration",
                                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-201",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1587.8048780487807, 169.1358024691358, 26.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 13.369565217391305, 311.6666666666667, 51.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_exponent": 6.666,
                                            "parameter_initial": [ 2999.999999999998 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.numbox[7]",
                                            "parameter_mmax": 60000.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.numbox",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 2
                                        }
                                    },
                                    "textcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "varname": "live.numbox[11]"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-159",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 612.1951219512196, 1200.0, 63.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 182.96703296703296, 253.0, 39.0, 21.0 ],
                                    "text": "decay",
                                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                                    "id": "obj-158",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 1000.0000000000001, 140.74074074074073, 115.0, 23.0 ],
                                    "restore": [ 5.0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr env-dcy-speed",
                                    "varname": "env-dcy-speed"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-157",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1000.0000000000001, 169.1358024691358, 26.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 129.67032967032966, 254.0, 53.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "dcyspeed",
                                            "parameter_mmax": 100.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "dcyspeed",
                                            "parameter_type": 1,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "textcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "varname": "dcyspeed"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-154",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 612.1951219512196, 1041.4634146341464, 41.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 67.0, 253.0, 41.0, 21.0 ],
                                    "text": "attack",
                                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                                    "id": "obj-155",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 870.7317073170732, 140.74074074074073, 112.0, 23.0 ],
                                    "restore": [ 0.0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr env-atk-speed",
                                    "varname": "env-atk-speed"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-156",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 870.7317073170732, 169.1358024691358, 25.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 13.0, 254.0, 54.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "atkspeed",
                                            "parameter_mmax": 100.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "atkspeed",
                                            "parameter_type": 1,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "textcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "varname": "atkspeed"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-73",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 246.34146341463415, 1126.829268292683, 148.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 34.0, 155.5, 148.0, 23.0 ],
                                    "text": "Amplitude modulation",
                                    "textcolor": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-58",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 646.3414634146342, 1224.3902439024391, 28.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 70.0, 179.0, 28.0, 21.0 ],
                                    "text": "min",
                                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-60",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 612.1951219512196, 1224.3902439024391, 30.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 182.96703296703296, 179.0, 30.0, 21.0 ],
                                    "text": "max",
                                    "textcolor": [ 0.541176470588235, 0.541176470588235, 0.541176470588235, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                                    "id": "obj-47",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 1234.1463414634147, 140.74074074074073, 85.0, 23.0 ],
                                    "restore": [ 0.0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr gain-max",
                                    "varname": "gain-max"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                                    "id": "obj-46",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 1129.2682926829268, 140.74074074074073, 83.0, 23.0 ],
                                    "restore": [ -9.0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr gain-min",
                                    "varname": "gain-min"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-36",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1234.1463414634147, 169.1358024691358, 29.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 127.47252747252747, 180.0, 57.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_initial": [ -3.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "live.numbox[19]",
                                            "parameter_mmax": 24.0,
                                            "parameter_mmin": -90.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "amp-max",
                                            "parameter_type": 1,
                                            "parameter_unitstyle": 4
                                        }
                                    },
                                    "textcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "varname": "amp-max"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-6",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1129.2682926829268, 169.1358024691358, 28.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 13.0, 180.0, 55.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_initial": [ -9.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "live.numbox[20]",
                                            "parameter_mmax": 24.0,
                                            "parameter_mmin": -90.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "amp-min",
                                            "parameter_type": 1,
                                            "parameter_unitstyle": 4
                                        }
                                    },
                                    "textcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "varname": "amp-min"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-147",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 782.9268292682927, 1014.6341463414635, 151.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 14.0, 48.0, 176.0, 21.0 ],
                                    "text": "or drag a folder from finder",
                                    "textcolor": [ 0.0, 1.0, 0.984313725490196, 0.66 ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-54",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 246.34146341463415, 1153.658536585366, 103.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 63.666666666666686, 100.0, 103.0, 23.0 ],
                                    "text": "Playback mode",
                                    "textcolor": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-70",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 317.07317073170736, 307.3170731707317, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-63",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 380.4878048780488, 307.3170731707317, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "bang" ],
                                    "patching_rect": [ 317.07317073170736, 275.609756097561, 82.49206349206344, 23.0 ],
                                    "text": "t b b"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.6666666666666666, 0.6470588235294118, 0.0, 1.0 ],
                                    "id": "obj-136",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 485.3658536585366, 400.0, 131.0, 23.0 ],
                                    "text": "s #0-selected-mode-"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.062147818505764, 0.070864260196686, 0.082519225776196, 1.0 ],
                                    "activebgoncolor": [ 0.0, 0.396078431372549, 0.39215686274509803, 1.0 ],
                                    "bgcolor": [ 0.062745098039216, 0.070588235294118, 0.082352941176471, 1.0 ],
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "focusbordercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-125",
                                    "inactivetextoncolor": [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 1.0 ],
                                    "maxclass": "live.tab",
                                    "num_lines_patching": 3,
                                    "num_lines_presentation": 1,
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 380.4878048780488, 339.0243902439025, 100.0, 58.07191090064015 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 13.0, 124.0, 204.33333333333334, 24.0 ],
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": ""
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "inactivetextoncolor": {
                                            "expression": ""
                                        },
                                        "textcolor": {
                                            "expression": ""
                                        },
                                        "textoncolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "straight", "varispeed", "curve" ],
                                            "parameter_linknames": 1,
                                            "parameter_longname": "read-mode",
                                            "parameter_mmax": 2,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "read-mode",
                                            "parameter_type": 2,
                                            "parameter_unitstyle": 9
                                        }
                                    },
                                    "textcolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "textoncolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "varname": "read-mode"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.545098039215686, 0.313725490196078, 0.0, 1.0 ],
                                    "id": "obj-51",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 412.19512195121956, 307.3170731707317, 94.0, 23.0 ],
                                    "restore": [ 0.0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr gliss-mode",
                                    "varname": "gliss-mode"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.168627450980392, 0.168627450980392, 0.168627450980392, 0.0 ],
                                    "fontsize": 10.0,
                                    "id": "obj-27",
                                    "ignoreclick": 1,
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 575.609756097561, 817.0731707317074, 21.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 196.60975599999998, 49.00000000000001, 32.0, 20.0 ],
                                    "textcolor": [ 0.0, 0.4823529411764706, 0.47058823529411764, 1.0 ],
                                    "triangle": 0
                                }
                            },
                            {
                                "box": {
                                    "border": 1.0,
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 0.66 ],
                                    "id": "obj-16",
                                    "maxclass": "dropfile",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 400.0, 500.00000000000006, 44.51126472094214, 19.81566820276498 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 14.0, 48.0, 176.0, 22.0 ],
                                    "rounded": 1.0
                                }
                            },
                            {
                                "box": {
                                    "comment": "trigger a file from any external source",
                                    "id": "obj-126",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 339.0243902439025, 200.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "background": 1,
                                    "bgcolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "border": 1,
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "id": "obj-71",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1034.1463414634147, 1078.0487804878048, 29.25, 28.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 230.60975600000006, 164.371088, 225.609756097561, 118.75 ],
                                    "proportion": 0.39,
                                    "rounded": 4
                                }
                            },
                            {
                                "box": {
                                    "angle": 0.0,
                                    "background": 1,
                                    "bgcolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "border": 1,
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "hidden": 1,
                                    "id": "obj-192",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1068.2926829268292, 1078.0487804878048, 29.25, 28.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 459.7764226666667, 5.551919100165492, 209.5, 277.5691688998345 ],
                                    "proportion": 0.5,
                                    "rounded": 4,
                                    "varname": "panel_pitch"
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "background": 1,
                                    "bgcolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "border": 1,
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "id": "obj-234",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1102.439024390244, 1014.6341463414635, 29.25, 28.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 3.0, 286.0, 453.219512097561, 234.0 ],
                                    "proportion": 0.39,
                                    "rounded": 4
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "background": 1,
                                    "bgcolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "border": 1,
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "id": "obj-233",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1068.2926829268292, 1014.6341463414635, 29.25, 28.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 3.0, 100.0, 225.609756, 183.121088 ],
                                    "proportion": 0.39,
                                    "rounded": 4
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "background": 1,
                                    "bgcolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "border": 1,
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "id": "obj-232",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1034.1463414634147, 1014.6341463414635, 29.25, 28.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 3.0, 5.551919100165492, 225.609756, 92.44808089983451 ],
                                    "proportion": 0.39,
                                    "rounded": 4
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "background": 1,
                                    "bgcolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "border": 1,
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "id": "obj-140",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1034.1463414634147, 1046.3414634146343, 29.25, 28.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 230.609756, 5.551919100165492, 225.609756097561, 156.8191688998345 ],
                                    "proportion": 0.39,
                                    "rounded": 4
                                }
                            },
                            {
                                "box": {
                                    "angle": 0.0,
                                    "background": 1,
                                    "bgcolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "border": 1,
                                    "bordercolor": [ 0.0, 0.933333, 1.0, 1.0 ],
                                    "hidden": 1,
                                    "id": "obj-193",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1068.2926829268292, 1046.3414634146343, 29.25, 28.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 459.5264226666667, 286.0, 210.0, 234.0 ],
                                    "proportion": 0.39,
                                    "rounded": 4,
                                    "saved_attribute_attributes": {
                                        "bordercolor": {
                                            "expression": "themecolor.live_control_selection_variant"
                                        }
                                    },
                                    "varname": "panel_bpf2"
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "background": 1,
                                    "bgcolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                                    "border": 1,
                                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                                    "id": "obj-34",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1102.439024390244, 1046.3414634146343, 29.25, 28.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 3.0, 524.0, 666.7764226666667, 361.0 ],
                                    "proportion": 0.39,
                                    "rounded": 4
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-101", 0 ],
                                    "source": [ "obj-100", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-197", 0 ],
                                    "source": [ "obj-101", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-214", 0 ],
                                    "source": [ "obj-101", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-215", 0 ],
                                    "source": [ "obj-101", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-56", 0 ],
                                    "midpoints": [ 1709.5, 231.87037037037035, 880.2317073170732, 231.87037037037035 ],
                                    "source": [ "obj-102", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-98", 0 ],
                                    "source": [ "obj-103", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-106", 0 ],
                                    "source": [ "obj-105", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-92", 4 ],
                                    "source": [ "obj-106", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-207", 0 ],
                                    "source": [ "obj-108", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-133", 0 ],
                                    "source": [ "obj-109", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-109", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-182", 0 ],
                                    "source": [ "obj-113", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-174", 0 ],
                                    "source": [ "obj-114", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-61", 0 ],
                                    "source": [ "obj-115", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-184", 0 ],
                                    "source": [ "obj-116", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-218", 0 ],
                                    "source": [ "obj-117", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-119", 0 ],
                                    "source": [ "obj-118", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-217", 0 ],
                                    "midpoints": [ -158.7926829268293, 1110.9500444260575, -278.3048780487805, 1110.9500444260575 ],
                                    "source": [ "obj-119", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-122", 0 ],
                                    "source": [ "obj-120", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-204", 0 ],
                                    "source": [ "obj-122", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-128", 0 ],
                                    "source": [ "obj-124", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-125", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-126", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-55", 0 ],
                                    "source": [ "obj-127", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-203", 0 ],
                                    "source": [ "obj-128", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-56", 0 ],
                                    "midpoints": [ 1175.3536585365855, 332.48765432098764, 880.2317073170732, 332.48765432098764 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-167", 0 ],
                                    "source": [ "obj-130", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-132", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-218", 0 ],
                                    "source": [ "obj-133", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-218", 0 ],
                                    "source": [ "obj-134", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-57", 0 ],
                                    "source": [ "obj-135", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-115", 0 ],
                                    "source": [ "obj-137", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-142", 0 ],
                                    "source": [ "obj-141", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-92", 1 ],
                                    "source": [ "obj-142", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-146", 0 ],
                                    "source": [ "obj-144", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-90", 0 ],
                                    "source": [ "obj-145", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-148", 0 ],
                                    "source": [ "obj-146", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-92", 2 ],
                                    "source": [ "obj-148", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-218", 0 ],
                                    "source": [ "obj-15", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "source": [ "obj-15", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-56", 0 ],
                                    "midpoints": [ 755.8414634146342, 332.37464729412625, 880.2317073170732, 332.37464729412625 ],
                                    "source": [ "obj-151", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-175", 0 ],
                                    "source": [ "obj-152", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-151", 0 ],
                                    "source": [ "obj-153", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-156", 0 ],
                                    "source": [ "obj-155", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-40", 0 ],
                                    "source": [ "obj-156", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-41", 0 ],
                                    "source": [ "obj-157", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-157", 0 ],
                                    "source": [ "obj-158", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-230", 0 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-153", 0 ],
                                    "source": [ "obj-161", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-130", 0 ],
                                    "midpoints": [ 1146.0853658536587, 780.1423462537167, 987.548780487805, 780.1423462537167 ],
                                    "source": [ "obj-162", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-108", 0 ],
                                    "source": [ "obj-163", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-167", 0 ],
                                    "source": [ "obj-164", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-130", 0 ],
                                    "midpoints": [ 1046.8254689409641, 915.912118024345, 969.2250371972756, 915.912118024345, 969.2250371972756, 778.5526409001619, 987.548780487805, 778.5526409001619 ],
                                    "source": [ "obj-167", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-67", 0 ],
                                    "source": [ "obj-167", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-109", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-35", 0 ],
                                    "source": [ "obj-17", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-173", 0 ],
                                    "source": [ "obj-171", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-171", 0 ],
                                    "source": [ "obj-172", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-223", 0 ],
                                    "source": [ "obj-172", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-172", 0 ],
                                    "source": [ "obj-173", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-130", 0 ],
                                    "midpoints": [ 1021.6951219512196, 780.1423462537167, 987.548780487805, 780.1423462537167 ],
                                    "source": [ "obj-174", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-209", 0 ],
                                    "source": [ "obj-175", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-181", 0 ],
                                    "source": [ "obj-177", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-183", 0 ],
                                    "source": [ "obj-178", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-185", 0 ],
                                    "source": [ "obj-180", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-181", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-130", 0 ],
                                    "midpoints": [ 1055.8414634146343, 780.1423462537167, 987.548780487805, 780.1423462537167 ],
                                    "source": [ "obj-182", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-44", 0 ],
                                    "source": [ "obj-183", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-130", 0 ],
                                    "midpoints": [ 1107.0609756097563, 780.1423462537167, 987.548780487805, 780.1423462537167 ],
                                    "source": [ "obj-184", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-85", 0 ],
                                    "source": [ "obj-185", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-172", 0 ],
                                    "source": [ "obj-186", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-201", 0 ],
                                    "source": [ "obj-187", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-206", 0 ],
                                    "source": [ "obj-188", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-239", 0 ],
                                    "source": [ "obj-188", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-162", 0 ],
                                    "source": [ "obj-189", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-63", 0 ],
                                    "source": [ "obj-19", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-70", 0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-118", 0 ],
                                    "source": [ "obj-195", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-119", 1 ],
                                    "source": [ "obj-195", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-198", 0 ],
                                    "source": [ "obj-197", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-195", 0 ],
                                    "source": [ "obj-198", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-195", 1 ],
                                    "source": [ "obj-198", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-226", 0 ],
                                    "source": [ "obj-199", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-227", 0 ],
                                    "source": [ "obj-199", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 0 ],
                                    "source": [ "obj-201", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-205", 0 ],
                                    "source": [ "obj-202", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-56", 0 ],
                                    "midpoints": [ 1297.3048780487807, 332.48765432098764, 880.2317073170732, 332.48765432098764 ],
                                    "source": [ "obj-203", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-56", 0 ],
                                    "midpoints": [ 1443.6463414634147, 332.48765432098764, 880.2317073170732, 332.48765432098764 ],
                                    "source": [ "obj-204", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-217", 0 ],
                                    "midpoints": [ -39.28048780487805, 1110.9769261464876, -278.3048780487805, 1110.9769261464876 ],
                                    "source": [ "obj-205", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-56", 0 ],
                                    "midpoints": [ 1231.2297297297298, 663.5061728395061, 880.2317073170732, 663.5061728395061 ],
                                    "source": [ "obj-206", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-56", 0 ],
                                    "midpoints": [ 1582.6707317073171, 332.48765432098764, 880.2317073170732, 332.48765432098764 ],
                                    "source": [ "obj-207", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-201", 0 ],
                                    "source": [ "obj-208", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-56", 0 ],
                                    "midpoints": [ 1697.3048780487807, 332.48765432098764, 880.2317073170732, 332.48765432098764 ],
                                    "source": [ "obj-209", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-202", 0 ],
                                    "source": [ "obj-210", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-205", 1 ],
                                    "source": [ "obj-210", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-219", 0 ],
                                    "source": [ "obj-211", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-219", 1 ],
                                    "source": [ "obj-211", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-172", 0 ],
                                    "midpoints": [ 1247.2567567567567, 540.6027726287375, 1050.015722217128, 540.6027726287375, 1050.015722217128, 387.9104960860559, 1112.7972972972973, 387.9104960860559 ],
                                    "source": [ "obj-212", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-211", 0 ],
                                    "source": [ "obj-214", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-216", 0 ],
                                    "source": [ "obj-215", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-210", 0 ],
                                    "source": [ "obj-216", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-210", 1 ],
                                    "source": [ "obj-216", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-194", 0 ],
                                    "source": [ "obj-217", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-220", 1 ],
                                    "source": [ "obj-219", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-222", 0 ],
                                    "source": [ "obj-219", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-217", 0 ],
                                    "source": [ "obj-220", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-188", 0 ],
                                    "source": [ "obj-221", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-220", 0 ],
                                    "source": [ "obj-222", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-224", 0 ],
                                    "source": [ "obj-223", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-212", 0 ],
                                    "source": [ "obj-224", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-221", 0 ],
                                    "source": [ "obj-224", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-229", 0 ],
                                    "source": [ "obj-225", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-246", 0 ],
                                    "source": [ "obj-225", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-224", 0 ],
                                    "source": [ "obj-227", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-199", 0 ],
                                    "source": [ "obj-228", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-56", 0 ],
                                    "midpoints": [ 912.7972972972973, 663.6990740740741, 880.2317073170732, 663.6990740740741 ],
                                    "source": [ "obj-229", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "order": 1,
                                    "source": [ "obj-23", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-136", 0 ],
                                    "order": 0,
                                    "source": [ "obj-23", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-28", 0 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-230", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-230", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-230", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-230", 1 ],
                                    "source": [ "obj-231", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-225", 0 ],
                                    "source": [ "obj-235", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-235", 0 ],
                                    "source": [ "obj-238", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-226", 0 ],
                                    "source": [ "obj-239", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "midpoints": [ 592.4268292682927, 712.3022253716441, 389.9878048780488, 712.3022253716441 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-172", 0 ],
                                    "order": 1,
                                    "source": [ "obj-243", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-173", 0 ],
                                    "order": 2,
                                    "source": [ "obj-243", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-226", 0 ],
                                    "order": 0,
                                    "source": [ "obj-243", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-243", 0 ],
                                    "source": [ "obj-245", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-245", 0 ],
                                    "source": [ "obj-246", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-135", 0 ],
                                    "source": [ "obj-29", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-92", 0 ],
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-127", 0 ],
                                    "source": [ "obj-32", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-62", 0 ],
                                    "source": [ "obj-33", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "midpoints": [ 509.50000000000006, 701.6185416158836, 389.9878048780488, 701.6185416158836 ],
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
                                    "destination": [ "obj-56", 0 ],
                                    "midpoints": [ 1597.3048780487807, 231.87037037037035, 880.2317073170732, 231.87037037037035 ],
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-56", 0 ],
                                    "midpoints": [ 1138.7682926829268, 231.87037037037035, 880.2317073170732, 231.87037037037035 ],
                                    "source": [ "obj-38", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-56", 0 ],
                                    "midpoints": [ 1243.6463414634147, 231.87037037037035, 880.2317073170732, 231.87037037037035 ],
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-56", 0 ],
                                    "source": [ "obj-40", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-56", 0 ],
                                    "midpoints": [ 1009.5000000000001, 231.87037037037035, 880.2317073170732, 231.87037037037035 ],
                                    "source": [ "obj-41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-43", 0 ],
                                    "source": [ "obj-42", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-53", 0 ],
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-56", 0 ],
                                    "midpoints": [ 1038.7682926829268, 332.48765432098764, 880.2317073170732, 332.48765432098764 ],
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-46", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "source": [ "obj-47", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-125", 0 ],
                                    "source": [ "obj-51", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-65", 0 ],
                                    "source": [ "obj-52", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-72", 0 ],
                                    "source": [ "obj-52", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-52", 0 ],
                                    "midpoints": [ 26.573170731707318, 550.3010473444435, -239.28048780487805, 550.3010473444435 ],
                                    "source": [ "obj-53", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-52", 0 ],
                                    "midpoints": [ 99.7439024390244, 550.3010473444435, -239.28048780487805, 550.3010473444435 ],
                                    "source": [ "obj-55", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "midpoints": [ 880.2317073170732, 717.0341666158835, 389.9878048780488, 717.0341666158835 ],
                                    "source": [ "obj-56", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-52", 0 ],
                                    "midpoints": [ 185.109756097561, 550.3010473444435, -239.28048780487805, 550.3010473444435 ],
                                    "source": [ "obj-57", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-52", 0 ],
                                    "midpoints": [ -27.085365853658537, 550.3010473444435, -239.28048780487805, 550.3010473444435 ],
                                    "source": [ "obj-59", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-38", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-52", 0 ],
                                    "midpoints": [ -141.71951219512195, 550.3010473444435, -239.28048780487805, 550.3010473444435 ],
                                    "source": [ "obj-61", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-66", 0 ],
                                    "source": [ "obj-62", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-125", 0 ],
                                    "source": [ "obj-63", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-167", 0 ],
                                    "midpoints": [ 1075.3536585365855, 967.3365955076455, 963.2487937885872, 967.3365955076455, 963.2487937885872, 843.912118024345, 987.548780487805, 843.912118024345 ],
                                    "source": [ "obj-64", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-74", 0 ],
                                    "source": [ "obj-65", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-87", 0 ],
                                    "source": [ "obj-66", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-64", 0 ],
                                    "source": [ "obj-67", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-52", 0 ],
                                    "source": [ "obj-68", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-52", 1 ],
                                    "source": [ "obj-69", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "midpoints": [ 326.57317073170736, 702.6738169342924, 389.9878048780488, 702.6738169342924 ],
                                    "source": [ "obj-70", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-190", 0 ],
                                    "source": [ "obj-72", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "midpoints": [ -239.28048780487805, 779.3681862419645, -314.76233829695354, 779.3681862419645, -314.76233829695354, 192.44061592789546, 326.57317073170736, 192.44061592789546 ],
                                    "source": [ "obj-74", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-80", 0 ],
                                    "source": [ "obj-75", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-56", 0 ],
                                    "midpoints": [ 1355.8414634146343, 231.87037037037035, 880.2317073170732, 231.87037037037035 ],
                                    "source": [ "obj-76", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-79", 0 ],
                                    "source": [ "obj-77", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-76", 0 ],
                                    "source": [ "obj-79", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-31", 0 ],
                                    "source": [ "obj-8", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-88", 0 ],
                                    "source": [ "obj-80", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-68", 0 ],
                                    "source": [ "obj-82", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-96", 0 ],
                                    "source": [ "obj-84", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-56", 0 ],
                                    "midpoints": [ 914.3780487804878, 332.48765432098764, 880.2317073170732, 332.48765432098764 ],
                                    "source": [ "obj-85", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-69", 0 ],
                                    "source": [ "obj-86", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-92", 3 ],
                                    "source": [ "obj-87", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-56", 0 ],
                                    "midpoints": [ 1480.2317073170732, 231.87037037037035, 880.2317073170732, 231.87037037037035 ],
                                    "source": [ "obj-88", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-82", 0 ],
                                    "source": [ "obj-89", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-59", 0 ],
                                    "source": [ "obj-90", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-84", 0 ],
                                    "source": [ "obj-91", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-93", 0 ],
                                    "source": [ "obj-92", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "midpoints": [ -78.3048780487805, 310.9600884372939, 296.2426546541742, 310.9600884372939, 296.2426546541742, 717.5390358057149, 389.9878048780488, 717.5390358057149 ],
                                    "source": [ "obj-96", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-86", 0 ],
                                    "source": [ "obj-96", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-90", 0 ],
                                    "source": [ "obj-96", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-102", 0 ],
                                    "source": [ "obj-98", 0 ]
                                }
                            }
                        ],
                        "styles": [
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
                                    "stripecolor": [ 0.258338063955307, 0.352425158023834, 0.511919498443604, 1.0 ],
                                    "textcolor_inverse": [ 0.968627, 0.968627, 0.968627, 1 ]
                                },
                                "parentstyle": "",
                                "multi": 0
                            }
                        ],
                        "bgcolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                        "editing_bgcolor": [ 0.274509803921569, 0.274509803921569, 0.274509803921569, 1.0 ]
                    },
                    "patching_rect": [ 497.0, 230.29365079365078, 197.99999999999991, 148.4126984126984 ],
                    "presentation": 1,
                    "presentation_rect": [ 255.0, 6.0, 672.3076923076923, 888.0 ],
                    "varname": "-polybuffer-",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ],
                    "border": 1,
                    "bordercolor": [ 0.0, 1.0, 0.984313725490196, 1.0 ],
                    "id": "obj-232",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 467.2045454545454, 16.0, 29.25, 28.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 9.0, 9.0, 225.96139093732336, 699.0 ],
                    "proportion": 0.39,
                    "rounded": 4
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "source": [ "obj-1", 0 ]
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
                    "destination": [ "obj-24", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-191", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-129", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-64", 0 ],
                    "source": [ "obj-129", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-14", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-177", 0 ],
                    "source": [ "obj-14", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 0 ],
                    "order": 3,
                    "source": [ "obj-14", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "order": 2,
                    "source": [ "obj-14", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-68", 0 ],
                    "order": 1,
                    "source": [ "obj-14", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-93", 0 ],
                    "order": 0,
                    "source": [ "obj-14", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "order": 1,
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "order": 2,
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 0 ],
                    "order": 0,
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-156", 0 ],
                    "source": [ "obj-155", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "source": [ "obj-156", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 1 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-198", 0 ],
                    "source": [ "obj-166", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-88", 0 ],
                    "midpoints": [ 473.5, 690.7374189622554, 445.36200944767444, 690.7374189622554, 445.36200944767444, 481.1192321889996, 473.5, 481.1192321889996 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "source": [ "obj-177", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-129", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "source": [ "obj-183", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 1 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "source": [ "obj-191", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-95", 0 ],
                    "source": [ "obj-198", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 1 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 1 ],
                    "source": [ "obj-20", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 1 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-211", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "order": 2,
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "order": 1,
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "order": 3,
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 0 ],
                    "order": 0,
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "order": 4,
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-129", 1 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-129", 2 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 2 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-95", 0 ],
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
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-39", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-95", 0 ],
                    "source": [ "obj-39", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-95", 0 ],
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-85", 0 ],
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-210", 0 ],
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-84", 0 ],
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 2 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-84", 0 ],
                    "midpoints": [ 1151.8076923076924, 117.44488275257534, 1044.1153846153845, 117.44488275257534 ],
                    "source": [ "obj-50", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 0 ],
                    "source": [ "obj-51", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "source": [ "obj-54", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-84", 0 ],
                    "midpoints": [ 1386.423076923077, 117.44488275257534, 1044.1153846153845, 117.44488275257534 ],
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-57", 0 ],
                    "source": [ "obj-56", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-55", 0 ],
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-84", 0 ],
                    "midpoints": [ 1492.1923076923076, 117.44488275257534, 1044.1153846153845, 117.44488275257534 ],
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-60", 0 ],
                    "source": [ "obj-59", 1 ]
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
                    "destination": [ "obj-84", 0 ],
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-63", 0 ],
                    "source": [ "obj-62", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-64", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 1 ],
                    "source": [ "obj-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-84", 0 ],
                    "midpoints": [ 1261.423076923077, 117.44488275257534, 1044.1153846153845, 117.44488275257534 ],
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 0 ],
                    "source": [ "obj-66", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-65", 0 ],
                    "source": [ "obj-67", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-84", 0 ],
                    "midpoints": [ 1147.9615384615383, 217.43532464686376, 1044.1153846153845, 217.43532464686376 ],
                    "source": [ "obj-69", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 0 ],
                    "source": [ "obj-70", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-69", 0 ],
                    "source": [ "obj-71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-84", 0 ],
                    "midpoints": [ 1257.576923076923, 217.43532464686376, 1044.1153846153845, 217.43532464686376 ],
                    "source": [ "obj-72", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-74", 0 ],
                    "source": [ "obj-73", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-72", 0 ],
                    "source": [ "obj-74", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "source": [ "obj-84", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-86", 0 ],
                    "source": [ "obj-85", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-129", 3 ],
                    "source": [ "obj-87", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "source": [ "obj-88", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 2 ],
                    "source": [ "obj-89", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-89", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-90", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-63", 0 ],
                    "source": [ "obj-91", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-92", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-96", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-129::obj-106": [ "spat-curve[1]", "spat-curve", 0 ],
            "obj-129::obj-108": [ "speed", "speed", 0 ],
            "obj-129::obj-113": [ "rndm-bpf", "rndm-bpf", 0 ],
            "obj-129::obj-114": [ "init-bpf", "init-bpf", 0 ],
            "obj-129::obj-115": [ "interval", "interval", 0 ],
            "obj-129::obj-116": [ "riser-bpf", "riser-bpf", 0 ],
            "obj-129::obj-122": [ "pitch-unchanged", "pitch-unchanged", 0 ],
            "obj-129::obj-125": [ "read-mode", "read-mode", 0 ],
            "obj-129::obj-127": [ "jitter", "jitter", 0 ],
            "obj-129::obj-128": [ "probability", "probability", 0 ],
            "obj-129::obj-135": [ "occurences", "occurences", 0 ],
            "obj-129::obj-142": [ "spatsharp", "spatsharp", 0 ],
            "obj-129::obj-146": [ "spatdamp", "spatdamp", 0 ],
            "obj-129::obj-153": [ "play-mode", "play-mode", 0 ],
            "obj-129::obj-156": [ "atkspeed", "atkspeed", 0 ],
            "obj-129::obj-157": [ "dcyspeed", "dcyspeed", 0 ],
            "obj-129::obj-172": [ "harmomodels", "harmomodels", 0 ],
            "obj-129::obj-175": [ "timestretch-pitch", "timestretch-pitch", 0 ],
            "obj-129::obj-181": [ "glissandis-durations", "glissandis-durations", 0 ],
            "obj-129::obj-183": [ "max-pitch", "max-pitch", 0 ],
            "obj-129::obj-185": [ "min-pitch", "min-pitch", 0 ],
            "obj-129::obj-189": [ "dive-bpf", "dive-bpf", 0 ],
            "obj-129::obj-201": [ "live.numbox[7]", "live.numbox", 0 ],
            "obj-129::obj-231": [ "polybufmenu", "polybufmenu", 0 ],
            "obj-129::obj-235": [ "harmonicmode", "harmonicmode", 0 ],
            "obj-129::obj-31": [ "spatwidth", "spatwidth", 0 ],
            "obj-129::obj-36": [ "live.numbox[19]", "amp-max", 0 ],
            "obj-129::obj-4": [ "gofiles", "gofiles", 0 ],
            "obj-129::obj-43": [ "width[1]", "width", 0 ],
            "obj-129::obj-5": [ "live.button[1]", "countfiles", 0 ],
            "obj-129::obj-6": [ "live.numbox[20]", "amp-min", 0 ],
            "obj-129::obj-62": [ "spatsmooth", "spatsmooth", 0 ],
            "obj-129::obj-79": [ "amp_speedmod", "amp_speedmod", 0 ],
            "obj-129::obj-80": [ "live.numbox[15]", "live.numbox", 0 ],
            "obj-129::obj-82": [ "arpeggio", "arpeggio", 0 ],
            "obj-129::obj-84": [ "stopfiles", "stopfiles", 0 ],
            "obj-129::obj-90": [ "loop", "loop", 0 ],
            "obj-129::obj-98": [ "2or3D", "2or3D", 0 ],
            "obj-156": [ "revmix", "revmix", 0 ],
            "obj-191": [ "multichannel-mode", "multichannel-mode", 0 ],
            "obj-1::obj-128": [ "live.text[58]", "live.text", 0 ],
            "obj-1::obj-41": [ "live.text[55]", "live.text", 0 ],
            "obj-1::obj-66": [ "view-storage", "view-storage", 0 ],
            "obj-2": [ "live.text[1]", "live.text[1]", 0 ],
            "obj-31": [ "master-out", "master out", 0 ],
            "obj-45::obj-74": [ "jsui", "jsui", 0 ],
            "obj-5": [ "live.button[9]", "live.button", 0 ],
            "obj-54": [ "rev_pdel", "rev_pdel", 0 ],
            "obj-57": [ "revdepth", "revdepth", 0 ],
            "obj-60": [ "revsize", "revsize", 0 ],
            "obj-63": [ "revdecay", "revdecay", 0 ],
            "obj-67": [ "revspeed", "revspeed", 0 ],
            "obj-71": [ "revabsorb", "revabsorb", 0 ],
            "obj-74": [ "revtilt", "tilt", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-129::obj-106": {
                    "parameter_initial": 1.0,
                    "parameter_initial_enable": 1,
                    "parameter_invisible": 0,
                    "parameter_longname": "spat-curve[1]",
                    "parameter_modmode": 0,
                    "parameter_range": [ 1.0, 6.0 ],
                    "parameter_shortname": "spat-curve",
                    "parameter_type": 0,
                    "parameter_unitstyle": 1
                },
                "obj-129::obj-125": {
                    "parameter_invisible": 0,
                    "parameter_modmode": 0,
                    "parameter_range": [ "straight", "varispeed", "curve" ],
                    "parameter_type": 2,
                    "parameter_unitstyle": 9
                },
                "obj-129::obj-128": {
                    "parameter_exponent": 1.0
                },
                "obj-129::obj-142": {
                    "parameter_initial": 2.0,
                    "parameter_initial_enable": 1,
                    "parameter_invisible": 0,
                    "parameter_longname": "spatsharp",
                    "parameter_modmode": 0,
                    "parameter_range": [ 1.0, 4.0 ],
                    "parameter_shortname": "spatsharp",
                    "parameter_type": 0,
                    "parameter_unitstyle": 1
                },
                "obj-129::obj-146": {
                    "parameter_initial": 15.0,
                    "parameter_initial_enable": 1,
                    "parameter_invisible": 0,
                    "parameter_longname": "spatdamp",
                    "parameter_modmode": 0,
                    "parameter_range": [ 0, 100 ],
                    "parameter_shortname": "spatdamp",
                    "parameter_type": 1,
                    "parameter_unitstyle": 5
                },
                "obj-129::obj-153": {
                    "parameter_invisible": 0,
                    "parameter_longname": "play-mode",
                    "parameter_modmode": 0,
                    "parameter_shortname": "play-mode",
                    "parameter_type": 2,
                    "parameter_unitstyle": 10
                },
                "obj-129::obj-156": {
                    "parameter_initial": 0.0,
                    "parameter_initial_enable": 1,
                    "parameter_linknames": 1,
                    "parameter_longname": "atkspeed",
                    "parameter_shortname": "atkspeed"
                },
                "obj-129::obj-157": {
                    "parameter_initial": 0.0,
                    "parameter_initial_enable": 1,
                    "parameter_linknames": 1,
                    "parameter_longname": "dcyspeed",
                    "parameter_shortname": "dcyspeed"
                },
                "obj-129::obj-172": {
                    "parameter_invisible": 2,
                    "parameter_longname": "harmomodels",
                    "parameter_modmode": 0,
                    "parameter_range": [ "debussy_WholeTone", "debussy_MajPenta", "debussy_LydianDominant", "debussy_SoireeDansGrenade", "ravel_PureMaj9", "ravel_LydianStack", "ravel_Min11", "ravel_Daphnis_Maj13", "rachmaninov_Min6_9", "rachmaninov_HalfDim7_Min6", "rachmaninov_Maj7_9_11", "rachmaninov_Op23_Passage", "rachmaninov_Op39_Appassionata", "messiaen_Mode1_WholeTone", "messiaen_Mode2_Octatonic", "messiaen_Mode3", "messiaen_Mode4", "messiaen_Mode5", "messiaen_Mode6", "messiaen_Mode7", "boulez_Marteau_HexachordA", "boulez_Marteau_HexachordB", "boulez_Notations_Aggregate", "stockhausen_Klavierstuck_Fibonacci", "stockhausen_Mantra_RingModMatrix", "stockhausen_Stimmung_Overtones", "scelsi_QuattroPezzi_QuarterToneCluster", "scelsi_BeatingPranam_DetunedUnisons", "scelsi_Anahit_MicroFlurries", "berio_Sequenza_SyntheticScale", "berio_Coro_DenseChromatic", "berio_Sinfonia_Polychord", "manoury_Pluton_SyntheticResonance", "manoury_Jupiter_VirtualFlutePivots", "manoury_EnEcho_InharmonicAggregate", "xenakis_SieveAlpha", "xenakis_SieveBeta", "xenakis_Metastasis_GlissCluster", "xenakis_NomosAlpha_SieveModulo", "ligeti_AtmospheresCluster", "ligeti_CordesAVide", "ligeti_Ramifications_QuarterTones", "ligeti_Melodien_Micropolyphony", "grisey_Partiels_Harmonics_1to16", "grisey_Modulations_InharmonicStretching", "grisey_Talea_ContrastedDissonance", "murail_Gondwana_ResonanceBell", "murail_Desintegrations_InharmonicTritone", "murail_TreizeCouleurs_SpectralRing", "haas_InVain_OvertoneRing", "haas_MicrotonalGlide_SixthTones", "radigue_TrilogieDeLaMort_BeatingInterferometry", "radigue_Occam_BowedOvertones", "nancarrow_Study21_CanonRatios", "nancarrow_IrrationalLadder", "ferneyhough_Cassandra_MicroAggregate", "ferneyhough_TimeAndMotion_QuarterHexachord", "part_TabulaRasa_Tintinnabuli", "furrer_Nuun_GranularCluster", "harvey_MortuosPlango_BellResonances", "rihm_JagdenUndFormen_Explosion", "risset_ShepardGlocken", "risset_InharmonicBell", "risset_ParadoxicalPitch", "risset_HarmonicArpeggione", "risset_SpectralGlissando", "risset_SubharmonicCluster", "risset_OctaveStretch", "wholeToneMirror_Custom", "userSlot_01", "userSlot_02", "userSlot_03", "userSlot_04", "userSlot_05", "userSlot_06", "userSlot_07", "userSlot_08", "userSlot_09", "userSlot_10" ],
                    "parameter_type": 2,
                    "parameter_unitstyle": 10
                },
                "obj-129::obj-175": {
                    "parameter_range": [ 0.01, 6.0 ]
                },
                "obj-129::obj-181": {
                    "parameter_initial": 0.0,
                    "parameter_initial_enable": 1
                },
                "obj-129::obj-201": {
                    "parameter_initial": 2999.999999999998,
                    "parameter_initial_enable": 1
                },
                "obj-129::obj-235": {
                    "parameter_invisible": 0,
                    "parameter_longname": "harmonicmode",
                    "parameter_modmode": 0,
                    "parameter_shortname": "harmonicmode",
                    "parameter_type": 2,
                    "parameter_unitstyle": 10
                },
                "obj-129::obj-31": {
                    "parameter_exponent": 1.0,
                    "parameter_initial": 100.0,
                    "parameter_initial_enable": 1,
                    "parameter_longname": "spatwidth",
                    "parameter_range": [ 0, 200 ],
                    "parameter_shortname": "spatwidth"
                },
                "obj-129::obj-36": {
                    "parameter_initial": -3.0,
                    "parameter_initial_enable": 1,
                    "parameter_longname": "live.numbox[19]"
                },
                "obj-129::obj-4": {
                    "parameter_invisible": 2,
                    "parameter_linknames": 1,
                    "parameter_longname": "gofiles",
                    "parameter_shortname": "gofiles"
                },
                "obj-129::obj-43": {
                    "parameter_longname": "width[1]"
                },
                "obj-129::obj-5": {
                    "parameter_longname": "live.button[1]"
                },
                "obj-129::obj-6": {
                    "parameter_initial": -9.0,
                    "parameter_initial_enable": 1,
                    "parameter_longname": "live.numbox[20]"
                },
                "obj-129::obj-62": {
                    "parameter_exponent": 1.0,
                    "parameter_initial": 20.0,
                    "parameter_initial_enable": 1,
                    "parameter_longname": "spatsmooth",
                    "parameter_range": [ 5, 150 ],
                    "parameter_shortname": "spatsmooth",
                    "parameter_unitstyle": 2
                },
                "obj-129::obj-80": {
                    "parameter_longname": "live.numbox[15]"
                },
                "obj-129::obj-82": {
                    "parameter_invisible": 2,
                    "parameter_linknames": 1,
                    "parameter_longname": "arpeggio",
                    "parameter_shortname": "arpeggio"
                },
                "obj-129::obj-84": {
                    "parameter_invisible": 2,
                    "parameter_linknames": 1,
                    "parameter_longname": "stopfiles",
                    "parameter_shortname": "stopfiles"
                },
                "obj-129::obj-98": {
                    "parameter_invisible": 0,
                    "parameter_longname": "2or3D",
                    "parameter_modmode": 0,
                    "parameter_shortname": "2or3D",
                    "parameter_type": 2,
                    "parameter_unitstyle": 10
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "bgcolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ]
    }
}