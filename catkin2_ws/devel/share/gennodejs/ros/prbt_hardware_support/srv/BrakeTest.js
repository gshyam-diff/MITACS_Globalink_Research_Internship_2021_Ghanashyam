// Auto-generated. Do not edit!

// (in-package prbt_hardware_support.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let BrakeTestErrorCodes = require('../msg/BrakeTestErrorCodes.js');

//-----------------------------------------------------------

class BrakeTestRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BrakeTestRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BrakeTestRequest
    let len;
    let data = new BrakeTestRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'prbt_hardware_support/BrakeTestRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
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
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BrakeTestRequest(null);
    return resolved;
    }
};

class BrakeTestResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.error_code = null;
      this.error_msg = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = new BrakeTestErrorCodes();
      }
      if (initObj.hasOwnProperty('error_msg')) {
        this.error_msg = initObj.error_msg
      }
      else {
        this.error_msg = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BrakeTestResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = BrakeTestErrorCodes.serialize(obj.error_code, buffer, bufferOffset);
    // Serialize message field [error_msg]
    bufferOffset = _serializer.string(obj.error_msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BrakeTestResponse
    let len;
    let data = new BrakeTestResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = BrakeTestErrorCodes.deserialize(buffer, bufferOffset);
    // Deserialize message field [error_msg]
    data.error_msg = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.error_msg);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'prbt_hardware_support/BrakeTestResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8aa3acf608ed7e76565a588499702b4f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    # Number representing failure of the brake test
    BrakeTestErrorCodes error_code
    
    # Contains message explaining failure of the brake test execution
    string error_msg
    
    
    ================================================================================
    MSG: prbt_hardware_support/BrakeTestErrorCodes
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
    const resolved = new BrakeTestResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = BrakeTestErrorCodes.Resolve(msg.error_code)
    }
    else {
      resolved.error_code = new BrakeTestErrorCodes()
    }

    if (msg.error_msg !== undefined) {
      resolved.error_msg = msg.error_msg;
    }
    else {
      resolved.error_msg = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: BrakeTestRequest,
  Response: BrakeTestResponse,
  md5sum() { return '8aa3acf608ed7e76565a588499702b4f'; },
  datatype() { return 'prbt_hardware_support/BrakeTest'; }
};
