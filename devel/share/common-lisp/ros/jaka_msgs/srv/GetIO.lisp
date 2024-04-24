; Auto-generated. Do not edit!


(cl:in-package jaka_msgs-srv)


;//! \htmlinclude GetIO-request.msg.html

(cl:defclass <GetIO-request> (roslisp-msg-protocol:ros-message)
  ((signal
    :reader signal
    :initarg :signal
    :type cl:string
    :initform "")
   (path
    :reader path
    :initarg :path
    :type cl:fixnum
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (index
    :reader index
    :initarg :index
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetIO-request (<GetIO-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetIO-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetIO-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jaka_msgs-srv:<GetIO-request> is deprecated: use jaka_msgs-srv:GetIO-request instead.")))

(cl:ensure-generic-function 'signal-val :lambda-list '(m))
(cl:defmethod signal-val ((m <GetIO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaka_msgs-srv:signal-val is deprecated.  Use jaka_msgs-srv:signal instead.")
  (signal m))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <GetIO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaka_msgs-srv:path-val is deprecated.  Use jaka_msgs-srv:path instead.")
  (path m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <GetIO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaka_msgs-srv:type-val is deprecated.  Use jaka_msgs-srv:type instead.")
  (type m))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <GetIO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaka_msgs-srv:index-val is deprecated.  Use jaka_msgs-srv:index instead.")
  (index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetIO-request>) ostream)
  "Serializes a message object of type '<GetIO-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'signal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'signal))
  (cl:let* ((signed (cl:slot-value msg 'path)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetIO-request>) istream)
  "Deserializes a message object of type '<GetIO-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'signal) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'signal) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetIO-request>)))
  "Returns string type for a service object of type '<GetIO-request>"
  "jaka_msgs/GetIORequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIO-request)))
  "Returns string type for a service object of type 'GetIO-request"
  "jaka_msgs/GetIORequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetIO-request>)))
  "Returns md5sum for a message object of type '<GetIO-request>"
  "6ff1cb5f4f299720705884f0c89f9d08")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetIO-request)))
  "Returns md5sum for a message object of type 'GetIO-request"
  "6ff1cb5f4f299720705884f0c89f9d08")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetIO-request>)))
  "Returns full string definition for message of type '<GetIO-request>"
  (cl:format cl:nil "string signal~%int16 path~%int16 type~%int16 index~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetIO-request)))
  "Returns full string definition for message of type 'GetIO-request"
  (cl:format cl:nil "string signal~%int16 path~%int16 type~%int16 index~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetIO-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'signal))
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetIO-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetIO-request
    (cl:cons ':signal (signal msg))
    (cl:cons ':path (path msg))
    (cl:cons ':type (type msg))
    (cl:cons ':index (index msg))
))
;//! \htmlinclude GetIO-response.msg.html

(cl:defclass <GetIO-response> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass GetIO-response (<GetIO-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetIO-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetIO-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jaka_msgs-srv:<GetIO-response> is deprecated: use jaka_msgs-srv:GetIO-response instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <GetIO-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaka_msgs-srv:value-val is deprecated.  Use jaka_msgs-srv:value instead.")
  (value m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetIO-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaka_msgs-srv:message-val is deprecated.  Use jaka_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetIO-response>) ostream)
  "Serializes a message object of type '<GetIO-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetIO-response>) istream)
  "Deserializes a message object of type '<GetIO-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-single-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetIO-response>)))
  "Returns string type for a service object of type '<GetIO-response>"
  "jaka_msgs/GetIOResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIO-response)))
  "Returns string type for a service object of type 'GetIO-response"
  "jaka_msgs/GetIOResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetIO-response>)))
  "Returns md5sum for a message object of type '<GetIO-response>"
  "6ff1cb5f4f299720705884f0c89f9d08")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetIO-response)))
  "Returns md5sum for a message object of type 'GetIO-response"
  "6ff1cb5f4f299720705884f0c89f9d08")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetIO-response>)))
  "Returns full string definition for message of type '<GetIO-response>"
  (cl:format cl:nil "~%float32 value~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetIO-response)))
  "Returns full string definition for message of type 'GetIO-response"
  (cl:format cl:nil "~%float32 value~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetIO-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetIO-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetIO-response
    (cl:cons ':value (value msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetIO)))
  'GetIO-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetIO)))
  'GetIO-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIO)))
  "Returns string type for a service object of type '<GetIO>"
  "jaka_msgs/GetIO")