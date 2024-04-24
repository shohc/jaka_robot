
"use strict";

let ServoMoveEnable = require('./ServoMoveEnable.js')
let SetIO = require('./SetIO.js')
let GetIK = require('./GetIK.js')
let SetUserFrame = require('./SetUserFrame.js')
let ServoMove = require('./ServoMove.js')
let SetCollision = require('./SetCollision.js')
let ClearError = require('./ClearError.js')
let Move = require('./Move.js')
let SetPayload = require('./SetPayload.js')
let GetFK = require('./GetFK.js')
let GetIO = require('./GetIO.js')
let SetTcpFrame = require('./SetTcpFrame.js')

module.exports = {
  ServoMoveEnable: ServoMoveEnable,
  SetIO: SetIO,
  GetIK: GetIK,
  SetUserFrame: SetUserFrame,
  ServoMove: ServoMove,
  SetCollision: SetCollision,
  ClearError: ClearError,
  Move: Move,
  SetPayload: SetPayload,
  GetFK: GetFK,
  GetIO: GetIO,
  SetTcpFrame: SetTcpFrame,
};
