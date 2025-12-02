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

class ModbusRegisterBlock {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start_idx = null;
      this.values = null;
    }
    else {
      if (initObj.hasOwnProperty('start_idx')) {
        this.start_idx = initObj.start_idx
      }
      else {
        this.start_idx = 0;
      }
      if (initObj.hasOwnProperty('values')) {
        this.values = initObj.values
      }
      else {
        this.values = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ModbusRegisterBlock
    // Serialize message field [start_idx]
    bufferOffset = _serializer.uint16(obj.start_idx, buffer, bufferOffset);
    // Serialize message field [values]
    bufferOffset = _arraySerializer.uint16(obj.values, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ModbusRegisterBlock
    let len;
    let data = new ModbusRegisterBlock(null);
    // Deserialize message field [start_idx]
    data.start_idx = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [values]
    data.values = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 2 * object.values.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'prbt_hardware_support/ModbusRegisterBlock';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fe195cfcfc87bb5e9602528590f29a5d';
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
    const resolved = new ModbusRegisterBlock(null);
    if (msg.start_idx !== undefined) {
      resolved.start_idx = msg.start_idx;
    }
    else {
      resolved.start_idx = 0
    }

    if (msg.values !== undefined) {
      resolved.values = msg.values;
    }
    else {
      resolved.values = []
    }

    return resolved;
    }
};

module.exports = ModbusRegisterBlock;
