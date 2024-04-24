; Auto-generated. Do not edit!


(cl:in-package jaka_msgs-srv)


;//! \htmlinclude GetIK-request.msg.html

(cl:defclass <GetIK-request> (roslisp-msg-protocol:ros-message)
  ((ref_joint
    :reader ref_joint
    :initarg :ref_joint
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (cartesian_pose
    :reader cartesian_pose
    :initarg :cartesian_pose
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass GetIK-request (<GetIK-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetIK-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetIK-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jaka_msgs-srv:<GetIK-request> is deprecated: use jaka_msgs-srv:GetIK-request instead.")))

(cl:ensure-generic-function 'ref_joint-val :lambda-list '(m))
(cl:defmethod ref_joint-val ((m <GetIK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaka_msgs-srv:ref_joint-val is deprecated.  Use jaka_msgs-srv:ref_joint instead.")
  (ref_joint m))

(cl:ensure-generic-function 'cartesian_pose-val :lambda-list '(m))
(cl:defmethod cartesian_pose-val ((m <GetIK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaka_msgs-srv:cartesian_pose-val is deprecated.  Use jaka_msgs-srv:cartesian_pose instead.")
  (cartesian_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetIK-request>) ostream)
  "Serializes a message object of type '<GetIK-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ref_joint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'ref_joint))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cartesian_pose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'cartesian_pose))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetIK-request>) istream)
  "Deserializes a message object of type '<GetIK-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ref_joint) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ref_joint)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cartesian_pose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cartesian_pose)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetIK-request>)))
  "Returns string type for a service object of type '<GetIK-request>"
  "jaka_msgs/GetIKRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIK-request)))
  "Returns string type for a service object of type 'GetIK-request"
  "jaka_msgs/GetIKRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetIK-request>)))
  "Returns md5sum for a message object of type '<GetIK-request>"
  "33a7ddff09d4b5dc0322950ee926aea6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetIK-request)))
  "Returns md5sum for a message object of type 'GetIK-request"
  "33a7ddff09d4b5dc0322950ee926aea6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetIK-request>)))
  "Returns full string definition for message of type '<GetIK-request>"
  (cl:format cl:nil "float32[] ref_joint~%float32[] cartesian_pose~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetIK-request)))
  "Returns full string definition for message of type 'GetIK-request"
  (cl:format cl:nil "float32[] ref_joint~%float32[] cartesian_pose~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetIK-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ref_joint) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cartesian_pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetIK-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetIK-request
    (cl:cons ':ref_joint (ref_joint msg))
    (cl:cons ':cartesian_pose (cartesian_pose msg))
))
;//! \htmlinclude GetIK-response.msg.html

(cl:defclass <GetIK-response> (roslisp-msg-protocol:ros-message)
  ((joint
    :reader joint
    :initarg :joint
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass GetIK-response (<GetIK-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetIK-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetIK-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jaka_msgs-srv:<GetIK-response> is deprecated: use jaka_msgs-srv:GetIK-response instead.")))

(cl:ensure-generic-function 'joint-val :lambda-list '(m))
(cl:defmethod joint-val ((m <GetIK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaka_msgs-srv:joint-val is deprecated.  Use jaka_msgs-srv:joint instead.")
  (joint m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetIK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaka_msgs-srv:message-val is deprecated.  Use jaka_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetIK-response>) ostream)
  "Serializes a message object of type '<GetIK-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'joint))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetIK-response>) istream)
  "Deserializes a message object of type '<GetIK-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetIK-response>)))
  "Returns string type for a service object of type '<GetIK-response>"
  "jaka_msgs/GetIKResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIK-response)))
  "Returns string type for a service object of type 'GetIK-response"
  "jaka_msgs/GetIKResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetIK-response>)))
  "Returns md5sum for a message object of type '<GetIK-response>"
  "33a7ddff09d4b5dc0322950ee926aea6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetIK-response)))
  "Returns md5sum for a message object of type 'GetIK-response"
  "33a7ddff09d4b5dc0322950ee926aea6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetIK-response>)))
  "Returns full string definition for message of type '<GetIK-response>"
  (cl:format cl:nil "~%float32[] joint~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetIK-response)))
  "Returns full string definition for message of type 'GetIK-response"
  (cl:format cl:nil "~%float32[] joint~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetIK-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetIK-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetIK-response
    (cl:cons ':joint (joint msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetIK)))
  'GetIK-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetIK)))
  'GetIK-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIK)))
  "Returns string type for a service object of type '<GetIK>"
  "jaka_msgs/GetIK")