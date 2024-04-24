;; Auto-generated. Do not edit!


(when (boundp 'jaka_msgs::GetIO)
  (if (not (find-package "JAKA_MSGS"))
    (make-package "JAKA_MSGS"))
  (shadow 'GetIO (find-package "JAKA_MSGS")))
(unless (find-package "JAKA_MSGS::GETIO")
  (make-package "JAKA_MSGS::GETIO"))
(unless (find-package "JAKA_MSGS::GETIOREQUEST")
  (make-package "JAKA_MSGS::GETIOREQUEST"))
(unless (find-package "JAKA_MSGS::GETIORESPONSE")
  (make-package "JAKA_MSGS::GETIORESPONSE"))

(in-package "ROS")





(defclass jaka_msgs::GetIORequest
  :super ros::object
  :slots (_signal _path _type _index ))

(defmethod jaka_msgs::GetIORequest
  (:init
   (&key
    ((:signal __signal) "")
    ((:path __path) 0)
    ((:type __type) 0)
    ((:index __index) 0)
    )
   (send-super :init)
   (setq _signal (string __signal))
   (setq _path (round __path))
   (setq _type (round __type))
   (setq _index (round __index))
   self)
  (:signal
   (&optional __signal)
   (if __signal (setq _signal __signal)) _signal)
  (:path
   (&optional __path)
   (if __path (setq _path __path)) _path)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:serialization-length
   ()
   (+
    ;; string _signal
    4 (length _signal)
    ;; int16 _path
    2
    ;; int16 _type
    2
    ;; int16 _index
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _signal
       (write-long (length _signal) s) (princ _signal s)
     ;; int16 _path
       (write-word _path s)
     ;; int16 _type
       (write-word _type s)
     ;; int16 _index
       (write-word _index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _signal
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _signal (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _path
     (setq _path (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _type
     (setq _type (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _index
     (setq _index (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass jaka_msgs::GetIOResponse
  :super ros::object
  :slots (_value _message ))

(defmethod jaka_msgs::GetIOResponse
  (:init
   (&key
    ((:value __value) 0.0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _value (float __value))
   (setq _message (string __message))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; float32 _value
    4
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _value
       (sys::poke _value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _value
     (setq _value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass jaka_msgs::GetIO
  :super ros::object
  :slots ())

(setf (get jaka_msgs::GetIO :md5sum-) "6ff1cb5f4f299720705884f0c89f9d08")
(setf (get jaka_msgs::GetIO :datatype-) "jaka_msgs/GetIO")
(setf (get jaka_msgs::GetIO :request) jaka_msgs::GetIORequest)
(setf (get jaka_msgs::GetIO :response) jaka_msgs::GetIOResponse)

(defmethod jaka_msgs::GetIORequest
  (:response () (instance jaka_msgs::GetIOResponse :init)))

(setf (get jaka_msgs::GetIORequest :md5sum-) "6ff1cb5f4f299720705884f0c89f9d08")
(setf (get jaka_msgs::GetIORequest :datatype-) "jaka_msgs/GetIORequest")
(setf (get jaka_msgs::GetIORequest :definition-)
      "string signal
int16 path
int16 type
int16 index

---

float32 value
string message
")

(setf (get jaka_msgs::GetIOResponse :md5sum-) "6ff1cb5f4f299720705884f0c89f9d08")
(setf (get jaka_msgs::GetIOResponse :datatype-) "jaka_msgs/GetIOResponse")
(setf (get jaka_msgs::GetIOResponse :definition-)
      "string signal
int16 path
int16 type
int16 index

---

float32 value
string message
")



(provide :jaka_msgs/GetIO "6ff1cb5f4f299720705884f0c89f9d08")


