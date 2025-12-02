
(cl:in-package :asdf)

(defsystem "tester_package-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "PcdAngle" :depends-on ("_package_PcdAngle"))
    (:file "_package_PcdAngle" :depends-on ("_package"))
  ))