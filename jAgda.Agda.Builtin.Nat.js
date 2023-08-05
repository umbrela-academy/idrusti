var agdaRTS = require("agda-rts");

var z_jAgda_Agda_Builtin_Bool = require("jAgda.Agda.Builtin.Bool");
var z_jAgda_Agda_Primitive = require("jAgda.Agda.Primitive");

exports["Nat"] = {};
exports["Nat"]["zero"] = a => a["zero"]();
exports["Nat"]["suc"] = a => b => b["suc"](a);
exports["_+_"] = undefined;
exports["_-_"] = agdaRTS.primNatMinus;
exports["_*_"] = undefined;
exports["_==_"] = undefined;
exports["_<_"] = undefined;
exports["div-helper"] = undefined;
exports["mod-helper"] = undefined;
