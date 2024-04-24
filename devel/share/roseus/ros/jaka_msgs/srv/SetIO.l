;; Auto-generated. Do not edit!


(when (boundp 'jaka_msgs::SetIO)
  (if (not (find-package "JAKA_MSGS"))
    (make-package "JAKA_MSGS"))
  (shadow 'SetIO (find-package "JAKA_MSGS")))
(unless (find-package "JAKA_MSGS::SETIO")
  (make-package "JAKA_MSGS::SETIO"))
(unless (find-package "JAKA_MSGS::SETIOREQUEST")
  (make-package "JAKA_MSGS::SETIOREQUEST"))
(unless (find-package "JAKA_MSGS::SETIORESPONSE")
  (make-package "JAKA_MSGS::SETIORESPONSE"))

(in-package "ROS")





(defclass jaka_msgs::SetIORequest
  :super ros::object
  :slots (_signal _type _index _value ))

(defmethod jaka_msgs::SetIORequest
  (:init
   (&key
    ((:signal __signal) "")
    ((:type __type) 0)
    ((:index __index) 0)
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _signal (string __signal))
   (setq _type (round __type))
   (setq _index (round __index))
   (setq _value (float __value))
   self)
  (:signal
   (&optional __signal)
   (if __signal (setq _signal __signal)) _signal)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _signal
    4 (length _signal)
    ;; int16 _type
    2
    ;; int16 _index
    2
    ;; float32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _signal
       (write-long (length _signal) s) (princ _signal s)
     ;; int16 _type
       (write-word _type s)
     ;; int16 _index
       (write-word _index s)
     ;; float32 _value
       (sys::poke _value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _signal
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _signal (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _type
     (setq _type (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _index
     (setq _index (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _value
     (setq _value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass jaka_msgs::SetIOResponse
  :super ros::object
  :slots (_ret _message ))

(defmethod jaka_msgs::SetIOResponse
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

(defclass jaka_msgs::SetIO
  :super ros::object
  :slots ())

(setf (get jaka_msgs::SetIO :md5sum-) "d70f55fb8350e7d75cb38e91f1bc0373")
(setf (get jaka_msgs::SetIO :datatype-) "jaka_msgs/SetIO")
(setf (get jaka_msgs::SetIO :request) jaka_msgs::SetIORequest)
(setf (get jaka_msgs::SetIO :response) jaka_msgs::SetIOResponse)

(defmethod jaka_msgs::SetIORequest
  (:response () (instance jaka_msgs::SetIOResponse :init)))

(setf (get jaka_msgs::SetIORequest :md5sum-) "d70f55fb8350e7d75cb38e91f1bc0373")
(setf (get jaka_msgs::SetIORequest :datatype-) "jaka_msgs/SetIORequest")
(setf (get jaka_msgs::SetIORequest :definition-)
      "string signal
int16 type
int16 index
float32 value

---

int16 ret
string message
")

(setf (get jaka_msgs::SetIOResponse :md5sum-) "d70f55fb8350e7d75cb38e91f1bc0373")
(setf (get jaka_msgs::SetIOResponse :datatype-) "jaka_msgs/SetIOResponse")
(setf (get jaka_msgs::SetIOResponse :definition-)
      "string signal
int16 type
int16 index
float32 value

---

int16 ret
string message
")



(provide :jaka_msgs/SetIO "d70f55fb8350e7d75cb38e91f1bc0373")


