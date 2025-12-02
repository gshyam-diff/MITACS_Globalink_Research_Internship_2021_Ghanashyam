// Auto-generated. Do not edit!

// (in-package prbt_hardware_support.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ModbusRegisterBlock = require('../msg/ModbusRegisterBlock.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class WriteModbusRegisterRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.holding_register_block = null;
    }
    else {
      if (initObj.hasOwnProperty('holding_register_block')) {
        this.holding_register_block = initObj.holding_register_block
      }
      else {
        this.holding_register_block = new ModbusRegisterBlock();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WriteModbusRegisterRequest
    // Serialize message field [holding_register_block]
    bufferOffset = ModbusRegisterBlock.serialize(obj.holding_register_block, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WriteModbusRegisterRequest
    let len;
    let data = new WriteModbusRegisterRequest(null);
    // Deserialize message field [holding_register_block]
    data.holding_register_block = ModbusRegisterBlock.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ModbusRegisterBlock.getMessageSize(object.holding_register_block);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'prbt_hardware_support/WriteModbusRegisterRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0851f7933b92fdd8b26651e23a384c83';
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
    
    ModbusRegisterBlock holding_register_block
    
    
    ================================================================================
    MSG: prbt_hardware_support/ModbusRegisterBlock
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
    
    # Defines the start index of the Modbus register block. A block can consist
    # of one or more registers.
    uint16 start_idx
    
    # The values of the registers (in order).
    uint16[] values
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WriteModbusRegisterRequest(null);
    if (msg.holding_register_block !== undefined) {
      resolved.holding_register_block = ModbusRegisterBlock.Resolve(msg.holding_register_block)
    }
    else {
      resolved.holding_register_block = new ModbusRegisterBlock()
    }

    return resolved;
    }
};

class WriteModbusRegisterResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WriteModbusRegisterResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WriteModbusRegisterResponse
    let len;
    let data = new WriteModbusRegisterResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'prbt_hardware_support/WriteModbusRegisterResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WriteModbusRegisterResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: WriteModbusRegisterRequest,
  Response: WriteModbusRegisterResponse,
  md5sum() { return '02822f7d1076b1b9eb20913904f86345'; },
  datatype() { return 'prbt_hardware_support/WriteModbusRegister'; }
};
