
(cl:in-package :asdf)

(defsystem "prbt_hardware_support-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "BrakeTestErrorCodes" :depends-on ("_package_BrakeTestErrorCodes"))
    (:file "_package_BrakeTestErrorCodes" :depends-on ("_package"))
    (:file "ModbusMsgInStamped" :depends-on ("_package_ModbusMsgInStamped"))
    (:file "_package_ModbusMsgInStamped" :depends-on ("_package"))
    (:file "ModbusRegisterBlock" :depends-on ("_package_ModbusRegisterBlock"))
    (:file "_package_ModbusRegisterBlock" :depends-on ("_package"))
  ))