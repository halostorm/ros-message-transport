; Auto-generated. Do not edit!


(cl:in-package udpmulti_transport-msg)


;//! \htmlinclude UDPMultTopic.msg.html

(cl:defclass <UDPMultTopic> (roslisp-msg-protocol:ros-message)
  ((topic
    :reader topic
    :initarg :topic
    :type cl:string
    :initform "")
   (port
    :reader port
    :initarg :port
    :type cl:fixnum
    :initform 0))
)

(cl:defclass UDPMultTopic (<UDPMultTopic>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UDPMultTopic>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UDPMultTopic)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name udpmulti_transport-msg:<UDPMultTopic> is deprecated: use udpmulti_transport-msg:UDPMultTopic instead.")))

(cl:ensure-generic-function 'topic-val :lambda-list '(m))
(cl:defmethod topic-val ((m <UDPMultTopic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader udpmulti_transport-msg:topic-val is deprecated.  Use udpmulti_transport-msg:topic instead.")
  (topic m))

(cl:ensure-generic-function 'port-val :lambda-list '(m))
(cl:defmethod port-val ((m <UDPMultTopic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader udpmulti_transport-msg:port-val is deprecated.  Use udpmulti_transport-msg:port instead.")
  (port m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UDPMultTopic>) ostream)
  "Serializes a message object of type '<UDPMultTopic>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'port)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'port)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UDPMultTopic>) istream)
  "Deserializes a message object of type '<UDPMultTopic>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'port)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'port)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UDPMultTopic>)))
  "Returns string type for a message object of type '<UDPMultTopic>"
  "udpmulti_transport/UDPMultTopic")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UDPMultTopic)))
  "Returns string type for a message object of type 'UDPMultTopic"
  "udpmulti_transport/UDPMultTopic")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UDPMultTopic>)))
  "Returns md5sum for a message object of type '<UDPMultTopic>"
  "48c2b64a5f7c125c67479f2fc43203a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UDPMultTopic)))
  "Returns md5sum for a message object of type 'UDPMultTopic"
  "48c2b64a5f7c125c67479f2fc43203a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UDPMultTopic>)))
  "Returns full string definition for message of type '<UDPMultTopic>"
  (cl:format cl:nil "string topic~%uint16 port~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UDPMultTopic)))
  "Returns full string definition for message of type 'UDPMultTopic"
  (cl:format cl:nil "string topic~%uint16 port~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UDPMultTopic>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UDPMultTopic>))
  "Converts a ROS message object to a list"
  (cl:list 'UDPMultTopic
    (cl:cons ':topic (topic msg))
    (cl:cons ':port (port msg))
))
