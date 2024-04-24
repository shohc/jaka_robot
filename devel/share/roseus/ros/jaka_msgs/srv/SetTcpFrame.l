;; Auto-generated. Do not edit!


(when (boundp 'jaka_msgs::SetTcpFrame)
  (if (not (find-package "JAKA_MSGS"))
    (make-package "JAKA_MSGS"))
  (shadow 'SetTcpFrame (find-package "JAKA_MSGS")))
(unless (find-package "JAKA_MSGS::SETTCPFRAME")
  (make-package "JAKA_MSGS::SETTCPFRAME"))
(unless (find-package "JAKA_MSGS::SETTCPFRAMEREQUEST")
  (make-package "JAKA_MSGS::SETTCPFRAMEREQUEST"))
(unless (find-package "JAKA_MSGS::SETTCPFRAMERESPONSE")
  (make-package "JAKA_MSGS::SETTCPFRAMERESPONSE"))

(in-package "ROS")





(defclass jaka_msgs::SetTcpFrameRequest
  :super ros::object
  :slots (_pose _tool_num ))

(defmethod jaka_msgs::SetTcpFrameRequest
  (:init
   (&key
    ((:pose __pose) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:tool_num __tool_num) 0)
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _tool_num (round __tool_num))
   self)
  (:pose
   (&optional __pose)
   (if __pose (setq _pose __pose)) _pose)
  (:tool_num
   (&optional __tool_num)
   (if __tool_num (setq _tool_num __tool_num)) _tool_num)
  (:serialization-length
   ()
   (+
    ;; float32[] _pose
    (* 4    (length _pose)) 4
    ;; int16 _tool_num
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _pose
     (write-long (length _pose) s)
     (dotimes (i (length _pose))
       (sys::poke (elt _pose i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int16 _tool_num
       (write-word _tool_num s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pose i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int16 _tool_num
     (setq _tool_num (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass jaka_msgs::SetTcpFrameResponse
  :super ros::object
  :slots (_ret _message ))

(defmethod jaka_msgs::SetTcpFrameResponse
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

(defclass jaka_msgs::SetTcpFrame
  :super ros::object
  :slots ())

(setf (get jaka_msgs::SetTcpFrame :md5sum-) "3d15cf469e59f026a4e4b350932a8496")
(setf (get jaka_msgs::SetTcpFrame :datatype-) "jaka_msgs/SetTcpFrame")
(setf (get jaka_msgs::SetTcpFrame :request) jaka_msgs::SetTcpFrameRequest)
(setf (get jaka_msgs::SetTcpFrame :response) jaka_msgs::SetTcpFrameResponse)

(defmethod jaka_msgs::SetTcpFrameRequest
  (:response () (instance jaka_msgs::SetTcpFrameResponse :init)))

(setf (get jaka_msgs::SetTcpFrameRequest :md5sum-) "3d15cf469e59f026a4e4b350932a8496")
(setf (get jaka_msgs::SetTcpFrameRequest :datatype-) "jaka_msgs/SetTcpFrameRequest")
(setf (get jaka_msgs::SetTcpFrameRequest :definition-)
      "float32[] pose
int16 tool_num

---

int16 ret
string message
")

(setf (get jaka_msgs::SetTcpFrameResponse :md5sum-) "3d15cf469e59f026a4e4b350932a8496")
(setf (get jaka_msgs::SetTcpFrameResponse :datatype-) "jaka_msgs/SetTcpFrameResponse")
(setf (get jaka_msgs::SetTcpFrameResponse :definition-)
      "float32[] pose
int16 tool_num

---

int16 ret
string message
")



(provide :jaka_msgs/SetTcpFrame "3d15cf469e59f026a4e4b350932a8496")


