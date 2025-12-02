;; Auto-generated. Do not edit!


(when (boundp 'tester_package::GenerateAngles)
  (if (not (find-package "TESTER_PACKAGE"))
    (make-package "TESTER_PACKAGE"))
  (shadow 'GenerateAngles (find-package "TESTER_PACKAGE")))
(unless (find-package "TESTER_PACKAGE::GENERATEANGLES")
  (make-package "TESTER_PACKAGE::GENERATEANGLES"))
(unless (find-package "TESTER_PACKAGE::GENERATEANGLESREQUEST")
  (make-package "TESTER_PACKAGE::GENERATEANGLESREQUEST"))
(unless (find-package "TESTER_PACKAGE::GENERATEANGLESRESPONSE")
  (make-package "TESTER_PACKAGE::GENERATEANGLESRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass tester_package::GenerateAnglesRequest
  :super ros::object
  :slots (_pcd ))

(defmethod tester_package::GenerateAnglesRequest
  (:init
   (&key
    ((:pcd __pcd) (instance sensor_msgs::PointCloud2 :init))
    )
   (send-super :init)
   (setq _pcd __pcd)
   self)
  (:pcd
   (&rest __pcd)
   (if (keywordp (car __pcd))
       (send* _pcd __pcd)
     (progn
       (if __pcd (setq _pcd (car __pcd)))
       _pcd)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/PointCloud2 _pcd
    (send _pcd :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2 _pcd
       (send _pcd :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2 _pcd
     (send _pcd :deserialize buf ptr-) (incf ptr- (send _pcd :serialization-length))
   ;;
   self)
  )

(defclass tester_package::GenerateAnglesResponse
  :super ros::object
  :slots (_angle ))

(defmethod tester_package::GenerateAnglesResponse
  (:init
   (&key
    ((:angle __angle) 0.0)
    )
   (send-super :init)
   (setq _angle (float __angle))
   self)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; float64 _angle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass tester_package::GenerateAngles
  :super ros::object
  :slots ())

(setf (get tester_package::GenerateAngles :md5sum-) "ce1f27368366dc4003cc92427b732647")
(setf (get tester_package::GenerateAngles :datatype-) "tester_package/GenerateAngles")
(setf (get tester_package::GenerateAngles :request) tester_package::GenerateAnglesRequest)
(setf (get tester_package::GenerateAngles :response) tester_package::GenerateAnglesResponse)

(defmethod tester_package::GenerateAnglesRequest
  (:response () (instance tester_package::GenerateAnglesResponse :init)))

(setf (get tester_package::GenerateAnglesRequest :md5sum-) "ce1f27368366dc4003cc92427b732647")
(setf (get tester_package::GenerateAnglesRequest :datatype-) "tester_package/GenerateAnglesRequest")
(setf (get tester_package::GenerateAnglesRequest :definition-)
      "sensor_msgs/PointCloud2 pcd

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

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
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field
---
float64 angle
")

(setf (get tester_package::GenerateAnglesResponse :md5sum-) "ce1f27368366dc4003cc92427b732647")
(setf (get tester_package::GenerateAnglesResponse :datatype-) "tester_package/GenerateAnglesResponse")
(setf (get tester_package::GenerateAnglesResponse :definition-)
      "sensor_msgs/PointCloud2 pcd

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

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
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field
---
float64 angle
")



(provide :tester_package/GenerateAngles "ce1f27368366dc4003cc92427b732647")


