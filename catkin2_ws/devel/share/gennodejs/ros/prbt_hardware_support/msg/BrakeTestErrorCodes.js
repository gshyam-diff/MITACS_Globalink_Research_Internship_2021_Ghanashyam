// Auto-generated. Do not edit!

// (in-package prbt_hardware_support.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class BrakeTestErrorCodes {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BrakeTestErrorCodes
    // Serialize message field [value]
    bufferOffset = _serializer.int8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BrakeTestErrorCodes
    let len;
    let data = new BrakeTestErrorCodes(null);
    // Deserialize message field [value]
    data.value = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'prbt_hardware_support/BrakeTestErrorCodes';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3d94689e95ce8a25b9e6555b0af70579';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # Copyright (c) 2019 Pilz GmbH & Co. KG
    #
    # This program is free software: you can redistribute it and/or modify
    # it under the terms of the GNU Lesser General Public License as published by
    # the Free Software Foundation, either version 3 of the License, or
    # (at your option) any later version.
    #
    # This program is distributed in the hope that it will be useful,
    # but WITHOUT ANY WARRANTY; without even the implied warranty of
    # MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    # GNU Lesser General Public License for more details.
    #
    # You should have received a copy of the GNU Lesser General Public License
    # along with this program.  If not, see <http://www.gnu.org/licenses/>.
    
    int8 value
    
    # values of CANopen object brake_test_status, see
    # https://www.pilz.com/download/open/PRBT_6_Operat_Manual_1004685-EN-02.pdf (p.100)
    int8 STATUS_UNKNOWN = 0
    int8 STATUS_PERFORMING = 1
    int8 STATUS_SUCCESS = 2
    int8 STATUS_NO_SUCCESS = 3
    int8 STATUS_NO_CONTROL = 4
    
    # service call failures
    int8 TRIGGER_BRAKETEST_SERVICE_FAILURE = 50
    int8 GET_NODE_NAMES_FAILURE  = 51
    int8 GET_DURATION_FAILURE = 52
    int8 GET_STATUS_FAILURE = 53
    int8 START_BRAKE_TEST_FAILURE = 54
    
    # other reasons for blocking the execution of brake tests
    int8 BRAKETEST_ALREADY_EXECUTING = 70
    int8 ROBOT_MOTION_DETECTED = 71
    
    # other
    int8 FAILURE = 99
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BrakeTestErrorCodes(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    return resolved;
    }
};

// Constants for message
BrakeTestErrorCodes.Constants = {
  STATUS_UNKNOWN: 0,
  STATUS_PERFORMING: 1,
  STATUS_SUCCESS: 2,
  STATUS_NO_SUCCESS: 3,
  STATUS_NO_CONTROL: 4,
  TRIGGER_BRAKETEST_SERVICE_FAILURE: 50,
  GET_NODE_NAMES_FAILURE: 51,
  GET_DURATION_FAILURE: 52,
  GET_STATUS_FAILURE: 53,
  START_BRAKE_TEST_FAILURE: 54,
  BRAKETEST_ALREADY_EXECUTING: 70,
  ROBOT_MOTION_DETECTED: 71,
  FAILURE: 99,
}

module.exports = BrakeTestErrorCodes;
