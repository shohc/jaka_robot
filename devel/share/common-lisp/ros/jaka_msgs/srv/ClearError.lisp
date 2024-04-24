; Auto-generated. Do not edit!


(cl:in-package jaka_msgs-srv)


;//! \htmlinclude ClearError-request.msg.html

(cl:defclass <ClearError-request> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ClearError-request (<ClearError-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClearError-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClearError-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jaka_msgs-srv:<ClearError-request> is deprecated: use jaka_msgs-srv:ClearError-request instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <ClearError-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaka_msgs-srv:enable-val is deprecated.  Use jaka_msgs-srv:enable instead.")
  (enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClearError-request>) ostream)
  "Serializes a message object of type '<ClearError-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClearError-request>) istream)
  "Deserializes a message object of type '<ClearError-request>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClearError-request>)))
  "Returns string type for a service object of type '<ClearError-request>"
  "jaka_msgs/ClearErrorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearError-request)))
  "Returns string type for a service object of type 'ClearError-request"
  "jaka_msgs/ClearErrorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClearError-request>)))
  "Returns md5sum for a message object of type '<ClearError-request>"
  "0fff944f16f37b02ba85acd57d94215a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClearError-request)))
  "Returns md5sum for a message object of type 'ClearError-request"
  "0fff944f16f37b02ba85acd57d94215a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClearError-request>)))
  "Returns full string definition for message of type '<ClearError-request>"
  (cl:format cl:nil "bool enable~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClearError-request)))
  "Returns full string definition for message of type 'ClearError-request"
  (cl:format cl:nil "bool enable~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClearError-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClearError-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ClearError-request
    (cl:cons ':enable (enable msg))
))
;//! \htmlinclude ClearError-response.msg.html

(cl:defclass <ClearError-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ClearError-response (<ClearError-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClearError-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClearError-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jaka_msgs-srv:<ClearError-response> is deprecated: use jaka_msgs-srv:ClearError-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <ClearError-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaka_msgs-srv:ret-val is deprecated.  Use jaka_msgs-srv:ret instead.")
  (ret m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ClearError-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaka_msgs-srv:message-val is deprecated.  Use jaka_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClearError-response>) ostream)
  "Serializes a message object of type '<ClearError-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClearError-response>) istream)
  "Deserializes a message object of type '<ClearError-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClearError-response>)))
  "Returns string type for a service object of type '<ClearError-response>"
  "jaka_msgs/ClearErrorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearError-response)))
  "Returns string type for a service object of type 'ClearError-response"
  "jaka_msgs/ClearErrorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClearError-response>)))
  "Returns md5sum for a message object of type '<ClearError-response>"
  "0fff944f16f37b02ba85acd57d94215a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClearError-response)))
  "Returns md5sum for a message object of type 'ClearError-response"
  "0fff944f16f37b02ba85acd57d94215a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClearError-response>)))
  "Returns full string definition for message of type '<ClearError-response>"
  (cl:format cl:nil "~%int16 ret~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClearError-response)))
  "Returns full string definition for message of type 'ClearError-response"
  (cl:format cl:nil "~%int16 ret~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClearError-response>))
  (cl:+ 0
     2
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClearError-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ClearError-response
    (cl:cons ':ret (ret msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ClearError)))
  'ClearError-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ClearError)))
  'ClearError-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearError)))
  "Returns string type for a service object of type '<ClearError>"
  "jaka_msgs/ClearError")