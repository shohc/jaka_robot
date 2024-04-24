; Auto-generated. Do not edit!


(cl:in-package jaka_msgs-srv)


;//! \htmlinclude SetIO-request.msg.html

(cl:defclass <SetIO-request> (roslisp-msg-protocol:ros-message)
  ((signal
    :reader signal
    :initarg :signal
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (index
    :reader index
    :initarg :index
    :type cl:fixnum
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetIO-request (<SetIO-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetIO-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetIO-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jaka_msgs-srv:<SetIO-request> is deprecated: use jaka_msgs-srv:SetIO-request instead.")))

(cl:ensure-generic-function 'signal-val :lambda-list '(m))
(cl:defmethod signal-val ((m <SetIO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaka_msgs-srv:signal-val is deprecated.  Use jaka_msgs-srv:signal instead.")
  (signal m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <SetIO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaka_msgs-srv:type-val is deprecated.  Use jaka_msgs-srv:type instead.")
  (type m))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <SetIO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaka_msgs-srv:index-val is deprecated.  Use jaka_msgs-srv:index instead.")
  (index m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SetIO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaka_msgs-srv:value-val is deprecated.  Use jaka_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetIO-request>) ostream)
  "Serializes a message object of type '<SetIO-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'signal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'signal))
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetIO-request>) istream)
  "Deserializes a message object of type '<SetIO-request>"
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
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetIO-request>)))
  "Returns string type for a service object of type '<SetIO-request>"
  "jaka_msgs/SetIORequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetIO-request)))
  "Returns string type for a service object of type 'SetIO-request"
  "jaka_msgs/SetIORequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetIO-request>)))
  "Returns md5sum for a message object of type '<SetIO-request>"
  "d70f55fb8350e7d75cb38e91f1bc0373")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetIO-request)))
  "Returns md5sum for a message object of type 'SetIO-request"
  "d70f55fb8350e7d75cb38e91f1bc0373")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetIO-request>)))
  "Returns full string definition for message of type '<SetIO-request>"
  (cl:format cl:nil "string signal~%int16 type~%int16 index~%float32 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetIO-request)))
  "Returns full string definition for message of type 'SetIO-request"
  (cl:format cl:nil "string signal~%int16 type~%int16 index~%float32 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetIO-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'signal))
     2
     2
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetIO-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetIO-request
    (cl:cons ':signal (signal msg))
    (cl:cons ':type (type msg))
    (cl:cons ':index (index msg))
    (cl:cons ':value (value msg))
))
;//! \htmlinclude SetIO-response.msg.html

(cl:defclass <SetIO-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetIO-response (<SetIO-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetIO-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetIO-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jaka_msgs-srv:<SetIO-response> is deprecated: use jaka_msgs-srv:SetIO-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <SetIO-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaka_msgs-srv:ret-val is deprecated.  Use jaka_msgs-srv:ret instead.")
  (ret m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetIO-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaka_msgs-srv:message-val is deprecated.  Use jaka_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetIO-response>) ostream)
  "Serializes a message object of type '<SetIO-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetIO-response>) istream)
  "Deserializes a message object of type '<SetIO-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetIO-response>)))
  "Returns string type for a service object of type '<SetIO-response>"
  "jaka_msgs/SetIOResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetIO-response)))
  "Returns string type for a service object of type 'SetIO-response"
  "jaka_msgs/SetIOResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetIO-response>)))
  "Returns md5sum for a message object of type '<SetIO-response>"
  "d70f55fb8350e7d75cb38e91f1bc0373")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetIO-response)))
  "Returns md5sum for a message object of type 'SetIO-response"
  "d70f55fb8350e7d75cb38e91f1bc0373")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetIO-response>)))
  "Returns full string definition for message of type '<SetIO-response>"
  (cl:format cl:nil "~%int16 ret~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetIO-response)))
  "Returns full string definition for message of type 'SetIO-response"
  (cl:format cl:nil "~%int16 ret~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetIO-response>))
  (cl:+ 0
     2
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetIO-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetIO-response
    (cl:cons ':ret (ret msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetIO)))
  'SetIO-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetIO)))
  'SetIO-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetIO)))
  "Returns string type for a service object of type '<SetIO>"
  "jaka_msgs/SetIO")