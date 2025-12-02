; Auto-generated. Do not edit!


(cl:in-package prbt_hardware_support-srv)


;//! \htmlinclude SendBrakeTestResult-request.msg.html

(cl:defclass <SendBrakeTestResult-request> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SendBrakeTestResult-request (<SendBrakeTestResult-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendBrakeTestResult-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendBrakeTestResult-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name prbt_hardware_support-srv:<SendBrakeTestResult-request> is deprecated: use prbt_hardware_support-srv:SendBrakeTestResult-request instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SendBrakeTestResult-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader prbt_hardware_support-srv:result-val is deprecated.  Use prbt_hardware_support-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendBrakeTestResult-request>) ostream)
  "Serializes a message object of type '<SendBrakeTestResult-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendBrakeTestResult-request>) istream)
  "Deserializes a message object of type '<SendBrakeTestResult-request>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendBrakeTestResult-request>)))
  "Returns string type for a service object of type '<SendBrakeTestResult-request>"
  "prbt_hardware_support/SendBrakeTestResultRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendBrakeTestResult-request)))
  "Returns string type for a service object of type 'SendBrakeTestResult-request"
  "prbt_hardware_support/SendBrakeTestResultRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendBrakeTestResult-request>)))
  "Returns md5sum for a message object of type '<SendBrakeTestResult-request>"
  "09607d640e74f69f95d6976e7e821498")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendBrakeTestResult-request)))
  "Returns md5sum for a message object of type 'SendBrakeTestResult-request"
  "09607d640e74f69f95d6976e7e821498")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendBrakeTestResult-request>)))
  "Returns full string definition for message of type '<SendBrakeTestResult-request>"
  (cl:format cl:nil "#~%# Copyright (c) 2019 Pilz GmbH & Co. KG~%#~%# This program is free software: you can redistribute it and/or modify~%# it under the terms of the GNU Lesser General Public License as published by~%# the Free Software Foundation, either version 3 of the License, or~%# (at your option) any later version.~%#~%# This program is distributed in the hope that it will be useful,~%# but WITHOUT ANY WARRANTY; without even the implied warranty of~%# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%# GNU Lesser General Public License for more details.~%#~%# You should have received a copy of the GNU Lesser General Public License~%# along with this program.  If not, see <http://www.gnu.org/licenses/>.~%~%# Variable to state the result of the last brake test.~%# TRUE <-> Brake test successful~%# FALSE <-> Brake test failed~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendBrakeTestResult-request)))
  "Returns full string definition for message of type 'SendBrakeTestResult-request"
  (cl:format cl:nil "#~%# Copyright (c) 2019 Pilz GmbH & Co. KG~%#~%# This program is free software: you can redistribute it and/or modify~%# it under the terms of the GNU Lesser General Public License as published by~%# the Free Software Foundation, either version 3 of the License, or~%# (at your option) any later version.~%#~%# This program is distributed in the hope that it will be useful,~%# but WITHOUT ANY WARRANTY; without even the implied warranty of~%# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%# GNU Lesser General Public License for more details.~%#~%# You should have received a copy of the GNU Lesser General Public License~%# along with this program.  If not, see <http://www.gnu.org/licenses/>.~%~%# Variable to state the result of the last brake test.~%# TRUE <-> Brake test successful~%# FALSE <-> Brake test failed~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendBrakeTestResult-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendBrakeTestResult-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SendBrakeTestResult-request
    (cl:cons ':result (result msg))
))
;//! \htmlinclude SendBrakeTestResult-response.msg.html

(cl:defclass <SendBrakeTestResult-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (error_msg
    :reader error_msg
    :initarg :error_msg
    :type cl:string
    :initform ""))
)

(cl:defclass SendBrakeTestResult-response (<SendBrakeTestResult-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendBrakeTestResult-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendBrakeTestResult-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name prbt_hardware_support-srv:<SendBrakeTestResult-response> is deprecated: use prbt_hardware_support-srv:SendBrakeTestResult-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SendBrakeTestResult-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader prbt_hardware_support-srv:success-val is deprecated.  Use prbt_hardware_support-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_msg-val :lambda-list '(m))
(cl:defmethod error_msg-val ((m <SendBrakeTestResult-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader prbt_hardware_support-srv:error_msg-val is deprecated.  Use prbt_hardware_support-srv:error_msg instead.")
  (error_msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendBrakeTestResult-response>) ostream)
  "Serializes a message object of type '<SendBrakeTestResult-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendBrakeTestResult-response>) istream)
  "Deserializes a message object of type '<SendBrakeTestResult-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendBrakeTestResult-response>)))
  "Returns string type for a service object of type '<SendBrakeTestResult-response>"
  "prbt_hardware_support/SendBrakeTestResultResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendBrakeTestResult-response)))
  "Returns string type for a service object of type 'SendBrakeTestResult-response"
  "prbt_hardware_support/SendBrakeTestResultResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendBrakeTestResult-response>)))
  "Returns md5sum for a message object of type '<SendBrakeTestResult-response>"
  "09607d640e74f69f95d6976e7e821498")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendBrakeTestResult-response)))
  "Returns md5sum for a message object of type 'SendBrakeTestResult-response"
  "09607d640e74f69f95d6976e7e821498")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendBrakeTestResult-response>)))
  "Returns full string definition for message of type '<SendBrakeTestResult-response>"
  (cl:format cl:nil "bool success~%~%# Contains message explaining failure~%string error_msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendBrakeTestResult-response)))
  "Returns full string definition for message of type 'SendBrakeTestResult-response"
  (cl:format cl:nil "bool success~%~%# Contains message explaining failure~%string error_msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendBrakeTestResult-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'error_msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendBrakeTestResult-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SendBrakeTestResult-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_msg (error_msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SendBrakeTestResult)))
  'SendBrakeTestResult-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SendBrakeTestResult)))
  'SendBrakeTestResult-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendBrakeTestResult)))
  "Returns string type for a service object of type '<SendBrakeTestResult>"
  "prbt_hardware_support/SendBrakeTestResult")