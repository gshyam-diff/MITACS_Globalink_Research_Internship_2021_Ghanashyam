; Auto-generated. Do not edit!


(cl:in-package prbt_hardware_support-srv)


;//! \htmlinclude WriteModbusRegister-request.msg.html

(cl:defclass <WriteModbusRegister-request> (roslisp-msg-protocol:ros-message)
  ((holding_register_block
    :reader holding_register_block
    :initarg :holding_register_block
    :type prbt_hardware_support-msg:ModbusRegisterBlock
    :initform (cl:make-instance 'prbt_hardware_support-msg:ModbusRegisterBlock)))
)

(cl:defclass WriteModbusRegister-request (<WriteModbusRegister-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WriteModbusRegister-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WriteModbusRegister-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name prbt_hardware_support-srv:<WriteModbusRegister-request> is deprecated: use prbt_hardware_support-srv:WriteModbusRegister-request instead.")))

(cl:ensure-generic-function 'holding_register_block-val :lambda-list '(m))
(cl:defmethod holding_register_block-val ((m <WriteModbusRegister-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader prbt_hardware_support-srv:holding_register_block-val is deprecated.  Use prbt_hardware_support-srv:holding_register_block instead.")
  (holding_register_block m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WriteModbusRegister-request>) ostream)
  "Serializes a message object of type '<WriteModbusRegister-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'holding_register_block) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WriteModbusRegister-request>) istream)
  "Deserializes a message object of type '<WriteModbusRegister-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'holding_register_block) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WriteModbusRegister-request>)))
  "Returns string type for a service object of type '<WriteModbusRegister-request>"
  "prbt_hardware_support/WriteModbusRegisterRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WriteModbusRegister-request)))
  "Returns string type for a service object of type 'WriteModbusRegister-request"
  "prbt_hardware_support/WriteModbusRegisterRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WriteModbusRegister-request>)))
  "Returns md5sum for a message object of type '<WriteModbusRegister-request>"
  "02822f7d1076b1b9eb20913904f86345")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WriteModbusRegister-request)))
  "Returns md5sum for a message object of type 'WriteModbusRegister-request"
  "02822f7d1076b1b9eb20913904f86345")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WriteModbusRegister-request>)))
  "Returns full string definition for message of type '<WriteModbusRegister-request>"
  (cl:format cl:nil "#~%# Copyright (c) 2019 Pilz GmbH & Co. KG~%#~%# This program is free software: you can redistribute it and/or modify~%# it under the terms of the GNU Lesser General Public License as published by~%# the Free Software Foundation, either version 3 of the License, or~%# (at your option) any later version.~%#~%# This program is distributed in the hope that it will be useful,~%# but WITHOUT ANY WARRANTY; without even the implied warranty of~%# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%# GNU Lesser General Public License for more details.~%#~%# You should have received a copy of the GNU Lesser General Public License~%# along with this program.  If not, see <http://www.gnu.org/licenses/>.~%~%ModbusRegisterBlock holding_register_block~%~%~%================================================================================~%MSG: prbt_hardware_support/ModbusRegisterBlock~%#~%# Copyright (c) 2019 Pilz GmbH & Co. KG~%#~%# This program is free software: you can redistribute it and/or modify~%# it under the terms of the GNU Lesser General Public License as published by~%# the Free Software Foundation, either version 3 of the License, or~%# (at your option) any later version.~%#~%# This program is distributed in the hope that it will be useful,~%# but WITHOUT ANY WARRANTY; without even the implied warranty of~%# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%# GNU Lesser General Public License for more details.~%#~%# You should have received a copy of the GNU Lesser General Public License~%# along with this program.  If not, see <http://www.gnu.org/licenses/>.~%~%# Defines the start index of the Modbus register block. A block can consist~%# of one or more registers.~%uint16 start_idx~%~%# The values of the registers (in order).~%uint16[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WriteModbusRegister-request)))
  "Returns full string definition for message of type 'WriteModbusRegister-request"
  (cl:format cl:nil "#~%# Copyright (c) 2019 Pilz GmbH & Co. KG~%#~%# This program is free software: you can redistribute it and/or modify~%# it under the terms of the GNU Lesser General Public License as published by~%# the Free Software Foundation, either version 3 of the License, or~%# (at your option) any later version.~%#~%# This program is distributed in the hope that it will be useful,~%# but WITHOUT ANY WARRANTY; without even the implied warranty of~%# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%# GNU Lesser General Public License for more details.~%#~%# You should have received a copy of the GNU Lesser General Public License~%# along with this program.  If not, see <http://www.gnu.org/licenses/>.~%~%ModbusRegisterBlock holding_register_block~%~%~%================================================================================~%MSG: prbt_hardware_support/ModbusRegisterBlock~%#~%# Copyright (c) 2019 Pilz GmbH & Co. KG~%#~%# This program is free software: you can redistribute it and/or modify~%# it under the terms of the GNU Lesser General Public License as published by~%# the Free Software Foundation, either version 3 of the License, or~%# (at your option) any later version.~%#~%# This program is distributed in the hope that it will be useful,~%# but WITHOUT ANY WARRANTY; without even the implied warranty of~%# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%# GNU Lesser General Public License for more details.~%#~%# You should have received a copy of the GNU Lesser General Public License~%# along with this program.  If not, see <http://www.gnu.org/licenses/>.~%~%# Defines the start index of the Modbus register block. A block can consist~%# of one or more registers.~%uint16 start_idx~%~%# The values of the registers (in order).~%uint16[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WriteModbusRegister-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'holding_register_block))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WriteModbusRegister-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WriteModbusRegister-request
    (cl:cons ':holding_register_block (holding_register_block msg))
))
;//! \htmlinclude WriteModbusRegister-response.msg.html

(cl:defclass <WriteModbusRegister-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass WriteModbusRegister-response (<WriteModbusRegister-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WriteModbusRegister-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WriteModbusRegister-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name prbt_hardware_support-srv:<WriteModbusRegister-response> is deprecated: use prbt_hardware_support-srv:WriteModbusRegister-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <WriteModbusRegister-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader prbt_hardware_support-srv:success-val is deprecated.  Use prbt_hardware_support-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WriteModbusRegister-response>) ostream)
  "Serializes a message object of type '<WriteModbusRegister-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WriteModbusRegister-response>) istream)
  "Deserializes a message object of type '<WriteModbusRegister-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WriteModbusRegister-response>)))
  "Returns string type for a service object of type '<WriteModbusRegister-response>"
  "prbt_hardware_support/WriteModbusRegisterResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WriteModbusRegister-response)))
  "Returns string type for a service object of type 'WriteModbusRegister-response"
  "prbt_hardware_support/WriteModbusRegisterResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WriteModbusRegister-response>)))
  "Returns md5sum for a message object of type '<WriteModbusRegister-response>"
  "02822f7d1076b1b9eb20913904f86345")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WriteModbusRegister-response)))
  "Returns md5sum for a message object of type 'WriteModbusRegister-response"
  "02822f7d1076b1b9eb20913904f86345")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WriteModbusRegister-response>)))
  "Returns full string definition for message of type '<WriteModbusRegister-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WriteModbusRegister-response)))
  "Returns full string definition for message of type 'WriteModbusRegister-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WriteModbusRegister-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WriteModbusRegister-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WriteModbusRegister-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WriteModbusRegister)))
  'WriteModbusRegister-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WriteModbusRegister)))
  'WriteModbusRegister-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WriteModbusRegister)))
  "Returns string type for a service object of type '<WriteModbusRegister>"
  "prbt_hardware_support/WriteModbusRegister")