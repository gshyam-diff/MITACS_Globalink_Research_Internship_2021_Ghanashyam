
"use strict";

let SendBrakeTestResult = require('./SendBrakeTestResult.js')
let BrakeTest = require('./BrakeTest.js')
let WriteModbusRegister = require('./WriteModbusRegister.js')

module.exports = {
  SendBrakeTestResult: SendBrakeTestResult,
  BrakeTest: BrakeTest,
  WriteModbusRegister: WriteModbusRegister,
};
