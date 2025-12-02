;; Auto-generated. Do not edit!


(when (boundp 'prbt_hardware_support::SendBrakeTestResult)
  (if (not (find-package "PRBT_HARDWARE_SUPPORT"))
    (make-package "PRBT_HARDWARE_SUPPORT"))
  (shadow 'SendBrakeTestResult (find-package "PRBT_HARDWARE_SUPPORT")))
(unless (find-package "PRBT_HARDWARE_SUPPORT::SENDBRAKETESTRESULT")
  (make-package "PRBT_HARDWARE_SUPPORT::SENDBRAKETESTRESULT"))
(unless (find-package "PRBT_HARDWARE_SUPPORT::SENDBRAKETESTRESULTREQUEST")
  (make-package "PRBT_HARDWARE_SUPPORT::SENDBRAKETESTRESULTREQUEST"))
(unless (find-package "PRBT_HARDWARE_SUPPORT::SENDBRAKETESTRESULTRESPONSE")
  (make-package "PRBT_HARDWARE_SUPPORT::SENDBRAKETESTRESULTRESPONSE"))

(in-package "ROS")





(defclass prbt_hardware_support::SendBrakeTestResultRequest
  :super ros::object
  :slots (_result ))

(defmethod prbt_hardware_support::SendBrakeTestResultRequest
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass prbt_hardware_support::SendBrakeTestResultResponse
  :super ros::object
  :slots (_success _error_msg ))

(defmethod prbt_hardware_support::SendBrakeTestResultResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:error_msg __error_msg) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _error_msg (string __error_msg))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:error_msg
   (&optional __error_msg)
   (if __error_msg (setq _error_msg __error_msg)) _error_msg)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _error_msg
    4 (length _error_msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _error_msg
       (write-long (length _error_msg) s) (princ _error_msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _error_msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass prbt_hardware_support::SendBrakeTestResult
  :super ros::object
  :slots ())

(setf (get prbt_hardware_support::SendBrakeTestResult :md5sum-) "09607d640e74f69f95d6976e7e821498")
(setf (get prbt_hardware_support::SendBrakeTestResult :datatype-) "prbt_hardware_support/SendBrakeTestResult")
(setf (get prbt_hardware_support::SendBrakeTestResult :request) prbt_hardware_support::SendBrakeTestResultRequest)
(setf (get prbt_hardware_support::SendBrakeTestResult :response) prbt_hardware_support::SendBrakeTestResultResponse)

(defmethod prbt_hardware_support::SendBrakeTestResultRequest
  (:response () (instance prbt_hardware_support::SendBrakeTestResultResponse :init)))

(setf (get prbt_hardware_support::SendBrakeTestResultRequest :md5sum-) "09607d640e74f69f95d6976e7e821498")
(setf (get prbt_hardware_support::SendBrakeTestResultRequest :datatype-) "prbt_hardware_support/SendBrakeTestResultRequest")
(setf (get prbt_hardware_support::SendBrakeTestResultRequest :definition-)
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

# Variable to state the result of the last brake test.
# TRUE <-> Brake test successful
# FALSE <-> Brake test failed
bool result

---
bool success

# Contains message explaining failure
string error_msg

")

(setf (get prbt_hardware_support::SendBrakeTestResultResponse :md5sum-) "09607d640e74f69f95d6976e7e821498")
(setf (get prbt_hardware_support::SendBrakeTestResultResponse :datatype-) "prbt_hardware_support/SendBrakeTestResultResponse")
(setf (get prbt_hardware_support::SendBrakeTestResultResponse :definition-)
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

# Variable to state the result of the last brake test.
# TRUE <-> Brake test successful
# FALSE <-> Brake test failed
bool result

---
bool success

# Contains message explaining failure
string error_msg

")



(provide :prbt_hardware_support/SendBrakeTestResult "09607d640e74f69f95d6976e7e821498")


