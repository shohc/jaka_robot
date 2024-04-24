;; Auto-generated. Do not edit!


(when (boundp 'jaka_msgs::GetIK)
  (if (not (find-package "JAKA_MSGS"))
    (make-package "JAKA_MSGS"))
  (shadow 'GetIK (find-package "JAKA_MSGS")))
(unless (find-package "JAKA_MSGS::GETIK")
  (make-package "JAKA_MSGS::GETIK"))
(unless (find-package "JAKA_MSGS::GETIKREQUEST")
  (make-package "JAKA_MSGS::GETIKREQUEST"))
(unless (find-package "JAKA_MSGS::GETIKRESPONSE")
  (make-package "JAKA_MSGS::GETIKRESPONSE"))

(in-package "ROS")





(defclass jaka_msgs::GetIKRequest
  :super ros::object
  :slots (_ref_joint _cartesian_pose ))

(defmethod jaka_msgs::GetIKRequest
  (:init
   (&key
    ((:ref_joint __ref_joint) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:cartesian_pose __cartesian_pose) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _ref_joint __ref_joint)
   (setq _cartesian_pose __cartesian_pose)
   self)
  (:ref_joint
   (&optional __ref_joint)
   (if __ref_joint (setq _ref_joint __ref_joint)) _ref_joint)
  (:cartesian_pose
   (&optional __cartesian_pose)
   (if __cartesian_pose (setq _cartesian_pose __cartesian_pose)) _cartesian_pose)
  (:serialization-length
   ()
   (+
    ;; float32[] _ref_joint
    (* 4    (length _ref_joint)) 4
    ;; float32[] _cartesian_pose
    (* 4    (length _cartesian_pose)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _ref_joint
     (write-long (length _ref_joint) s)
     (dotimes (i (length _ref_joint))
       (sys::poke (elt _ref_joint i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _cartesian_pose
     (write-long (length _cartesian_pose) s)
     (dotimes (i (length _cartesian_pose))
       (sys::poke (elt _cartesian_pose i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _ref_joint
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ref_joint (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _ref_joint i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _cartesian_pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cartesian_pose (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cartesian_pose i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass jaka_msgs::GetIKResponse
  :super ros::object
  :slots (_joint _message ))

(defmethod jaka_msgs::GetIKResponse
  (:init
   (&key
    ((:joint __joint) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:message __message) "")
    )
   (send-super :init)
   (setq _joint __joint)
   (setq _message (string __message))
   self)
  (:joint
   (&optional __joint)
   (if __joint (setq _joint __joint)) _joint)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; float32[] _joint
    (* 4    (length _joint)) 4
    ;; string _message
    4 (length _message)
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
     ;; string _message
       (write-long (length _message) s) (princ _message s)
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
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass jaka_msgs::GetIK
  :super ros::object
  :slots ())

(setf (get jaka_msgs::GetIK :md5sum-) "33a7ddff09d4b5dc0322950ee926aea6")
(setf (get jaka_msgs::GetIK :datatype-) "jaka_msgs/GetIK")
(setf (get jaka_msgs::GetIK :request) jaka_msgs::GetIKRequest)
(setf (get jaka_msgs::GetIK :response) jaka_msgs::GetIKResponse)

(defmethod jaka_msgs::GetIKRequest
  (:response () (instance jaka_msgs::GetIKResponse :init)))

(setf (get jaka_msgs::GetIKRequest :md5sum-) "33a7ddff09d4b5dc0322950ee926aea6")
(setf (get jaka_msgs::GetIKRequest :datatype-) "jaka_msgs/GetIKRequest")
(setf (get jaka_msgs::GetIKRequest :definition-)
      "float32[] ref_joint
float32[] cartesian_pose

---

float32[] joint
string message
")

(setf (get jaka_msgs::GetIKResponse :md5sum-) "33a7ddff09d4b5dc0322950ee926aea6")
(setf (get jaka_msgs::GetIKResponse :datatype-) "jaka_msgs/GetIKResponse")
(setf (get jaka_msgs::GetIKResponse :definition-)
      "float32[] ref_joint
float32[] cartesian_pose

---

float32[] joint
string message
")



(provide :jaka_msgs/GetIK "33a7ddff09d4b5dc0322950ee926aea6")


