;; Auto-generated. Do not edit!


(when (boundp 'jaka_msgs::ServoMove)
  (if (not (find-package "JAKA_MSGS"))
    (make-package "JAKA_MSGS"))
  (shadow 'ServoMove (find-package "JAKA_MSGS")))
(unless (find-package "JAKA_MSGS::SERVOMOVE")
  (make-package "JAKA_MSGS::SERVOMOVE"))
(unless (find-package "JAKA_MSGS::SERVOMOVEREQUEST")
  (make-package "JAKA_MSGS::SERVOMOVEREQUEST"))
(unless (find-package "JAKA_MSGS::SERVOMOVERESPONSE")
  (make-package "JAKA_MSGS::SERVOMOVERESPONSE"))

(in-package "ROS")





(defclass jaka_msgs::ServoMoveRequest
  :super ros::object
  :slots (_pose _speed ))

(defmethod jaka_msgs::ServoMoveRequest
  (:init
   (&key
    ((:pose __pose) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:speed __speed) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _speed __speed)
   self)
  (:pose
   (&optional __pose)
   (if __pose (setq _pose __pose)) _pose)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; float32[] _pose
    (* 4    (length _pose)) 4
    ;; float32[] _speed
    (* 4    (length _speed)) 4
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
     ;; float32[] _speed
     (write-long (length _speed) s)
     (dotimes (i (length _speed))
       (sys::poke (elt _speed i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
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
   ;; float32[] _speed
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _speed (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _speed i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass jaka_msgs::ServoMoveResponse
  :super ros::object
  :slots (_ret _message ))

(defmethod jaka_msgs::ServoMoveResponse
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

(defclass jaka_msgs::ServoMove
  :super ros::object
  :slots ())

(setf (get jaka_msgs::ServoMove :md5sum-) "ea058e08a9ca2790743a486fd4bfb151")
(setf (get jaka_msgs::ServoMove :datatype-) "jaka_msgs/ServoMove")
(setf (get jaka_msgs::ServoMove :request) jaka_msgs::ServoMoveRequest)
(setf (get jaka_msgs::ServoMove :response) jaka_msgs::ServoMoveResponse)

(defmethod jaka_msgs::ServoMoveRequest
  (:response () (instance jaka_msgs::ServoMoveResponse :init)))

(setf (get jaka_msgs::ServoMoveRequest :md5sum-) "ea058e08a9ca2790743a486fd4bfb151")
(setf (get jaka_msgs::ServoMoveRequest :datatype-) "jaka_msgs/ServoMoveRequest")
(setf (get jaka_msgs::ServoMoveRequest :definition-)
      "float32[] pose
float32[] speed
---

int16 ret
string message
")

(setf (get jaka_msgs::ServoMoveResponse :md5sum-) "ea058e08a9ca2790743a486fd4bfb151")
(setf (get jaka_msgs::ServoMoveResponse :datatype-) "jaka_msgs/ServoMoveResponse")
(setf (get jaka_msgs::ServoMoveResponse :definition-)
      "float32[] pose
float32[] speed
---

int16 ret
string message
")



(provide :jaka_msgs/ServoMove "ea058e08a9ca2790743a486fd4bfb151")


