; Auto-generated. Do not edit!


(cl:in-package udpmulti_transport-msg)


;//! \htmlinclude UDPMultHeader.msg.html

(cl:defclass <UDPMultHeader> (roslisp-msg-protocol:ros-message)
  ((multicast_address
    :reader multicast_address
    :initarg :multicast_address
    :type cl:string
    :initform "")
   (port
    :reader port
    :initarg :port
    :type cl:integer
    :initform 0))
)

(cl:defclass UDPMultHeader (<UDPMultHeader>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UDPMultHeader>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UDPMultHeader)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name udpmulti_transport-msg:<UDPMultHeader> is deprecated: use udpmulti_transport-msg:UDPMultHeader instead.")))

(cl:ensure-generic-function 'multicast_address-val :lambda-list '(m))
(cl:defmethod multicast_address-val ((m <UDPMultHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader udpmulti_transport-msg:multicast_address-val is deprecated.  Use udpmulti_transport-msg:multicast_address instead.")
  (multicast_address m))

(cl:ensure-generic-function 'port-val :lambda-list '(m))
(cl:defmethod port-val ((m <UDPMultHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader udpmulti_transport-msg:port-val is deprecated.  Use udpmulti_transport-msg:port instead.")
  (port m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UDPMultHeader>) ostream)
  "Serializes a message object of type '<UDPMultHeader>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'multicast_address))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'multicast_address))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'port)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'port)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'port)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'port)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UDPMultHeader>) istream)
  "Deserializes a message object of type '<UDPMultHeader>"
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
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'port)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'port)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UDPMultHeader>)))
  "Returns string type for a message object of type '<UDPMultHeader>"
  "udpmulti_transport/UDPMultHeader")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UDPMultHeader)))
  "Returns string type for a message object of type 'UDPMultHeader"
  "udpmulti_transport/UDPMultHeader")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UDPMultHeader>)))
  "Returns md5sum for a message object of type '<UDPMultHeader>"
  "1e14983195867c72000e1c09bfde0cd0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UDPMultHeader)))
  "Returns md5sum for a message object of type 'UDPMultHeader"
  "1e14983195867c72000e1c09bfde0cd0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UDPMultHeader>)))
  "Returns full string definition for message of type '<UDPMultHeader>"
  (cl:format cl:nil "string multicast_address~%uint32 port~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UDPMultHeader)))
  "Returns full string definition for message of type 'UDPMultHeader"
  (cl:format cl:nil "string multicast_address~%uint32 port~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UDPMultHeader>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'multicast_address))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UDPMultHeader>))
  "Converts a ROS message object to a list"
  (cl:list 'UDPMultHeader
    (cl:cons ':multicast_address (multicast_address msg))
    (cl:cons ':port (port msg))
))
