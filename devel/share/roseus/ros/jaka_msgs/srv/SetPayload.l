;; Auto-generated. Do not edit!


(when (boundp 'jaka_msgs::SetPayload)
  (if (not (find-package "JAKA_MSGS"))
    (make-package "JAKA_MSGS"))
  (shadow 'SetPayload (find-package "JAKA_MSGS")))
(unless (find-package "JAKA_MSGS::SETPAYLOAD")
  (make-package "JAKA_MSGS::SETPAYLOAD"))
(unless (find-package "JAKA_MSGS::SETPAYLOADREQUEST")
  (make-package "JAKA_MSGS::SETPAYLOADREQUEST"))
(unless (find-package "JAKA_MSGS::SETPAYLOADRESPONSE")
  (make-package "JAKA_MSGS::SETPAYLOADRESPONSE"))

(in-package "ROS")





(defclass jaka_msgs::SetPayloadRequest
  :super ros::object
  :slots (_tool_num _mass _xc _yc _zc ))

(defmethod jaka_msgs::SetPayloadRequest
  (:init
   (&key
    ((:tool_num __tool_num) 0)
    ((:mass __mass) 0.0)
    ((:xc __xc) 0.0)
    ((:yc __yc) 0.0)
    ((:zc __zc) 0.0)
    )
   (send-super :init)
   (setq _tool_num (round __tool_num))
   (setq _mass (float __mass))
   (setq _xc (float __xc))
   (setq _yc (float __yc))
   (setq _zc (float __zc))
   self)
  (:tool_num
   (&optional __tool_num)
   (if __tool_num (setq _tool_num __tool_num)) _tool_num)
  (:mass
   (&optional __mass)
   (if __mass (setq _mass __mass)) _mass)
  (:xc
   (&optional __xc)
   (if __xc (setq _xc __xc)) _xc)
  (:yc
   (&optional __yc)
   (if __yc (setq _yc __yc)) _yc)
  (:zc
   (&optional __zc)
   (if __zc (setq _zc __zc)) _zc)
  (:serialization-length
   ()
   (+
    ;; int16 _tool_num
    2
    ;; float32 _mass
    4
    ;; float32 _xc
    4
    ;; float32 _yc
    4
    ;; float32 _zc
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _tool_num
       (write-word _tool_num s)
     ;; float32 _mass
       (sys::poke _mass (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _xc
       (sys::poke _xc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yc
       (sys::poke _yc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _zc
       (sys::poke _zc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _tool_num
     (setq _tool_num (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _mass
     (setq _mass (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _xc
     (setq _xc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yc
     (setq _yc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _zc
     (setq _zc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass jaka_msgs::SetPayloadResponse
  :super ros::object
  :slots (_ret _message ))

(defmethod jaka_msgs::SetPayloadResponse
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

(defclass jaka_msgs::SetPayload
  :super ros::object
  :slots ())

(setf (get jaka_msgs::SetPayload :md5sum-) "dbe0292cc6f9be694a93bf981dcc8471")
(setf (get jaka_msgs::SetPayload :datatype-) "jaka_msgs/SetPayload")
(setf (get jaka_msgs::SetPayload :request) jaka_msgs::SetPayloadRequest)
(setf (get jaka_msgs::SetPayload :response) jaka_msgs::SetPayloadResponse)

(defmethod jaka_msgs::SetPayloadRequest
  (:response () (instance jaka_msgs::SetPayloadResponse :init)))

(setf (get jaka_msgs::SetPayloadRequest :md5sum-) "dbe0292cc6f9be694a93bf981dcc8471")
(setf (get jaka_msgs::SetPayloadRequest :datatype-) "jaka_msgs/SetPayloadRequest")
(setf (get jaka_msgs::SetPayloadRequest :definition-)
      "int16 tool_num
float32 mass
float32 xc
float32 yc
float32 zc

---

int16 ret
string message
")

(setf (get jaka_msgs::SetPayloadResponse :md5sum-) "dbe0292cc6f9be694a93bf981dcc8471")
(setf (get jaka_msgs::SetPayloadResponse :datatype-) "jaka_msgs/SetPayloadResponse")
(setf (get jaka_msgs::SetPayloadResponse :definition-)
      "int16 tool_num
float32 mass
float32 xc
float32 yc
float32 zc

---

int16 ret
string message
")



(provide :jaka_msgs/SetPayload "dbe0292cc6f9be694a93bf981dcc8471")


