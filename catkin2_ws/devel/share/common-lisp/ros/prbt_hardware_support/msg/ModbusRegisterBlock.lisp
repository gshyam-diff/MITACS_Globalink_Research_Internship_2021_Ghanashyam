; Auto-generated. Do not edit!


(cl:in-package prbt_hardware_support-msg)


;//! \htmlinclude ModbusRegisterBlock.msg.html

(cl:defclass <ModbusRegisterBlock> (roslisp-msg-protocol:ros-message)
  ((start_idx
    :reader start_idx
    :initarg :start_idx
    :type cl:fixnum
    :initform 0)
   (values
    :reader values
    :initarg :values
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass ModbusRegisterBlock (<ModbusRegisterBlock>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModbusRegisterBlock>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModbusRegisterBlock)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name prbt_hardware_support-msg:<ModbusRegisterBlock> is deprecated: use prbt_hardware_support-msg:ModbusRegisterBlock instead.")))

(cl:ensure-generic-function 'start_idx-val :lambda-list '(m))
(cl:defmethod start_idx-val ((m <ModbusRegisterBlock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader prbt_hardware_support-msg:start_idx-val is deprecated.  Use prbt_hardware_support-msg:start_idx instead.")
  (start_idx m))

(cl:ensure-generic-function 'values-val :lambda-list '(m))
(cl:defmethod values-val ((m <ModbusRegisterBlock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader prbt_hardware_support-msg:values-val is deprecated.  Use prbt_hardware_support-msg:values instead.")
  (values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModbusRegisterBlock>) ostream)
  "Serializes a message object of type '<ModbusRegisterBlock>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_idx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'start_idx)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModbusRegisterBlock>) istream)
  "Deserializes a message object of type '<ModbusRegisterBlock>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_idx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'start_idx)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModbusRegisterBlock>)))
  "Returns string type for a message object of type '<ModbusRegisterBlock>"
  "prbt_hardware_support/ModbusRegisterBlock")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModbusRegisterBlock)))
  "Returns string type for a message object of type 'ModbusRegisterBlock"
  "prbt_hardware_support/ModbusRegisterBlock")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModbusRegisterBlock>)))
  "Returns md5sum for a message object of type '<ModbusRegisterBlock>"
  "fe195cfcfc87bb5e9602528590f29a5d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModbusRegisterBlock)))
  "Returns md5sum for a message object of type 'ModbusRegisterBlock"
  "fe195cfcfc87bb5e9602528590f29a5d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModbusRegisterBlock>)))
  "Returns full string definition for message of type '<ModbusRegisterBlock>"
  (cl:format cl:nil "#~%# Copyright (c) 2019 Pilz GmbH & Co. KG~%#~%# This program is free software: you can redistribute it and/or modify~%# it under the terms of the GNU Lesser General Public License as published by~%# the Free Software Foundation, either version 3 of the License, or~%# (at your option) any later version.~%#~%# This program is distributed in the hope that it will be useful,~%# but WITHOUT ANY WARRANTY; without even the implied warranty of~%# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%# GNU Lesser General Public License for more details.~%#~%# You should have received a copy of the GNU Lesser General Public License~%# along with this program.  If not, see <http://www.gnu.org/licenses/>.~%~%# Defines the start index of the Modbus register block. A block can consist~%# of one or more registers.~%uint16 start_idx~%~%# The values of the registers (in order).~%uint16[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModbusRegisterBlock)))
  "Returns full string definition for message of type 'ModbusRegisterBlock"
  (cl:format cl:nil "#~%# Copyright (c) 2019 Pilz GmbH & Co. KG~%#~%# This program is free software: you can redistribute it and/or modify~%# it under the terms of the GNU Lesser General Public License as published by~%# the Free Software Foundation, either version 3 of the License, or~%# (at your option) any later version.~%#~%# This program is distributed in the hope that it will be useful,~%# but WITHOUT ANY WARRANTY; without even the implied warranty of~%# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%# GNU Lesser General Public License for more details.~%#~%# You should have received a copy of the GNU Lesser General Public License~%# along with this program.  If not, see <http://www.gnu.org/licenses/>.~%~%# Defines the start index of the Modbus register block. A block can consist~%# of one or more registers.~%uint16 start_idx~%~%# The values of the registers (in order).~%uint16[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModbusRegisterBlock>))
  (cl:+ 0
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModbusRegisterBlock>))
  "Converts a ROS message object to a list"
  (cl:list 'ModbusRegisterBlock
    (cl:cons ':start_idx (start_idx msg))
    (cl:cons ':values (values msg))
))
