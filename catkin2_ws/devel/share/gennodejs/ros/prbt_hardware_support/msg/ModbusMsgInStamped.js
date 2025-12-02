// Auto-generated. Do not edit!

// (in-package prbt_hardware_support.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ModbusMsgInStamped {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.holding_registers = null;
      this.disconnect = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('holding_registers')) {
        this.holding_registers = initObj.holding_registers
      }
      else {
        this.holding_registers = new std_msgs.msg.UInt16MultiArray();
      }
      if (initObj.hasOwnProperty('disconnect')) {
        this.disconnect = initObj.disconnect
      }
      else {
        this.disconnect = new std_msgs.msg.Bool();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ModbusMsgInStamped
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [holding_registers]
    bufferOffset = std_msgs.msg.UInt16MultiArray.serialize(obj.holding_registers, buffer, bufferOffset);
    // Serialize message field [disconnect]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.disconnect, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ModbusMsgInStamped
    let len;
    let data = new ModbusMsgInStamped(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [holding_registers]
    data.holding_registers = std_msgs.msg.UInt16MultiArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [disconnect]
    data.disconnect = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += std_msgs.msg.UInt16MultiArray.getMessageSize(object.holding_registers);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'prbt_hardware_support/ModbusMsgInStamped';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1023ba57fc2f9bcbdf47284c68c44a57';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    std_msgs/UInt16MultiArray holding_registers
    std_msgs/Bool disconnect
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: std_msgs/UInt16MultiArray
    # Please look at the MultiArrayLayout message definition for
    # documentation on all multiarrays.
    
    MultiArrayLayout  layout        # specification of data layout
    uint16[]            data        # array of data
    
    
    ================================================================================
    MSG: std_msgs/MultiArrayLayout
    # The multiarray declares a generic multi-dimensional array of a
    # particular data type.  Dimensions are ordered from outer most
    # to inner most.
    
    MultiArrayDimension[] dim # Array of dimension properties
    uint32 data_offset        # padding elements at front of data
    
    # Accessors should ALWAYS be written in terms of dimension stride
    # and specified outer-most dimension first.
    # 
    # multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
    #
    # A standard, 3-channel 640x480 image with interleaved color channels
    # would be specified as:
    #
    # dim[0].label  = "height"
    # dim[0].size   = 480
    # dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
    # dim[1].label  = "width"
    # dim[1].size   = 640
    # dim[1].stride = 3*640 = 1920
    # dim[2].label  = "channel"
    # dim[2].size   = 3
    # dim[2].stride = 3
    #
    # multiarray(i,j,k) refers to the ith row, jth column, and kth channel.
    
    ================================================================================
    MSG: std_msgs/MultiArrayDimension
    string label   # label of given dimension
    uint32 size    # size of given dimension (in type units)
    uint32 stride  # stride of given dimension
    ================================================================================
    MSG: std_msgs/Bool
    bool data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ModbusMsgInStamped(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.holding_registers !== undefined) {
      resolved.holding_registers = std_msgs.msg.UInt16MultiArray.Resolve(msg.holding_registers)
    }
    else {
      resolved.holding_registers = new std_msgs.msg.UInt16MultiArray()
    }

    if (msg.disconnect !== undefined) {
      resolved.disconnect = std_msgs.msg.Bool.Resolve(msg.disconnect)
    }
    else {
      resolved.disconnect = new std_msgs.msg.Bool()
    }

    return resolved;
    }
};

module.exports = ModbusMsgInStamped;
