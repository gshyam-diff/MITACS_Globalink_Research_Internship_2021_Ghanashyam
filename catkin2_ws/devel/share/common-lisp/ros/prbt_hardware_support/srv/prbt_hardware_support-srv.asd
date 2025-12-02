
(cl:in-package :asdf)

(defsystem "prbt_hardware_support-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :prbt_hardware_support-msg
)
  :components ((:file "_package")
    (:file "BrakeTest" :depends-on ("_package_BrakeTest"))
    (:file "_package_BrakeTest" :depends-on ("_package"))
    (:file "SendBrakeTestResult" :depends-on ("_package_SendBrakeTestResult"))
    (:file "_package_SendBrakeTestResult" :depends-on ("_package"))
    (:file "WriteModbusRegister" :depends-on ("_package_WriteModbusRegister"))
    (:file "_package_WriteModbusRegister" :depends-on ("_package"))
  ))