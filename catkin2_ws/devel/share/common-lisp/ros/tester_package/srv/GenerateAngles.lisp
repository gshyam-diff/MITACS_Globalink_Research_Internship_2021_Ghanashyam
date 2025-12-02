; Auto-generated. Do not edit!


(cl:in-package tester_package-srv)


;//! \htmlinclude GenerateAngles-request.msg.html

(cl:defclass <GenerateAngles-request> (roslisp-msg-protocol:ros-message)
  ((pcd
    :reader pcd
    :initarg :pcd
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass GenerateAngles-request (<GenerateAngles-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GenerateAngles-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GenerateAngles-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tester_package-srv:<GenerateAngles-request> is deprecated: use tester_package-srv:GenerateAngles-request instead.")))

(cl:ensure-generic-function 'pcd-val :lambda-list '(m))
(cl:defmethod pcd-val ((m <GenerateAngles-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tester_package-srv:pcd-val is deprecated.  Use tester_package-srv:pcd instead.")
  (pcd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GenerateAngles-request>) ostream)
  "Serializes a message object of type '<GenerateAngles-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pcd) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GenerateAngles-request>) istream)
  "Deserializes a message object of type '<GenerateAngles-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pcd) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GenerateAngles-request>)))
  "Returns string type for a service object of type '<GenerateAngles-request>"
  "tester_package/GenerateAnglesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenerateAngles-request)))
  "Returns string type for a service object of type 'GenerateAngles-request"
  "tester_package/GenerateAnglesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GenerateAngles-request>)))
  "Returns md5sum for a message object of type '<GenerateAngles-request>"
  "ce1f27368366dc4003cc92427b732647")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GenerateAngles-request)))
  "Returns md5sum for a message object of type 'GenerateAngles-request"
  "ce1f27368366dc4003cc92427b732647")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GenerateAngles-request>)))
  "Returns full string definition for message of type '<GenerateAngles-request>"
  (cl:format cl:nil "sensor_msgs/PointCloud2 pcd~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GenerateAngles-request)))
  "Returns full string definition for message of type 'GenerateAngles-request"
  (cl:format cl:nil "sensor_msgs/PointCloud2 pcd~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GenerateAngles-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pcd))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GenerateAngles-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GenerateAngles-request
    (cl:cons ':pcd (pcd msg))
))
;//! \htmlinclude GenerateAngles-response.msg.html

(cl:defclass <GenerateAngles-response> (roslisp-msg-protocol:ros-message)
  ((angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass GenerateAngles-response (<GenerateAngles-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GenerateAngles-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GenerateAngles-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tester_package-srv:<GenerateAngles-response> is deprecated: use tester_package-srv:GenerateAngles-response instead.")))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <GenerateAngles-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tester_package-srv:angle-val is deprecated.  Use tester_package-srv:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GenerateAngles-response>) ostream)
  "Serializes a message object of type '<GenerateAngles-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GenerateAngles-response>) istream)
  "Deserializes a message object of type '<GenerateAngles-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GenerateAngles-response>)))
  "Returns string type for a service object of type '<GenerateAngles-response>"
  "tester_package/GenerateAnglesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenerateAngles-response)))
  "Returns string type for a service object of type 'GenerateAngles-response"
  "tester_package/GenerateAnglesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GenerateAngles-response>)))
  "Returns md5sum for a message object of type '<GenerateAngles-response>"
  "ce1f27368366dc4003cc92427b732647")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GenerateAngles-response)))
  "Returns md5sum for a message object of type 'GenerateAngles-response"
  "ce1f27368366dc4003cc92427b732647")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GenerateAngles-response>)))
  "Returns full string definition for message of type '<GenerateAngles-response>"
  (cl:format cl:nil "float64 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GenerateAngles-response)))
  "Returns full string definition for message of type 'GenerateAngles-response"
  (cl:format cl:nil "float64 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GenerateAngles-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GenerateAngles-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GenerateAngles-response
    (cl:cons ':angle (angle msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GenerateAngles)))
  'GenerateAngles-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GenerateAngles)))
  'GenerateAngles-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenerateAngles)))
  "Returns string type for a service object of type '<GenerateAngles>"
  "tester_package/GenerateAngles")