; Auto-generated. Do not edit!


(cl:in-package udpmulti_transport-srv)


;//! \htmlinclude UDPMultRegisterTopic-request.msg.html

(cl:defclass <UDPMultRegisterTopic-request> (roslisp-msg-protocol:ros-message)
  ((topic
    :reader topic
    :initarg :topic
    :type cl:string
    :initform ""))
)

(cl:defclass UDPMultRegisterTopic-request (<UDPMultRegisterTopic-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UDPMultRegisterTopic-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UDPMultRegisterTopic-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name udpmulti_transport-srv:<UDPMultRegisterTopic-request> is deprecated: use udpmulti_transport-srv:UDPMultRegisterTopic-request instead.")))

(cl:ensure-generic-function 'topic-val :lambda-list '(m))
(cl:defmethod topic-val ((m <UDPMultRegisterTopic-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader udpmulti_transport-srv:topic-val is deprecated.  Use udpmulti_transport-srv:topic instead.")
  (topic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UDPMultRegisterTopic-request>) ostream)
  "Serializes a message object of type '<UDPMultRegisterTopic-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UDPMultRegisterTopic-request>) istream)
  "Deserializes a message object of type '<UDPMultRegisterTopic-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UDPMultRegisterTopic-request>)))
  "Returns string type for a service object of type '<UDPMultRegisterTopic-request>"
  "udpmulti_transport/UDPMultRegisterTopicRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UDPMultRegisterTopic-request)))
  "Returns string type for a service object of type 'UDPMultRegisterTopic-request"
  "udpmulti_transport/UDPMultRegisterTopicRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UDPMultRegisterTopic-request>)))
  "Returns md5sum for a message object of type '<UDPMultRegisterTopic-request>"
  "01e42bac3b5bfa13c13f4a93b95bceb1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UDPMultRegisterTopic-request)))
  "Returns md5sum for a message object of type 'UDPMultRegisterTopic-request"
  "01e42bac3b5bfa13c13f4a93b95bceb1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UDPMultRegisterTopic-request>)))
  "Returns full string definition for message of type '<UDPMultRegisterTopic-request>"
  (cl:format cl:nil "string topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UDPMultRegisterTopic-request)))
  "Returns full string definition for message of type 'UDPMultRegisterTopic-request"
  (cl:format cl:nil "string topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UDPMultRegisterTopic-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UDPMultRegisterTopic-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UDPMultRegisterTopic-request
    (cl:cons ':topic (topic msg))
))
;//! \htmlinclude UDPMultRegisterTopic-response.msg.html

(cl:defclass <UDPMultRegisterTopic-response> (roslisp-msg-protocol:ros-message)
  ((multicast_address
    :reader multicast_address
    :initarg :multicast_address
    :type cl:string
    :initform "")
   (port
    :reader port
    :initarg :port
    :type cl:fixnum
    :initform 0))
)

(cl:defclass UDPMultRegisterTopic-response (<UDPMultRegisterTopic-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UDPMultRegisterTopic-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UDPMultRegisterTopic-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name udpmulti_transport-srv:<UDPMultRegisterTopic-response> is deprecated: use udpmulti_transport-srv:UDPMultRegisterTopic-response instead.")))

(cl:ensure-generic-function 'multicast_address-val :lambda-list '(m))
(cl:defmethod multicast_address-val ((m <UDPMultRegisterTopic-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader udpmulti_transport-srv:multicast_address-val is deprecated.  Use udpmulti_transport-srv:multicast_address instead.")
  (multicast_address m))

(cl:ensure-generic-function 'port-val :lambda-list '(m))
(cl:defmethod port-val ((m <UDPMultRegisterTopic-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader udpmulti_transport-srv:port-val is deprecated.  Use udpmulti_transport-srv:port instead.")
  (port m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UDPMultRegisterTopic-response>) ostream)
  "Serializes a message object of type '<UDPMultRegisterTopic-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'multicast_address))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'multicast_address))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'port)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'port)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UDPMultRegisterTopic-response>) istream)
  "Deserializes a message object of type '<UDPMultRegisterTopic-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'multicast_address) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'multicast_address) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'port)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'port)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UDPMultRegisterTopic-response>)))
  "Returns string type for a service object of type '<UDPMultRegisterTopic-response>"
  "udpmulti_transport/UDPMultRegisterTopicResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UDPMultRegisterTopic-response)))
  "Returns string type for a service object of type 'UDPMultRegisterTopic-response"
  "udpmulti_transport/UDPMultRegisterTopicResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UDPMultRegisterTopic-response>)))
  "Returns md5sum for a message object of type '<UDPMultRegisterTopic-response>"
  "01e42bac3b5bfa13c13f4a93b95bceb1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UDPMultRegisterTopic-response)))
  "Returns md5sum for a message object of type 'UDPMultRegisterTopic-response"
  "01e42bac3b5bfa13c13f4a93b95bceb1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UDPMultRegisterTopic-response>)))
  "Returns full string definition for message of type '<UDPMultRegisterTopic-response>"
  (cl:format cl:nil "string multicast_address~%uint16 port~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UDPMultRegisterTopic-response)))
  "Returns full string definition for message of type 'UDPMultRegisterTopic-response"
  (cl:format cl:nil "string multicast_address~%uint16 port~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UDPMultRegisterTopic-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'multicast_address))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UDPMultRegisterTopic-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UDPMultRegisterTopic-response
    (cl:cons ':multicast_address (multicast_address msg))
    (cl:cons ':port (port msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UDPMultRegisterTopic)))
  'UDPMultRegisterTopic-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UDPMultRegisterTopic)))
  'UDPMultRegisterTopic-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UDPMultRegisterTopic)))
  "Returns string type for a service object of type '<UDPMultRegisterTopic>"
  "udpmulti_transport/UDPMultRegisterTopic")