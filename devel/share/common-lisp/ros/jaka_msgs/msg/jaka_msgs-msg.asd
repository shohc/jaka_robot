
(cl:in-package :asdf)

(defsystem "jaka_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "RobotMsg" :depends-on ("_package_RobotMsg"))
    (:file "_package_RobotMsg" :depends-on ("_package"))
  ))