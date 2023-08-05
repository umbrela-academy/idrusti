var agdaRTS = require("agda-rts");

var z_jAgda_Agda_Primitive = require("jAgda.Agda.Primitive");

exports["Maybe"] = {};
exports["Maybe"]["just"] = a => b => b["just"](a);
exports["Maybe"]["nothing"] = a => a["nothing"]();
