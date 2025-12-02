
(cl:in-package :asdf)

(defsystem "tester_package-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "GenerateAngles" :depends-on ("_package_GenerateAngles"))
    (:file "_package_GenerateAngles" :depends-on ("_package"))
  ))