; Auto-generated. Do not edit!


(cl:in-package prbt_hardware_support-msg)


;//! \htmlinclude ModbusMsgInStamped.msg.html

(cl:defclass <ModbusMsgInStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (holding_registers
    :reader holding_registers
    :initarg :holding_registers
    :type std_msgs-msg:UInt16MultiArray
    :initform (cl:make-instance 'std_msgs-msg:UInt16MultiArray))
   (disconnect
    :reader disconnect
    :initarg :disconnect
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass ModbusMsgInStamped (<ModbusMsgInStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModbusMsgInStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModbusMsgInStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name prbt_hardware_support-msg:<ModbusMsgInStamped> is deprecated: use prbt_hardware_support-msg:ModbusMsgInStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ModbusMsgInStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader prbt_hardware_support-msg:header-val is deprecated.  Use prbt_hardware_support-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'holding_registers-val :lambda-list '(m))
(cl:defmethod holding_registers-val ((m <ModbusMsgInStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader prbt_hardware_support-msg:holding_registers-val is deprecated.  Use prbt_hardware_support-msg:holding_registers instead.")
  (holding_registers m))

(cl:ensure-generic-function 'disconnect-val :lambda-list '(m))
(cl:defmethod disconnect-val ((m <ModbusMsgInStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader prbt_hardware_support-msg:disconnect-val is deprecated.  Use prbt_hardware_support-msg:disconnect instead.")
  (disconnect m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModbusMsgInStamped>) ostream)
  "Serializes a message object of type '<ModbusMsgInStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'holding_registers) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'disconnect) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModbusMsgInStamped>) istream)
  "Deserializes a message object of type '<ModbusMsgInStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'holding_registers) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'disconnect) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModbusMsgInStamped>)))
  "Returns string type for a message object of type '<ModbusMsgInStamped>"
  "prbt_hardware_support/ModbusMsgInStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModbusMsgInStamped)))
  "Returns string type for a message object of type 'ModbusMsgInStamped"
  "prbt_hardware_support/ModbusMsgInStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModbusMsgInStamped>)))
  "Returns md5sum for a message object of type '<ModbusMsgInStamped>"
  "1023ba57fc2f9bcbdf47284c68c44a57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModbusMsgInStamped)))
  "Returns md5sum for a message object of type 'ModbusMsgInStamped"
  "1023ba57fc2f9bcbdf47284c68c44a57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModbusMsgInStamped>)))
  "Returns full string definition for message of type '<ModbusMsgInStamped>"
  (cl:format cl:nil "std_msgs/Header header~%std_msgs/UInt16MultiArray holding_registers~%std_msgs/Bool disconnect~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%uint16[]            data        # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModbusMsgInStamped)))
  "Returns full string definition for message of type 'ModbusMsgInStamped"
  (cl:format cl:nil "std_msgs/Header header~%std_msgs/UInt16MultiArray holding_registers~%std_msgs/Bool disconnect~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%uint16[]            data        # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModbusMsgInStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'holding_registers))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'disconnect))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModbusMsgInStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'ModbusMsgInStamped
    (cl:cons ':header (header msg))
    (cl:cons ':holding_registers (holding_registers msg))
    (cl:cons ':disconnect (disconnect msg))
))
