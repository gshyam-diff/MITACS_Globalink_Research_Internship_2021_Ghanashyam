; Auto-generated. Do not edit!


(cl:in-package prbt_hardware_support-srv)


;//! \htmlinclude BrakeTest-request.msg.html

(cl:defclass <BrakeTest-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass BrakeTest-request (<BrakeTest-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BrakeTest-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BrakeTest-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name prbt_hardware_support-srv:<BrakeTest-request> is deprecated: use prbt_hardware_support-srv:BrakeTest-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BrakeTest-request>) ostream)
  "Serializes a message object of type '<BrakeTest-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BrakeTest-request>) istream)
  "Deserializes a message object of type '<BrakeTest-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BrakeTest-request>)))
  "Returns string type for a service object of type '<BrakeTest-request>"
  "prbt_hardware_support/BrakeTestRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BrakeTest-request)))
  "Returns string type for a service object of type 'BrakeTest-request"
  "prbt_hardware_support/BrakeTestRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BrakeTest-request>)))
  "Returns md5sum for a message object of type '<BrakeTest-request>"
  "8aa3acf608ed7e76565a588499702b4f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BrakeTest-request)))
  "Returns md5sum for a message object of type 'BrakeTest-request"
  "8aa3acf608ed7e76565a588499702b4f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BrakeTest-request>)))
  "Returns full string definition for message of type '<BrakeTest-request>"
  (cl:format cl:nil "#~%# Copyright (c) 2019 Pilz GmbH & Co. KG~%#~%# This program is free software: you can redistribute it and/or modify~%# it under the terms of the GNU Lesser General Public License as published by~%# the Free Software Foundation, either version 3 of the License, or~%# (at your option) any later version.~%#~%# This program is distributed in the hope that it will be useful,~%# but WITHOUT ANY WARRANTY; without even the implied warranty of~%# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%# GNU Lesser General Public License for more details.~%#~%# You should have received a copy of the GNU Lesser General Public License~%# along with this program.  If not, see <http://www.gnu.org/licenses/>.~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BrakeTest-request)))
  "Returns full string definition for message of type 'BrakeTest-request"
  (cl:format cl:nil "#~%# Copyright (c) 2019 Pilz GmbH & Co. KG~%#~%# This program is free software: you can redistribute it and/or modify~%# it under the terms of the GNU Lesser General Public License as published by~%# the Free Software Foundation, either version 3 of the License, or~%# (at your option) any later version.~%#~%# This program is distributed in the hope that it will be useful,~%# but WITHOUT ANY WARRANTY; without even the implied warranty of~%# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%# GNU Lesser General Public License for more details.~%#~%# You should have received a copy of the GNU Lesser General Public License~%# along with this program.  If not, see <http://www.gnu.org/licenses/>.~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BrakeTest-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BrakeTest-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BrakeTest-request
))
;//! \htmlinclude BrakeTest-response.msg.html

