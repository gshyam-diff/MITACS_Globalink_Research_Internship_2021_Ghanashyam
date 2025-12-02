;; Auto-generated. Do not edit!


(when (boundp 'prbt_hardware_support::ModbusRegisterBlock)
  (if (not (find-package "PRBT_HARDWARE_SUPPORT"))
    (make-package "PRBT_HARDWARE_SUPPORT"))
  (shadow 'ModbusRegisterBlock (find-package "PRBT_HARDWARE_SUPPORT")))
(unless (find-package "PRBT_HARDWARE_SUPPORT::MODBUSREGISTERBLOCK")
  (make-package "PRBT_HARDWARE_SUPPORT::MODBUSREGISTERBLOCK"))

(in-package "ROS")
;;//! \htmlinclude ModbusRegisterBlock.msg.html


(defclass prbt_hardware_support::ModbusRegisterBlock
  :super ros::object
  :slots (_start_idx _values ))

(defmethod prbt_hardware_support::ModbusRegisterBlock
  (:init
   (&key
    ((:start_idx __start_idx) 0)
    ((:values __values) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _start_idx (round __start_idx))
   (setq _values __values)
   self)
  (:start_idx
   (&optional __start_idx)
   (if __start_idx (setq _start_idx __start_idx)) _start_idx)
  (:values
   (&optional __values)
   (if __values (setq _values __values)) _values)
  (:serialization-length
   ()
   (+
    ;; uint16 _start_idx
    2
    ;; uint16[] _values
    (* 2    (length _values)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _start_idx
       (write-word _start_idx s)
     ;; uint16[] _values
     (write-long (length _values) s)
     (dotimes (i (length _values))
       (write-word (elt _values i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _start_idx
     (setq _start_idx (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16[] _values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _values (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _values i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;;
   self)
  )

(setf (get prbt_hardware_support::ModbusRegisterBlock :md5sum-) "fe195cfcfc87bb5e9602528590f29a5d")
(setf (get prbt_hardware_support::ModbusRegisterBlock :datatype-) "prbt_hardware_support/ModbusRegisterBlock")
(setf (get prbt_hardware_support::ModbusRegisterBlock :definition-)
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

# Defines the start index of the Modbus register block. A block can consist
# of one or more registers.
uint16 start_idx

# The values of the registers (in order).
uint16[] values

")



(provide :prbt_hardware_support/ModbusRegisterBlock "fe195cfcfc87bb5e9602528590f29a5d")


