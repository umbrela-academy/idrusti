var agdaRTS = require("agda-rts");

var z_jAgda_Agda_Builtin_Bool = require("jAgda.Agda.Builtin.Bool");
var z_jAgda_Agda_Builtin_Char = require("jAgda.Agda.Builtin.Char");
var z_jAgda_Agda_Builtin_List = require("jAgda.Agda.Builtin.List");
var z_jAgda_Agda_Builtin_Maybe = require("jAgda.Agda.Builtin.Maybe");
var z_jAgda_Agda_Builtin_Nat = require("jAgda.Agda.Builtin.Nat");
var z_jAgda_Agda_Builtin_Sigma = require("jAgda.Agda.Builtin.Sigma");
var z_jAgda_Agda_Primitive = require("jAgda.Agda.Primitive");

exports["String"] = undefined;
exports["primStringUncons"] = function(x) { if (x === "") { return z_jAgda_Agda_Builtin_Maybe["Maybe"]["nothing"]; }; return z_jAgda_Agda_Builtin_Maybe["Maybe"]["just"](z_jAgda_Agda_Builtin_Sigma["_,_"](x.charAt(0))(x.slice(1))); };
exports["primStringToList"] = function(x) { return x.split(""); };
exports["primStringFromList"] = function(x) { return x.join(""); };
exports["primStringAppend"] = function(x) { return function(y) { return x+y; }; };
exports["primStringEquality"] = function(x) { return function(y) { return x===y; }; };
exports["primShowChar"] = function(x) { return JSON.stringify(x); };
exports["primShowString"] = function(x) { return JSON.stringify(x); };
exports["primShowNat"] = function(x) { return JSON.stringify(x); };
