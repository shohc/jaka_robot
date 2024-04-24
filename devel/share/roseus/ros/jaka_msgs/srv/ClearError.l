;; Auto-generated. Do not edit!


(when (boundp 'jaka_msgs::ClearError)
  (if (not (find-package "JAKA_MSGS"))
    (make-package "JAKA_MSGS"))
  (shadow 'ClearError (find-package "JAKA_MSGS")))
(unless (find-package "JAKA_MSGS::CLEARERROR")
  (make-package "JAKA_MSGS::CLEARERROR"))
(unless (find-package "JAKA_MSGS::CLEARERRORREQUEST")
  (make-package "JAKA_MSGS::CLEARERRORREQUEST"))
(unless (find-package "JAKA_MSGS::CLEARERRORRESPONSE")
  (make-package "JAKA_MSGS::CLEARERRORRESPONSE"))

(in-package "ROS")





(defclass jaka_msgs::ClearErrorRequest
  :super ros::object
  :slots (_enable ))

(defmethod jaka_msgs::ClearErrorRequest
  (:init
   (&key
    ((:enable __enable) nil)
    )
   (send-super :init)
   (setq _enable __enable)
   self)
  (:enable
   (&optional (__enable :null))
   (if (not (eq __enable :null)) (setq _enable __enable)) _enable)
  (:serialization-length
   ()
   (+
    ;; bool _enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass jaka_msgs::ClearErrorResponse
  :super ros::object
  :slots (_ret _message ))

(defmethod jaka_msgs::ClearErrorResponse
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

(defclass jaka_msgs::ClearError
  :super ros::object
  :slots ())

(setf (get jaka_msgs::ClearError :md5sum-) "0fff944f16f37b02ba85acd57d94215a")
(setf (get jaka_msgs::ClearError :datatype-) "jaka_msgs/ClearError")
(setf (get jaka_msgs::ClearError :request) jaka_msgs::ClearErrorRequest)
(setf (get jaka_msgs::ClearError :response) jaka_msgs::ClearErrorResponse)

(defmethod jaka_msgs::ClearErrorRequest
  (:response () (instance jaka_msgs::ClearErrorResponse :init)))

(setf (get jaka_msgs::ClearErrorRequest :md5sum-) "0fff944f16f37b02ba85acd57d94215a")
(setf (get jaka_msgs::ClearErrorRequest :datatype-) "jaka_msgs/ClearErrorRequest")
(setf (get jaka_msgs::ClearErrorRequest :definition-)
      "bool enable

---

int16 ret
string message
")

(setf (get jaka_msgs::ClearErrorResponse :md5sum-) "0fff944f16f37b02ba85acd57d94215a")
(setf (get jaka_msgs::ClearErrorResponse :datatype-) "jaka_msgs/ClearErrorResponse")
(setf (get jaka_msgs::ClearErrorResponse :definition-)
      "bool enable

---

int16 ret
string message
")



(provide :jaka_msgs/ClearError "0fff944f16f37b02ba85acd57d94215a")


