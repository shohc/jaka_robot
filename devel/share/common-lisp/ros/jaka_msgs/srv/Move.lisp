; Auto-generated. Do not edit!


(cl:in-package jaka_msgs-srv)


;//! \htmlinclude Move-request.msg.html

(cl:defclass <Move-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (has_ref
    :reader has_ref
    :initarg :has_ref
    :type cl:boolean
    :initform cl:nil)
   (ref_joint
    :reader ref_joint
    :initarg :ref_joint
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (mvvelo
    :reader mvvelo
    :initarg :mvvelo
    :type cl:float
    :initform 0.0)
   (mvacc
    :reader mvacc
    :initarg :mvacc
    :type cl:float
    :initform 0.0)
   (mvtime
    :reader mvtime
    :initarg :mvtime
    :type cl:float
    :initform 0.0)
   (mvradii
    :reader mvradii
    :initarg :mvradii
    :type cl:float
    :initform 0.0)
   (coord_mode
    :reader coord_mode
    :initarg :coord_mode
    :type cl:fixnum
    :initform 0)
   (index
    :reader index
    :initarg :index
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Move-request (<Move-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Move-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Move-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jaka_msgs-srv:<Move-request> is deprecated: use jaka_msgs-srv:Move-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <Move-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaka_msgs-srv:pose-val is deprecated.  Use jaka_msgs-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'has_ref-val :lambda-list '(m))
(cl:defmethod has_ref-val ((m <Move-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaka_msgs-srv:has_ref-val is deprecated.  Use jaka_msgs-srv:has_ref instead.")
  (has_ref m))

(cl:ensure-generic-function 'ref_joint-val :lambda-list '(m))
(cl:defmethod ref_joint-val ((m <Move-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaka_msgs-srv:ref_joint-val is deprecated.  Use jaka_msgs-srv:ref_joint instead.")
  (ref_joint m))

(cl:ensure-generic-function 'mvvelo-val :lambda-list '(m))
(cl:defmethod mvvelo-val ((m <Move-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaka_msgs-srv:mvvelo-val is deprecated.  Use jaka_msgs-srv:mvvelo instead.")
  (mvvelo m))

(cl:ensure-generic-function 'mvacc-val :lambda-list '(m))
(cl:defmethod mvacc-val ((m <Move-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaka_msgs-srv:mvacc-val is deprecated.  Use jaka_msgs-srv:mvacc instead.")
  (mvacc m))

(cl:ensure-generic-function 'mvtime-val :lambda-list '(m))
(cl:defmethod mvtime-val ((m <Move-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaka_msgs-srv:mvtime-val is deprecated.  Use jaka_msgs-srv:mvtime instead.")
  (mvtime m))

(cl:ensure-generic-function 'mvradii-val :lambda-list '(m))
(cl:defmethod mvradii-val ((m <Move-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaka_msgs-srv:mvradii-val is deprecated.  Use jaka_msgs-srv:mvradii instead.")
  (mvradii m))

(cl:ensure-generic-function 'coord_mode-val :lambda-list '(m))
(cl:defmethod coord_mode-val ((m <Move-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaka_msgs-srv:coord_mode-val is deprecated.  Use jaka_msgs-srv:coord_mode instead.")
  (coord_mode m))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <Move-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaka_msgs-srv:index-val is deprecated.  Use jaka_msgs-srv:index instead.")
  (index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Move-request>) ostream)
  "Serializes a message object of type '<Move-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'pose))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'has_ref) 1 0)) ostream)
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mvvelo))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mvacc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mvtime))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mvradii))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'coord_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Move-request>) istream)
  "Deserializes a message object of type '<Move-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pose)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:setf (cl:slot-value msg 'has_ref) (cl:not (cl:zerop (cl:read-byte istream))))
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mvvelo) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mvacc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mvtime) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mvradii) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'coord_mode) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Move-request>)))
  "Returns string type for a service object of type '<Move-request>"
  "jaka_msgs/MoveRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Move-request)))
  "Returns string type for a service object of type 'Move-request"
  "jaka_msgs/MoveRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Move-request>)))
  "Returns md5sum for a message object of type '<Move-request>"
  "bfcaec3e81ace5826d9d96166632c9d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Move-request)))
  "Returns md5sum for a message object of type 'Move-request"
  "bfcaec3e81ace5826d9d96166632c9d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Move-request>)))
  "Returns full string definition for message of type '<Move-request>"
  (cl:format cl:nil "float32[] pose~%bool has_ref~%float32[] ref_joint~%float32 mvvelo~%float32 mvacc~%float32 mvtime~%float32 mvradii~%int16 coord_mode~%int16 index~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Move-request)))
  "Returns full string definition for message of type 'Move-request"
  (cl:format cl:nil "float32[] pose~%bool has_ref~%float32[] ref_joint~%float32 mvvelo~%float32 mvacc~%float32 mvtime~%float32 mvradii~%int16 coord_mode~%int16 index~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Move-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ref_joint) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     4
     4
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Move-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Move-request
    (cl:cons ':pose (pose msg))
    (cl:cons ':has_ref (has_ref msg))
    (cl:cons ':ref_joint (ref_joint msg))
    (cl:cons ':mvvelo (mvvelo msg))
    (cl:cons ':mvacc (mvacc msg))
    (cl:cons ':mvtime (mvtime msg))
    (cl:cons ':mvradii (mvradii msg))
    (cl:cons ':coord_mode (coord_mode msg))
    (cl:cons ':index (index msg))
))
;//! \htmlinclude Move-response.msg.html

(cl:defclass <Move-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:fixnum
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass Move-response (<Move-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Move-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Move-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jaka_msgs-srv:<Move-response> is deprecated: use jaka_msgs-srv:Move-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <Move-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaka_msgs-srv:ret-val is deprecated.  Use jaka_msgs-srv:ret instead.")
  (ret m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Move-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaka_msgs-srv:message-val is deprecated.  Use jaka_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Move-response>) ostream)
  "Serializes a message object of type '<Move-response>"
  (cl:let* ((signed (cl:slot-value msg 'ret)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Move-response>) istream)
  "Deserializes a message object of type '<Move-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ret) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Move-response>)))
  "Returns string type for a service object of type '<Move-response>"
  "jaka_msgs/MoveResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Move-response)))
  "Returns string type for a service object of type 'Move-response"
  "jaka_msgs/MoveResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Move-response>)))
  "Returns md5sum for a message object of type '<Move-response>"
  "bfcaec3e81ace5826d9d96166632c9d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Move-response)))
  "Returns md5sum for a message object of type 'Move-response"
  "bfcaec3e81ace5826d9d96166632c9d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Move-response>)))
  "Returns full string definition for message of type '<Move-response>"
  (cl:format cl:nil "~%int16 ret~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Move-response)))
  "Returns full string definition for message of type 'Move-response"
  (cl:format cl:nil "~%int16 ret~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Move-response>))
  (cl:+ 0
     2
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Move-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Move-response
    (cl:cons ':ret (ret msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Move)))
  'Move-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Move)))
  'Move-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Move)))
  "Returns string type for a service object of type '<Move>"
  "jaka_msgs/Move")