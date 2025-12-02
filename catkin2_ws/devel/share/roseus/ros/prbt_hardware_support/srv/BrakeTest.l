;; Auto-generated. Do not edit!


(when (boundp 'prbt_hardware_support::BrakeTest)
  (if (not (find-package "PRBT_HARDWARE_SUPPORT"))
    (make-package "PRBT_HARDWARE_SUPPORT"))
  (shadow 'BrakeTest (find-package "PRBT_HARDWARE_SUPPORT")))
(unless (find-package "PRBT_HARDWARE_SUPPORT::BRAKETEST")
  (make-package "PRBT_HARDWARE_SUPPORT::BRAKETEST"))
(unless (find-package "PRBT_HARDWARE_SUPPORT::BRAKETESTREQUEST")
  (make-package "PRBT_HARDWARE_SUPPORT::BRAKETESTREQUEST"))
(unless (find-package "PRBT_HARDWARE_SUPPORT::BRAKETESTRESPONSE")
  (make-package "PRBT_HARDWARE_SUPPORT::BRAKETESTRESPONSE"))

(in-package "ROS")





(defclass prbt_hardware_support::BrakeTestRequest
  :super ros::object
  :slots ())

(defmethod prbt_hardware_support::BrakeTestRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass prbt_hardware_support::BrakeTestResponse
  :super ros::object
  :slots (_success _error_code _error_msg ))

(defmethod prbt_hardware_support::BrakeTestResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:error_code __error_code) (instance prbt_hardware_support::BrakeTestErrorCodes :init))
    ((:error_msg __error_msg) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _error_code __error_code)
   (setq _error_msg (string __error_msg))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:error_code
   (&rest __error_code)
   (if (keywordp (car __error_code))
       (send* _error_code __error_code)
     (progn
       (if __error_code (setq _error_code (car __error_code)))
       _error_code)))
  (:error_msg
   (&optional __error_msg)
   (if __error_msg (setq _error_msg __error_msg)) _error_msg)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; prbt_hardware_support/BrakeTestErrorCodes _error_code
    (send _error_code :serialization-length)
    ;; string _error_msg
    4 (length _error_msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; prbt_hardware_support/BrakeTestErrorCodes _error_code
       (send _error_code :serialize s)
     ;; string _error_msg
       (write-long (length _error_msg) s) (princ _error_msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; prbt_hardware_support/BrakeTestErrorCodes _error_code
     (send _error_code :deserialize buf ptr-) (incf ptr- (send _error_code :serialization-length))
   ;; string _error_msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass prbt_hardware_support::BrakeTest
  :super ros::object
  :slots ())

(setf (get prbt_hardware_support::BrakeTest :md5sum-) "8aa3acf608ed7e76565a588499702b4f")
(setf (get prbt_hardware_support::BrakeTest :datatype-) "prbt_hardware_support/BrakeTest")
(setf (get prbt_hardware_support::BrakeTest :request) prbt_hardware_support::BrakeTestRequest)
(setf (get prbt_hardware_support::BrakeTest :response) prbt_hardware_support::BrakeTestResponse)

(defmethod prbt_hardware_support::BrakeTestRequest
  (:response () (instance prbt_hardware_support::BrakeTestResponse :init)))

(setf (get prbt_hardware_support::BrakeTestRequest :md5sum-) "8aa3acf608ed7e76565a588499702b4f")
(setf (get prbt_hardware_support::BrakeTestRequest :datatype-) "prbt_hardware_support/BrakeTestRequest")
(setf (get prbt_hardware_support::BrakeTestRequest :definition-)
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


---
bool success

# Number representing failure of the brake test
BrakeTestErrorCodes error_code

# Contains message explaining failure of the brake test execution
string error_msg


================================================================================
MSG: prbt_hardware_support/BrakeTestErrorCodes
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

(setf (get prbt_hardware_support::BrakeTestResponse :md5sum-) "8aa3acf608ed7e76565a588499702b4f")
(setf (get prbt_hardware_support::BrakeTestResponse :datatype-) "prbt_hardware_support/BrakeTestResponse")
(setf (get prbt_hardware_support::BrakeTestResponse :definition-)
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


---
bool success

# Number representing failure of the brake test
BrakeTestErrorCodes error_code

# Contains message explaining failure of the brake test execution
string error_msg


================================================================================
MSG: prbt_hardware_support/BrakeTestErrorCodes
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



(provide :prbt_hardware_support/BrakeTest "8aa3acf608ed7e76565a588499702b4f")


