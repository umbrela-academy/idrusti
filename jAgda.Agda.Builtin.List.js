var agdaRTS = require("agda-rts");

var z_jAgda_Agda_Primitive = require("jAgda.Agda.Primitive");

exports["List"] = {};
exports["List"]["[]"] = Array();
exports["List"]["_∷_"] = function (x) { return function(y) { return Array(x).concat(y); }; };
