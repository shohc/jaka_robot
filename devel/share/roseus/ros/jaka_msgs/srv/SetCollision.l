;; Auto-generated. Do not edit!


(when (boundp 'jaka_msgs::SetCollision)
  (if (not (find-package "JAKA_MSGS"))
    (make-package "JAKA_MSGS"))
  (shadow 'SetCollision (find-package "JAKA_MSGS")))
(unless (find-package "JAKA_MSGS::SETCOLLISION")
  (make-package "JAKA_MSGS::SETCOLLISION"))
(unless (find-package "JAKA_MSGS::SETCOLLISIONREQUEST")
  (make-package "JAKA_MSGS::SETCOLLISIONREQUEST"))
(unless (find-package "JAKA_MSGS::SETCOLLISIONRESPONSE")
  (make-package "JAKA_MSGS::SETCOLLISIONRESPONSE"))

(in-package "ROS")





(defclass jaka_msgs::SetCollisionRequest
  :super ros::object
  :slots (_is_enable _value ))

(defmethod jaka_msgs::SetCollisionRequest
  (:init
   (&key
    ((:is_enable __is_enable) nil)
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _is_enable __is_enable)
   (setq _value (round __value))
   self)
  (:is_enable
   (&optional (__is_enable :null))
   (if (not (eq __is_enable :null)) (setq _is_enable __is_enable)) _is_enable)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; bool _is_enable
    1
    ;; int16 _value
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_enable
       (if _is_enable (write-byte -1 s) (write-byte 0 s))
     ;; int16 _value
       (write-word _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_enable
     (setq _is_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int16 _value
     (setq _value (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass jaka_msgs::SetCollisionResponse
  :super ros::object
  :slots (_ret _message ))

(defmethod jaka_msgs::SetCollisionResponse
  (:init
   (&key
    ((:ret __ret) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _ret (round __ret))
   (setq _message (string __message))
   self)
  (:ret
   (&optional __ret)
   (if __ret (setq _ret __ret)) _ret)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; int16 _ret
    2
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _ret
       (write-word _ret s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _ret
     (setq _ret (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass jaka_msgs::SetCollision
  :super ros::object
  :slots ())

(setf (get jaka_msgs::SetCollision :md5sum-) "192c4b02f65b62b6f0470ca351b4f7cc")
(setf (get jaka_msgs::SetCollision :datatype-) "jaka_msgs/SetCollision")
(setf (get jaka_msgs::SetCollision :request) jaka_msgs::SetCollisionRequest)
(setf (get jaka_msgs::SetCollision :response) jaka_msgs::SetCollisionResponse)

(defmethod jaka_msgs::SetCollisionRequest
  (:response () (instance jaka_msgs::SetCollisionResponse :init)))

(setf (get jaka_msgs::SetCollisionRequest :md5sum-) "192c4b02f65b62b6f0470ca351b4f7cc")
(setf (get jaka_msgs::SetCollisionRequest :datatype-) "jaka_msgs/SetCollisionRequest")
(setf (get jaka_msgs::SetCollisionRequest :definition-)
      "bool is_enable
int16 value

---

int16 ret
string message
")

(setf (get jaka_msgs::SetCollisionResponse :md5sum-) "192c4b02f65b62b6f0470ca351b4f7cc")
(setf (get jaka_msgs::SetCollisionResponse :datatype-) "jaka_msgs/SetCollisionResponse")
(setf (get jaka_msgs::SetCollisionResponse :definition-)
      "bool is_enable
int16 value

---

int16 ret
string message
")



(provide :jaka_msgs/SetCollision "192c4b02f65b62b6f0470ca351b4f7cc")


