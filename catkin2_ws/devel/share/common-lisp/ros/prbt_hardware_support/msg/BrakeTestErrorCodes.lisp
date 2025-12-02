; Auto-generated. Do not edit!


(cl:in-package prbt_hardware_support-msg)


;//! \htmlinclude BrakeTestErrorCodes.msg.html

(cl:defclass <BrakeTestErrorCodes> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BrakeTestErrorCodes (<BrakeTestErrorCodes>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BrakeTestErrorCodes>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BrakeTestErrorCodes)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name prbt_hardware_support-msg:<BrakeTestErrorCodes> is deprecated: use prbt_hardware_support-msg:BrakeTestErrorCodes instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <BrakeTestErrorCodes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader prbt_hardware_support-msg:value-val is deprecated.  Use prbt_hardware_support-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<BrakeTestErrorCodes>)))
    "Constants for message type '<BrakeTestErrorCodes>"
  '((:STATUS_UNKNOWN . 0)
    (:STATUS_PERFORMING . 1)
    (:STATUS_SUCCESS . 2)
    (:STATUS_NO_SUCCESS . 3)
    (:STATUS_NO_CONTROL . 4)
    (:TRIGGER_BRAKETEST_SERVICE_FAILURE . 50)
    (:GET_NODE_NAMES_FAILURE . 51)
    (:GET_DURATION_FAILURE . 52)
    (:GET_STATUS_FAILURE . 53)
    (:START_BRAKE_TEST_FAILURE . 54)
    (:BRAKETEST_ALREADY_EXECUTING . 70)
    (:ROBOT_MOTION_DETECTED . 71)
    (:FAILURE . 99))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'BrakeTestErrorCodes)))
    "Constants for message type 'BrakeTestErrorCodes"
  '((:STATUS_UNKNOWN . 0)
    (:STATUS_PERFORMING . 1)
    (:STATUS_SUCCESS . 2)
    (:STATUS_NO_SUCCESS . 3)
    (:STATUS_NO_CONTROL . 4)
    (:TRIGGER_BRAKETEST_SERVICE_FAILURE . 50)
    (:GET_NODE_NAMES_FAILURE . 51)
    (:GET_DURATION_FAILURE . 52)
    (:GET_STATUS_FAILURE . 53)
    (:START_BRAKE_TEST_FAILURE . 54)
    (:BRAKETEST_ALREADY_EXECUTING . 70)
    (:ROBOT_MOTION_DETECTED . 71)
    (:FAILURE . 99))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BrakeTestErrorCodes>) ostream)
  "Serializes a message object of type '<BrakeTestErrorCodes>"
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BrakeTestErrorCodes>) istream)
  "Deserializes a message object of type '<BrakeTestErrorCodes>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BrakeTestErrorCodes>)))
  "Returns string type for a message object of type '<BrakeTestErrorCodes>"
  "prbt_hardware_support/BrakeTestErrorCodes")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BrakeTestErrorCodes)))
  "Returns string type for a message object of type 'BrakeTestErrorCodes"
  "prbt_hardware_support/BrakeTestErrorCodes")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BrakeTestErrorCodes>)))
  "Returns md5sum for a message object of type '<BrakeTestErrorCodes>"
  "3d94689e95ce8a25b9e6555b0af70579")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BrakeTestErrorCodes)))
  "Returns md5sum for a message object of type 'BrakeTestErrorCodes"
  "3d94689e95ce8a25b9e6555b0af70579")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BrakeTestErrorCodes>)))
  "Returns full string definition for message of type '<BrakeTestErrorCodes>"
  (cl:format cl:nil "#~%# Copyright (c) 2019 Pilz GmbH & Co. KG~%#~%# This program is free software: you can redistribute it and/or modify~%# it under the terms of the GNU Lesser General Public License as published by~%# the Free Software Foundation, either version 3 of the License, or~%# (at your option) any later version.~%#~%# This program is distributed in the hope that it will be useful,~%# but WITHOUT ANY WARRANTY; without even the implied warranty of~%# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%# GNU Lesser General Public License for more details.~%#~%# You should have received a copy of the GNU Lesser General Public License~%# along with this program.  If not, see <http://www.gnu.org/licenses/>.~%~%int8 value~%~%# values of CANopen object brake_test_status, see~%# https://www.pilz.com/download/open/PRBT_6_Operat_Manual_1004685-EN-02.pdf (p.100)~%int8 STATUS_UNKNOWN = 0~%int8 STATUS_PERFORMING = 1~%int8 STATUS_SUCCESS = 2~%int8 STATUS_NO_SUCCESS = 3~%int8 STATUS_NO_CONTROL = 4~%~%# service call failures~%int8 TRIGGER_BRAKETEST_SERVICE_FAILURE = 50~%int8 GET_NODE_NAMES_FAILURE  = 51~%int8 GET_DURATION_FAILURE = 52~%int8 GET_STATUS_FAILURE = 53~%int8 START_BRAKE_TEST_FAILURE = 54~%~%# other reasons for blocking the execution of brake tests~%int8 BRAKETEST_ALREADY_EXECUTING = 70~%int8 ROBOT_MOTION_DETECTED = 71~%~%# other~%int8 FAILURE = 99~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BrakeTestErrorCodes)))
  "Returns full string definition for message of type 'BrakeTestErrorCodes"
  (cl:format cl:nil "#~%# Copyright (c) 2019 Pilz GmbH & Co. KG~%#~%# This program is free software: you can redistribute it and/or modify~%# it under the terms of the GNU Lesser General Public License as published by~%# the Free Software Foundation, either version 3 of the License, or~%# (at your option) any later version.~%#~%# This program is distributed in the hope that it will be useful,~%# but WITHOUT ANY WARRANTY; without even the implied warranty of~%# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%# GNU Lesser General Public License for more details.~%#~%# You should have received a copy of the GNU Lesser General Public License~%# along with this program.  If not, see <http://www.gnu.org/licenses/>.~%~%int8 value~%~%# values of CANopen object brake_test_status, see~%# https://www.pilz.com/download/open/PRBT_6_Operat_Manual_1004685-EN-02.pdf (p.100)~%int8 STATUS_UNKNOWN = 0~%int8 STATUS_PERFORMING = 1~%int8 STATUS_SUCCESS = 2~%int8 STATUS_NO_SUCCESS = 3~%int8 STATUS_NO_CONTROL = 4~%~%# service call failures~%int8 TRIGGER_BRAKETEST_SERVICE_FAILURE = 50~%int8 GET_NODE_NAMES_FAILURE  = 51~%int8 GET_DURATION_FAILURE = 52~%int8 GET_STATUS_FAILURE = 53~%int8 START_BRAKE_TEST_FAILURE = 54~%~%# other reasons for blocking the execution of brake tests~%int8 BRAKETEST_ALREADY_EXECUTING = 70~%int8 ROBOT_MOTION_DETECTED = 71~%~%# other~%int8 FAILURE = 99~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BrakeTestErrorCodes>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BrakeTestErrorCodes>))
  "Converts a ROS message object to a list"
  (cl:list 'BrakeTestErrorCodes
    (cl:cons ':value (value msg))
))
