; Auto-generated. Do not edit!


(cl:in-package jaka_msgs-msg)


;//! \htmlinclude RobotMsg.msg.html

(cl:defclass <RobotMsg> (roslisp-msg-protocol:ros-message)
  ((motion_state
    :reader motion_state
    :initarg :motion_state
    :type cl:fixnum
    :initform 0)
   (power_state
    :reader power_state
    :initarg :power_state
    :type cl:fixnum
    :initform 0)
   (servo_state
    :reader servo_state
    :initarg :servo_state
    :type cl:fixnum
    :initform 0)
   (collision_state
    :reader collision_state
    :initarg :collision_state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RobotMsg (<RobotMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jaka_msgs-msg:<RobotMsg> is deprecated: use jaka_msgs-msg:RobotMsg instead.")))

(cl:ensure-generic-function 'motion_state-val :lambda-list '(m))
(cl:defmethod motion_state-val ((m <RobotMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaka_msgs-msg:motion_state-val is deprecated.  Use jaka_msgs-msg:motion_state instead.")
  (motion_state m))

(cl:ensure-generic-function 'power_state-val :lambda-list '(m))
(cl:defmethod power_state-val ((m <RobotMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaka_msgs-msg:power_state-val is deprecated.  Use jaka_msgs-msg:power_state instead.")
  (power_state m))

(cl:ensure-generic-function 'servo_state-val :lambda-list '(m))
(cl:defmethod servo_state-val ((m <RobotMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaka_msgs-msg:servo_state-val is deprecated.  Use jaka_msgs-msg:servo_state instead.")
  (servo_state m))

(cl:ensure-generic-function 'collision_state-val :lambda-list '(m))
(cl:defmethod collision_state-val ((m <RobotMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaka_msgs-msg:collision_state-val is deprecated.  Use jaka_msgs-msg:collision_state instead.")
  (collision_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotMsg>) ostream)
  "Serializes a message object of type '<RobotMsg>"
  (cl:let* ((signed (cl:slot-value msg 'motion_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'power_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'servo_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'collision_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotMsg>) istream)
  "Deserializes a message object of type '<RobotMsg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motion_state) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'power_state) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'servo_state) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'collision_state) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotMsg>)))
  "Returns string type for a message object of type '<RobotMsg>"
  "jaka_msgs/RobotMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotMsg)))
  "Returns string type for a message object of type 'RobotMsg"
  "jaka_msgs/RobotMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotMsg>)))
  "Returns md5sum for a message object of type '<RobotMsg>"
  "cb4726a69178af69dc31d5013f095556")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotMsg)))
  "Returns md5sum for a message object of type 'RobotMsg"
  "cb4726a69178af69dc31d5013f095556")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotMsg>)))
  "Returns full string definition for message of type '<RobotMsg>"
  (cl:format cl:nil "int16 motion_state~%int16 power_state~%int16 servo_state~%int16 collision_state~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotMsg)))
  "Returns full string definition for message of type 'RobotMsg"
  (cl:format cl:nil "int16 motion_state~%int16 power_state~%int16 servo_state~%int16 collision_state~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotMsg>))
  (cl:+ 0
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotMsg
    (cl:cons ':motion_state (motion_state msg))
    (cl:cons ':power_state (power_state msg))
    (cl:cons ':servo_state (servo_state msg))
    (cl:cons ':collision_state (collision_state msg))
))
