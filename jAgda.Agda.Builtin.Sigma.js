var agdaRTS = require("agda-rts");

var z_jAgda_Agda_Primitive = require("jAgda.Agda.Primitive");

exports["Σ"] = {};
exports["Σ"]["fst"] = a => a["_,_"]({"_,_": (b,c) => b});
exports["Σ"]["snd"] = a => a["_,_"]({"_,_": (b,c) => c});
exports["_,_"] = a => b => ({"_,_": c => c["_,_"](a,b)});
