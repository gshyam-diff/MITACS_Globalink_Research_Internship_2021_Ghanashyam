;; Auto-generated. Do not edit!


(when (boundp 'prbt_hardware_support::WriteModbusRegister)
  (if (not (find-package "PRBT_HARDWARE_SUPPORT"))
    (make-package "PRBT_HARDWARE_SUPPORT"))
  (shadow 'WriteModbusRegister (find-package "PRBT_HARDWARE_SUPPORT")))
(unless (find-package "PRBT_HARDWARE_SUPPORT::WRITEMODBUSREGISTER")
  (make-package "PRBT_HARDWARE_SUPPORT::WRITEMODBUSREGISTER"))
(unless (find-package "PRBT_HARDWARE_SUPPORT::WRITEMODBUSREGISTERREQUEST")
  (make-package "PRBT_HARDWARE_SUPPORT::WRITEMODBUSREGISTERREQUEST"))
(unless (find-package "PRBT_HARDWARE_SUPPORT::WRITEMODBUSREGISTERRESPONSE")
  (make-package "PRBT_HARDWARE_SUPPORT::WRITEMODBUSREGISTERRESPONSE"))

(in-package "ROS")





(defclass prbt_hardware_support::WriteModbusRegisterRequest
  :super ros::object
  :slots (_holding_register_block ))

(defmethod prbt_hardware_support::WriteModbusRegisterRequest
  (:init
   (&key
    ((:holding_register_block __holding_register_block) (instance prbt_hardware_support::ModbusRegisterBlock :init))
    )
   (send-super :init)
   (setq _holding_register_block __holding_register_block)
   self)
  (:holding_register_block
   (&rest __holding_register_block)
   (if (keywordp (car __holding_register_block))
       (send* _holding_register_block __holding_register_block)
     (progn
       (if __holding_register_block (setq _holding_register_block (car __holding_register_block)))
       _holding_register_block)))
  (:serialization-length
   ()
   (+
    ;; prbt_hardware_support/ModbusRegisterBlock _holding_register_block
    (send _holding_register_block :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; prbt_hardware_support/ModbusRegisterBlock _holding_register_block
       (send _holding_register_block :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; prbt_hardware_support/ModbusRegisterBlock _holding_register_block
     (send _holding_register_block :deserialize buf ptr-) (incf ptr- (send _holding_register_block :serialization-length))
   ;;
   self)
  )

(defclass prbt_hardware_support::WriteModbusRegisterResponse
  :super ros::object
  :slots (_success ))

(defmethod prbt_hardware_support::WriteModbusRegisterResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass prbt_hardware_support::WriteModbusRegister
  :super ros::object
  :slots ())

(setf (get prbt_hardware_support::WriteModbusRegister :md5sum-) "02822f7d1076b1b9eb20913904f86345")
(setf (get prbt_hardware_support::WriteModbusRegister :datatype-) "prbt_hardware_support/WriteModbusRegister")
(setf (get prbt_hardware_support::WriteModbusRegister :request) prbt_hardware_support::WriteModbusRegisterRequest)
(setf (get prbt_hardware_support::WriteModbusRegister :response) prbt_hardware_support::WriteModbusRegisterResponse)

(defmethod prbt_hardware_support::WriteModbusRegisterRequest
  (:response () (instance prbt_hardware_support::WriteModbusRegisterResponse :init)))

(setf (get prbt_hardware_support::WriteModbusRegisterRequest :md5sum-) "02822f7d1076b1b9eb20913904f86345")
(setf (get prbt_hardware_support::WriteModbusRegisterRequest :datatype-) "prbt_hardware_support/WriteModbusRegisterRequest")
(setf (get prbt_hardware_support::WriteModbusRegisterRequest :definition-)
      "#
# Copyright (c) 2019 Pilz GmbH & Co. KG
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

ModbusRegisterBlock holding_register_block


================================================================================
MSG: prbt_hardware_support/ModbusRegisterBlock
#
# Copyright (c) 2019 Pilz GmbH & Co. KG
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# Defines the start index of the Modbus register block. A block can consist
# of one or more registers.
uint16 start_idx

# The values of the registers (in order).
uint16[] values
---
bool success

")

(setf (get prbt_hardware_support::WriteModbusRegisterResponse :md5sum-) "02822f7d1076b1b9eb20913904f86345")
(setf (get prbt_hardware_support::WriteModbusRegisterResponse :datatype-) "prbt_hardware_support/WriteModbusRegisterResponse")
(setf (get prbt_hardware_support::WriteModbusRegisterResponse :definition-)
      "#
# Copyright (c) 2019 Pilz GmbH & Co. KG
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

ModbusRegisterBlock holding_register_block


================================================================================
MSG: prbt_hardware_support/ModbusRegisterBlock
#
# Copyright (c) 2019 Pilz GmbH & Co. KG
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# Defines the start index of the Modbus register block. A block can consist
# of one or more registers.
uint16 start_idx

# The values of the registers (in order).
uint16[] values
---
bool success

")



(provide :prbt_hardware_support/WriteModbusRegister "02822f7d1076b1b9eb20913904f86345")


