;; Auto-generated. Do not edit!


(when (boundp 'jaka_msgs::GetFK)
  (if (not (find-package "JAKA_MSGS"))
    (make-package "JAKA_MSGS"))
  (shadow 'GetFK (find-package "JAKA_MSGS")))
(unless (find-package "JAKA_MSGS::GETFK")
  (make-package "JAKA_MSGS::GETFK"))
(unless (find-package "JAKA_MSGS::GETFKREQUEST")
  (make-package "JAKA_MSGS::GETFKREQUEST"))
(unless (find-package "JAKA_MSGS::GETFKRESPONSE")
  (make-package "JAKA_MSGS::GETFKRESPONSE"))

(in-package "ROS")





(defclass jaka_msgs::GetFKRequest
  :super ros::object
  :slots (_joint ))

(defmethod jaka_msgs::GetFKRequest
  (:init
   (&key
    ((:joint __joint) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint __joint)
   self)
  (:joint
   (&optional __joint)
   (if __joint (setq _joint __joint)) _joint)
  (:serialization-length
   ()
   (+
    ;; float32[] _joint
    (* 4    (length _joint)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _joint
     (write-long (length _joint) s)
     (dotimes (i (length _joint))
       (sys::poke (elt _joint i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _joint
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass jaka_msgs::GetFKResponse
  :super ros::object
  :slots (_cartesian_pose _message ))

(defmethod jaka_msgs::GetFKResponse
  (:init
   (&key
    ((:cartesian_pose __cartesian_pose) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:message __message) "")
    )
   (send-super :init)
   (setq _cartesian_pose __cartesian_pose)
   (setq _message (string __message))
   self)
  (:cartesian_pose
   (&optional __cartesian_pose)
   (if __cartesian_pose (setq _cartesian_pose __cartesian_pose)) _cartesian_pose)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; float32[] _cartesian_pose
    (* 4    (length _cartesian_pose)) 4
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _cartesian_pose
     (write-long (length _cartesian_pose) s)
     (dotimes (i (length _cartesian_pose))
       (sys::poke (elt _cartesian_pose i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _cartesian_pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cartesian_pose (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cartesian_pose i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass jaka_msgs::GetFK
  :super ros::object
  :slots ())

(setf (get jaka_msgs::GetFK :md5sum-) "10d9bfd5c1accf4678c49f520f9480b8")
(setf (get jaka_msgs::GetFK :datatype-) "jaka_msgs/GetFK")
(setf (get jaka_msgs::GetFK :request) jaka_msgs::GetFKRequest)
(setf (get jaka_msgs::GetFK :response) jaka_msgs::GetFKResponse)

(defmethod jaka_msgs::GetFKRequest
  (:response () (instance jaka_msgs::GetFKResponse :init)))

(setf (get jaka_msgs::GetFKRequest :md5sum-) "10d9bfd5c1accf4678c49f520f9480b8")
(setf (get jaka_msgs::GetFKRequest :datatype-) "jaka_msgs/GetFKRequest")
(setf (get jaka_msgs::GetFKRequest :definition-)
      "float32[]  joint

---

float32[] cartesian_pose
string message
")

(setf (get jaka_msgs::GetFKResponse :md5sum-) "10d9bfd5c1accf4678c49f520f9480b8")
(setf (get jaka_msgs::GetFKResponse :datatype-) "jaka_msgs/GetFKResponse")
(setf (get jaka_msgs::GetFKResponse :definition-)
      "float32[]  joint

---

float32[] cartesian_pose
string message
")



(provide :jaka_msgs/GetFK "10d9bfd5c1accf4678c49f520f9480b8")