(cl:defclass <BrakeTest-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (error_code
    :reader error_code
    :initarg :error_code
    :type prbt_hardware_support-msg:BrakeTestErrorCodes
    :initform (cl:make-instance 'prbt_hardware_support-msg:BrakeTestErrorCodes))
   (error_msg
    :reader error_msg
    :initarg :error_msg
    :type cl:string
    :initform ""))
)

(cl:defclass BrakeTest-response (<BrakeTest-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BrakeTest-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BrakeTest-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name prbt_hardware_support-srv:<BrakeTest-response> is deprecated: use prbt_hardware_support-srv:BrakeTest-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <BrakeTest-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader prbt_hardware_support-srv:success-val is deprecated.  Use prbt_hardware_support-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <BrakeTest-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader prbt_hardware_support-srv:error_code-val is deprecated.  Use prbt_hardware_support-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'error_msg-val :lambda-list '(m))
(cl:defmethod error_msg-val ((m <BrakeTest-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader prbt_hardware_support-srv:error_msg-val is deprecated.  Use prbt_hardware_support-srv:error_msg instead.")
  (error_msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BrakeTest-response>) ostream)
  "Serializes a message object of type '<BrakeTest-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'error_code) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BrakeTest-response>) istream)
  "Deserializes a message object of type '<BrakeTest-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'error_code) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BrakeTest-response>)))
  "Returns string type for a service object of type '<BrakeTest-response>"
  "prbt_hardware_support/BrakeTestResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BrakeTest-response)))
  "Returns string type for a service object of type 'BrakeTest-response"
  "prbt_hardware_support/BrakeTestResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BrakeTest-response>)))
  "Returns md5sum for a message object of type '<BrakeTest-response>"
  "8aa3acf608ed7e76565a588499702b4f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BrakeTest-response)))
  "Returns md5sum for a message object of type 'BrakeTest-response"
  "8aa3acf608ed7e76565a588499702b4f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BrakeTest-response>)))
  "Returns full string definition for message of type '<BrakeTest-response>"
  (cl:format cl:nil "bool success~%~%# Number representing failure of the brake test~%BrakeTestErrorCodes error_code~%~%# Contains message explaining failure of the brake test execution~%string error_msg~%~%~%================================================================================~%MSG: prbt_hardware_support/BrakeTestErrorCodes~%#~%# Copyright (c) 2019 Pilz GmbH & Co. KG~%#~%# This program is free software: you can redistribute it and/or modify~%# it under the terms of the GNU Lesser General Public License as published by~%# the Free Software Foundation, either version 3 of the License, or~%# (at your option) any later version.~%#~%# This program is distributed in the hope that it will be useful,~%# but WITHOUT ANY WARRANTY; without even the implied warranty of~%# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%# GNU Lesser General Public License for more details.~%#~%# You should have received a copy of the GNU Lesser General Public License~%# along with this program.  If not, see <http://www.gnu.org/licenses/>.~%~%int8 value~%~%# values of CANopen object brake_test_status, see~%# https://www.pilz.com/download/open/PRBT_6_Operat_Manual_1004685-EN-02.pdf (p.100)~%int8 STATUS_UNKNOWN = 0~%int8 STATUS_PERFORMING = 1~%int8 STATUS_SUCCESS = 2~%int8 STATUS_NO_SUCCESS = 3~%int8 STATUS_NO_CONTROL = 4~%~%# service call failures~%int8 TRIGGER_BRAKETEST_SERVICE_FAILURE = 50~%int8 GET_NODE_NAMES_FAILURE  = 51~%int8 GET_DURATION_FAILURE = 52~%int8 GET_STATUS_FAILURE = 53~%int8 START_BRAKE_TEST_FAILURE = 54~%~%# other reasons for blocking the execution of brake tests~%int8 BRAKETEST_ALREADY_EXECUTING = 70~%int8 ROBOT_MOTION_DETECTED = 71~%~%# other~%int8 FAILURE = 99~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BrakeTest-response)))
  "Returns full string definition for message of type 'BrakeTest-response"
  (cl:format cl:nil "bool success~%~%# Number representing failure of the brake test~%BrakeTestErrorCodes error_code~%~%# Contains message explaining failure of the brake test execution~%string error_msg~%~%~%================================================================================~%MSG: prbt_hardware_support/BrakeTestErrorCodes~%#~%# Copyright (c) 2019 Pilz GmbH & Co. KG~%#~%# This program is free software: you can redistribute it and/or modify~%# it under the terms of the GNU Lesser General Public License as published by~%# the Free Software Foundation, either version 3 of the License, or~%# (at your option) any later version.~%#~%# This program is distributed in the hope that it will be useful,~%# but WITHOUT ANY WARRANTY; without even the implied warranty of~%# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%# GNU Lesser General Public License for more details.~%#~%# You should have received a copy of the GNU Lesser General Public License~%# along with this program.  If not, see <http://www.gnu.org/licenses/>.~%~%int8 value~%~%# values of CANopen object brake_test_status, see~%# https://www.pilz.com/download/open/PRBT_6_Operat_Manual_1004685-EN-02.pdf (p.100)~%int8 STATUS_UNKNOWN = 0~%int8 STATUS_PERFORMING = 1~%int8 STATUS_SUCCESS = 2~%int8 STATUS_NO_SUCCESS = 3~%int8 STATUS_NO_CONTROL = 4~%~%# service call failures~%int8 TRIGGER_BRAKETEST_SERVICE_FAILURE = 50~%int8 GET_NODE_NAMES_FAILURE  = 51~%int8 GET_DURATION_FAILURE = 52~%int8 GET_STATUS_FAILURE = 53~%int8 START_BRAKE_TEST_FAILURE = 54~%~%# other reasons for blocking the execution of brake tests~%int8 BRAKETEST_ALREADY_EXECUTING = 70~%int8 ROBOT_MOTION_DETECTED = 71~%~%# other~%int8 FAILURE = 99~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BrakeTest-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'error_code))
     4 (cl:length (cl:slot-value msg 'error_msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BrakeTest-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BrakeTest-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':error_msg (error_msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BrakeTest)))
  'BrakeTest-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BrakeTest)))
  'BrakeTest-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BrakeTest)))
  "Returns string type for a service object of type '<BrakeTest>"
  "prbt_hardware_support/BrakeTest")