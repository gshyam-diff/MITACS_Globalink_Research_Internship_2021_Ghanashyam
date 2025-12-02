;; Auto-generated. Do not edit!


(when (boundp 'tester_package::PcdAngle)
  (if (not (find-package "TESTER_PACKAGE"))
    (make-package "TESTER_PACKAGE"))
  (shadow 'PcdAngle (find-package "TESTER_PACKAGE")))
(unless (find-package "TESTER_PACKAGE::PCDANGLE")
  (make-package "TESTER_PACKAGE::PCDANGLE"))

(in-package "ROS")
;;//! \htmlinclude PcdAngle.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass tester_package::PcdAngle
  :super ros::object
  :slots (_pcd _angle ))

(defmethod tester_package::PcdAngle
  (:init
   (&key
    ((:pcd __pcd) (instance sensor_msgs::PointCloud2 :init))
    ((:angle __angle) 0.0)
    )
   (send-super :init)
   (setq _pcd __pcd)
   (setq _angle (float __angle))
   self)
  (:pcd
   (&rest __pcd)
   (if (keywordp (car __pcd))
       (send* _pcd __pcd)
     (progn
       (if __pcd (setq _pcd (car __pcd)))
       _pcd)))
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/PointCloud2 _pcd
    (send _pcd :serialization-length)
    ;; float64 _angle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2 _pcd
       (send _pcd :serialize s)
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2 _pcd
     (send _pcd :deserialize buf ptr-) (incf ptr- (send _pcd :serialization-length))
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get tester_package::PcdAngle :md5sum-) "bc289c234e29e40307c069564eeae251")
(setf (get tester_package::PcdAngle :datatype-) "tester_package/PcdAngle")
(setf (get tester_package::PcdAngle :definition-)
      "sensor_msgs/PointCloud2 pcd
float64 angle
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

")



(provide :tester_package/PcdAngle "bc289c234e29e40307c069564eeae251")


