"use strict";

var nacl_util = require('tweetnacl-util');

exports.encodeBase64 = nacl_util.encodeBase64;

exports.decodeBase64Impl = function (s) {
  var r;
  try {
    r = nacl_util.decodeBase64(s);
  } catch(e) {
    console.warn("Base64 decoding error: ", e, ", data: ", s);
    r = null;
  }

  return r;
};
