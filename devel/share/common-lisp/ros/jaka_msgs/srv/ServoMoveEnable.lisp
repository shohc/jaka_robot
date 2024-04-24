; Auto-generated. Do not edit!


(cl:in-package jaka_msgs-srv)


;//! \htmlinclude ServoMoveEnable-request.msg.html

(cl:defclass <ServoMoveEnable-request> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ServoMoveEnable-request (<ServoMoveEnable-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServoMoveEnable-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServoMoveEnable-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jaka_msgs-srv:<ServoMoveEnable-request> is deprecated: use jaka_msgs-srv:ServoMoveEnable-request instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <ServoMoveEnable-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaka_msgs-srv:enable-val is deprecated.  Use jaka_msgs-srv:enable instead.")
  (enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServoMoveEnable-request>) ostream)
  "Serializes a message object of type '<ServoMoveEnable-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServoMoveEnable-request>) istream)
  "Deserializes a message object of type '<ServoMoveEnable-request>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServoMoveEnable-request>)))
  "Returns string type for a service object of type '<ServoMoveEnable-request>"
  "jaka_msgs/ServoMoveEnableRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServoMoveEnable-request)))
  "Returns string type for a service object of type 'ServoMoveEnable-request"
  "jaka_msgs/ServoMoveEnableRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServoMoveEnable-request>)))
  "Returns md5sum for a message object of type '<ServoMoveEnable-request>"
  "0fff944f16f37b02ba85acd57d94215a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServoMoveEnable-request)))
  "Returns md5sum for a message object of type 'ServoMoveEnable-request"
  "0fff944f16f37b02ba85acd57d94215a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServoMoveEnable-request>)))
  "Returns full string definition for message of type '<ServoMoveEnable-request>"
  (cl:format cl:nil "bool enable~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServoMoveEnable-request)))
  "Returns full string definition for message of type 'ServoMoveEnable-request"
  (cl:format cl:nil "bool enable~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServoMoveEnable-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServoMoveEnable-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ServoMoveEnable-request
    (cl:cons ':enable (enable msg))
))
;//! \htmlinclude ServoMoveEnable-response.msg.html

(cl:defclass <ServoMoveEnable-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ServoMoveEnable-response (<ServoMoveEnable-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServoMoveEnable-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServoMoveEnable-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jaka_msgs-srv:<ServoMoveEnable-response> is deprecated: use jaka_msgs-srv:ServoMoveEnable-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <ServoMoveEnable-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaka_msgs-srv:ret-val is deprecated.  Use jaka_msgs-srv:ret instead.")
  (ret m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ServoMoveEnable-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaka_msgs-srv:message-val is deprecated.  Use jaka_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServoMoveEnable-response>) ostream)
  "Serializes a message object of type '<ServoMoveEnable-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServoMoveEnable-response>) istream)
  "Deserializes a message object of type '<ServoMoveEnable-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServoMoveEnable-response>)))
  "Returns string type for a service object of type '<ServoMoveEnable-response>"
  "jaka_msgs/ServoMoveEnableResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServoMoveEnable-response)))
  "Returns string type for a service object of type 'ServoMoveEnable-response"
  "jaka_msgs/ServoMoveEnableResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServoMoveEnable-response>)))
  "Returns md5sum for a message object of type '<ServoMoveEnable-response>"
  "0fff944f16f37b02ba85acd57d94215a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServoMoveEnable-response)))
  "Returns md5sum for a message object of type 'ServoMoveEnable-response"
  "0fff944f16f37b02ba85acd57d94215a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServoMoveEnable-response>)))
  "Returns full string definition for message of type '<ServoMoveEnable-response>"
  (cl:format cl:nil "~%int16 ret~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServoMoveEnable-response)))
  "Returns full string definition for message of type 'ServoMoveEnable-response"
  (cl:format cl:nil "~%int16 ret~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServoMoveEnable-response>))
  (cl:+ 0
     2
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServoMoveEnable-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ServoMoveEnable-response
    (cl:cons ':ret (ret msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ServoMoveEnable)))
  'ServoMoveEnable-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ServoMoveEnable)))
  'ServoMoveEnable-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServoMoveEnable)))
  "Returns string type for a service object of type '<ServoMoveEnable>"
  "jaka_msgs/ServoMoveEnable")