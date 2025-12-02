;; Auto-generated. Do not edit!


(when (boundp 'prbt_hardware_support::BrakeTestErrorCodes)
  (if (not (find-package "PRBT_HARDWARE_SUPPORT"))
    (make-package "PRBT_HARDWARE_SUPPORT"))
  (shadow 'BrakeTestErrorCodes (find-package "PRBT_HARDWARE_SUPPORT")))
(unless (find-package "PRBT_HARDWARE_SUPPORT::BRAKETESTERRORCODES")
  (make-package "PRBT_HARDWARE_SUPPORT::BRAKETESTERRORCODES"))

(in-package "ROS")
;;//! \htmlinclude BrakeTestErrorCodes.msg.html


(intern "*STATUS_UNKNOWN*" (find-package "PRBT_HARDWARE_SUPPORT::BRAKETESTERRORCODES"))
(shadow '*STATUS_UNKNOWN* (find-package "PRBT_HARDWARE_SUPPORT::BRAKETESTERRORCODES"))
(defconstant prbt_hardware_support::BrakeTestErrorCodes::*STATUS_UNKNOWN* 0)
(intern "*STATUS_PERFORMING*" (find-package "PRBT_HARDWARE_SUPPORT::BRAKETESTERRORCODES"))
(shadow '*STATUS_PERFORMING* (find-package "PRBT_HARDWARE_SUPPORT::BRAKETESTERRORCODES"))
(defconstant prbt_hardware_support::BrakeTestErrorCodes::*STATUS_PERFORMING* 1)
(intern "*STATUS_SUCCESS*" (find-package "PRBT_HARDWARE_SUPPORT::BRAKETESTERRORCODES"))
(shadow '*STATUS_SUCCESS* (find-package "PRBT_HARDWARE_SUPPORT::BRAKETESTERRORCODES"))
(defconstant prbt_hardware_support::BrakeTestErrorCodes::*STATUS_SUCCESS* 2)
(intern "*STATUS_NO_SUCCESS*" (find-package "PRBT_HARDWARE_SUPPORT::BRAKETESTERRORCODES"))
(shadow '*STATUS_NO_SUCCESS* (find-package "PRBT_HARDWARE_SUPPORT::BRAKETESTERRORCODES"))
(defconstant prbt_hardware_support::BrakeTestErrorCodes::*STATUS_NO_SUCCESS* 3)
(intern "*STATUS_NO_CONTROL*" (find-package "PRBT_HARDWARE_SUPPORT::BRAKETESTERRORCODES"))
(shadow '*STATUS_NO_CONTROL* (find-package "PRBT_HARDWARE_SUPPORT::BRAKETESTERRORCODES"))
(defconstant prbt_hardware_support::BrakeTestErrorCodes::*STATUS_NO_CONTROL* 4)
(intern "*TRIGGER_BRAKETEST_SERVICE_FAILURE*" (find-package "PRBT_HARDWARE_SUPPORT::BRAKETESTERRORCODES"))
(shadow '*TRIGGER_BRAKETEST_SERVICE_FAILURE* (find-package "PRBT_HARDWARE_SUPPORT::BRAKETESTERRORCODES"))
(defconstant prbt_hardware_support::BrakeTestErrorCodes::*TRIGGER_BRAKETEST_SERVICE_FAILURE* 50)
(intern "*GET_NODE_NAMES_FAILURE*" (find-package "PRBT_HARDWARE_SUPPORT::BRAKETESTERRORCODES"))
(shadow '*GET_NODE_NAMES_FAILURE* (find-package "PRBT_HARDWARE_SUPPORT::BRAKETESTERRORCODES"))
(defconstant prbt_hardware_support::BrakeTestErrorCodes::*GET_NODE_NAMES_FAILURE* 51)
(intern "*GET_DURATION_FAILURE*" (find-package "PRBT_HARDWARE_SUPPORT::BRAKETESTERRORCODES"))
(shadow '*GET_DURATION_FAILURE* (find-package "PRBT_HARDWARE_SUPPORT::BRAKETESTERRORCODES"))
(defconstant prbt_hardware_support::BrakeTestErrorCodes::*GET_DURATION_FAILURE* 52)
(intern "*GET_STATUS_FAILURE*" (find-package "PRBT_HARDWARE_SUPPORT::BRAKETESTERRORCODES"))
(shadow '*GET_STATUS_FAILURE* (find-package "PRBT_HARDWARE_SUPPORT::BRAKETESTERRORCODES"))
(defconstant prbt_hardware_support::BrakeTestErrorCodes::*GET_STATUS_FAILURE* 53)
(intern "*START_BRAKE_TEST_FAILURE*" (find-package "PRBT_HARDWARE_SUPPORT::BRAKETESTERRORCODES"))
(shadow '*START_BRAKE_TEST_FAILURE* (find-package "PRBT_HARDWARE_SUPPORT::BRAKETESTERRORCODES"))
(defconstant prbt_hardware_support::BrakeTestErrorCodes::*START_BRAKE_TEST_FAILURE* 54)
(intern "*BRAKETEST_ALREADY_EXECUTING*" (find-package "PRBT_HARDWARE_SUPPORT::BRAKETESTERRORCODES"))
(shadow '*BRAKETEST_ALREADY_EXECUTING* (find-package "PRBT_HARDWARE_SUPPORT::BRAKETESTERRORCODES"))
(defconstant prbt_hardware_support::BrakeTestErrorCodes::*BRAKETEST_ALREADY_EXECUTING* 70)
(intern "*ROBOT_MOTION_DETECTED*" (find-package "PRBT_HARDWARE_SUPPORT::BRAKETESTERRORCODES"))
(shadow '*ROBOT_MOTION_DETECTED* (find-package "PRBT_HARDWARE_SUPPORT::BRAKETESTERRORCODES"))
(defconstant prbt_hardware_support::BrakeTestErrorCodes::*ROBOT_MOTION_DETECTED* 71)
(intern "*FAILURE*" (find-package "PRBT_HARDWARE_SUPPORT::BRAKETESTERRORCODES"))
(shadow '*FAILURE* (find-package "PRBT_HARDWARE_SUPPORT::BRAKETESTERRORCODES"))
(defconstant prbt_hardware_support::BrakeTestErrorCodes::*FAILURE* 99)

(defun prbt_hardware_support::BrakeTestErrorCodes-to-symbol (const)
  (cond
        ((= const 0) 'prbt_hardware_support::BrakeTestErrorCodes::*STATUS_UNKNOWN*)
        ((= const 1) 'prbt_hardware_support::BrakeTestErrorCodes::*STATUS_PERFORMING*)
        ((= const 2) 'prbt_hardware_support::BrakeTestErrorCodes::*STATUS_SUCCESS*)
        ((= const 3) 'prbt_hardware_support::BrakeTestErrorCodes::*STATUS_NO_SUCCESS*)
        ((= const 4) 'prbt_hardware_support::BrakeTestErrorCodes::*STATUS_NO_CONTROL*)
        ((= const 50) 'prbt_hardware_support::BrakeTestErrorCodes::*TRIGGER_BRAKETEST_SERVICE_FAILURE*)
        ((= const 51) 'prbt_hardware_support::BrakeTestErrorCodes::*GET_NODE_NAMES_FAILURE*)
        ((= const 52) 'prbt_hardware_support::BrakeTestErrorCodes::*GET_DURATION_FAILURE*)
        ((= const 53) 'prbt_hardware_support::BrakeTestErrorCodes::*GET_STATUS_FAILURE*)
        ((= const 54) 'prbt_hardware_support::BrakeTestErrorCodes::*START_BRAKE_TEST_FAILURE*)
        ((= const 70) 'prbt_hardware_support::BrakeTestErrorCodes::*BRAKETEST_ALREADY_EXECUTING*)
        ((= const 71) 'prbt_hardware_support::BrakeTestErrorCodes::*ROBOT_MOTION_DETECTED*)
        ((= const 99) 'prbt_hardware_support::BrakeTestErrorCodes::*FAILURE*)
        (t nil)))

(defclass prbt_hardware_support::BrakeTestErrorCodes
  :super ros::object
  :slots (_value ))

(defmethod prbt_hardware_support::BrakeTestErrorCodes
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int8 _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _value
       (write-byte _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _value 127) (setq _value (- _value 256)))
   ;;
   self)
  )

(setf (get prbt_hardware_support::BrakeTestErrorCodes :md5sum-) "3d94689e95ce8a25b9e6555b0af70579")
(setf (get prbt_hardware_support::BrakeTestErrorCodes :datatype-) "prbt_hardware_support/BrakeTestErrorCodes")
(setf (get prbt_hardware_support::BrakeTestErrorCodes :definition-)
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

int8 value

# values of CANopen object brake_test_status, see
# https://www.pilz.com/download/open/PRBT_6_Operat_Manual_1004685-EN-02.pdf (p.100)
int8 STATUS_UNKNOWN = 0
int8 STATUS_PERFORMING = 1
int8 STATUS_SUCCESS = 2
int8 STATUS_NO_SUCCESS = 3
int8 STATUS_NO_CONTROL = 4

# service call failures
int8 TRIGGER_BRAKETEST_SERVICE_FAILURE = 50
int8 GET_NODE_NAMES_FAILURE  = 51
int8 GET_DURATION_FAILURE = 52
int8 GET_STATUS_FAILURE = 53
int8 START_BRAKE_TEST_FAILURE = 54

# other reasons for blocking the execution of brake tests
int8 BRAKETEST_ALREADY_EXECUTING = 70
int8 ROBOT_MOTION_DETECTED = 71

# other
int8 FAILURE = 99

")



(provide :prbt_hardware_support/BrakeTestErrorCodes "3d94689e95ce8a25b9e6555b0af70579")


