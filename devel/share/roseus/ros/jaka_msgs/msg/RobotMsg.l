;; Auto-generated. Do not edit!


(when (boundp 'jaka_msgs::RobotMsg)
  (if (not (find-package "JAKA_MSGS"))
    (make-package "JAKA_MSGS"))
  (shadow 'RobotMsg (find-package "JAKA_MSGS")))
(unless (find-package "JAKA_MSGS::ROBOTMSG")
  (make-package "JAKA_MSGS::ROBOTMSG"))

(in-package "ROS")
;;//! \htmlinclude RobotMsg.msg.html


(defclass jaka_msgs::RobotMsg
  :super ros::object
  :slots (_motion_state _power_state _servo_state _collision_state ))

(defmethod jaka_msgs::RobotMsg
  (:init
   (&key
    ((:motion_state __motion_state) 0)
    ((:power_state __power_state) 0)
    ((:servo_state __servo_state) 0)
    ((:collision_state __collision_state) 0)
    )
   (send-super :init)
   (setq _motion_state (round __motion_state))
   (setq _power_state (round __power_state))
   (setq _servo_state (round __servo_state))
   (setq _collision_state (round __collision_state))
   self)
  (:motion_state
   (&optional __motion_state)
   (if __motion_state (setq _motion_state __motion_state)) _motion_state)
  (:power_state
   (&optional __power_state)
   (if __power_state (setq _power_state __power_state)) _power_state)
  (:servo_state
   (&optional __servo_state)
   (if __servo_state (setq _servo_state __servo_state)) _servo_state)
  (:collision_state
   (&optional __collision_state)
   (if __collision_state (setq _collision_state __collision_state)) _collision_state)
  (:serialization-length
   ()
   (+
    ;; int16 _motion_state
    2
    ;; int16 _power_state
    2
    ;; int16 _servo_state
    2
    ;; int16 _collision_state
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _motion_state
       (write-word _motion_state s)
     ;; int16 _power_state
       (write-word _power_state s)
     ;; int16 _servo_state
       (write-word _servo_state s)
     ;; int16 _collision_state
       (write-word _collision_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _motion_state
     (setq _motion_state (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _power_state
     (setq _power_state (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _servo_state
     (setq _servo_state (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _collision_state
     (setq _collision_state (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get jaka_msgs::RobotMsg :md5sum-) "cb4726a69178af69dc31d5013f095556")
(setf (get jaka_msgs::RobotMsg :datatype-) "jaka_msgs/RobotMsg")
(setf (get jaka_msgs::RobotMsg :definition-)
      "int16 motion_state
int16 power_state
int16 servo_state
int16 collision_state
")



(provide :jaka_msgs/RobotMsg "cb4726a69178af69dc31d5013f095556")


