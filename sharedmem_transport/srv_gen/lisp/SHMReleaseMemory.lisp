; Auto-generated. Do not edit!


(cl:in-package sharedmem_transport-srv)


;//! \htmlinclude SHMReleaseMemory-request.msg.html

(cl:defclass <SHMReleaseMemory-request> (roslisp-msg-protocol:ros-message)
  ((topic
    :reader topic
    :initarg :topic
    :type cl:string
    :initform ""))
)

(cl:defclass SHMReleaseMemory-request (<SHMReleaseMemory-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SHMReleaseMemory-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SHMReleaseMemory-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sharedmem_transport-srv:<SHMReleaseMemory-request> is deprecated: use sharedmem_transport-srv:SHMReleaseMemory-request instead.")))

(cl:ensure-generic-function 'topic-val :lambda-list '(m))
(cl:defmethod topic-val ((m <SHMReleaseMemory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sharedmem_transport-srv:topic-val is deprecated.  Use sharedmem_transport-srv:topic instead.")
  (topic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SHMReleaseMemory-request>) ostream)
  "Serializes a message object of type '<SHMReleaseMemory-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SHMReleaseMemory-request>) istream)
  "Deserializes a message object of type '<SHMReleaseMemory-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SHMReleaseMemory-request>)))
  "Returns string type for a service object of type '<SHMReleaseMemory-request>"
  "sharedmem_transport/SHMReleaseMemoryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SHMReleaseMemory-request)))
  "Returns string type for a service object of type 'SHMReleaseMemory-request"
  "sharedmem_transport/SHMReleaseMemoryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SHMReleaseMemory-request>)))
  "Returns md5sum for a message object of type '<SHMReleaseMemory-request>"
  "9014a4b52c1ba99c200758d58f7a1006")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SHMReleaseMemory-request)))
  "Returns md5sum for a message object of type 'SHMReleaseMemory-request"
  "9014a4b52c1ba99c200758d58f7a1006")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SHMReleaseMemory-request>)))
  "Returns full string definition for message of type '<SHMReleaseMemory-request>"
  (cl:format cl:nil "string topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SHMReleaseMemory-request)))
  "Returns full string definition for message of type 'SHMReleaseMemory-request"
  (cl:format cl:nil "string topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SHMReleaseMemory-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SHMReleaseMemory-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SHMReleaseMemory-request
    (cl:cons ':topic (topic msg))
))
;//! \htmlinclude SHMReleaseMemory-response.msg.html

(cl:defclass <SHMReleaseMemory-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass SHMReleaseMemory-response (<SHMReleaseMemory-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SHMReleaseMemory-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SHMReleaseMemory-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sharedmem_transport-srv:<SHMReleaseMemory-response> is deprecated: use sharedmem_transport-srv:SHMReleaseMemory-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SHMReleaseMemory-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sharedmem_transport-srv:result-val is deprecated.  Use sharedmem_transport-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SHMReleaseMemory-response>) ostream)
  "Serializes a message object of type '<SHMReleaseMemory-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SHMReleaseMemory-response>) istream)
  "Deserializes a message object of type '<SHMReleaseMemory-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SHMReleaseMemory-response>)))
  "Returns string type for a service object of type '<SHMReleaseMemory-response>"
  "sharedmem_transport/SHMReleaseMemoryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SHMReleaseMemory-response)))
  "Returns string type for a service object of type 'SHMReleaseMemory-response"
  "sharedmem_transport/SHMReleaseMemoryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SHMReleaseMemory-response>)))
  "Returns md5sum for a message object of type '<SHMReleaseMemory-response>"
  "9014a4b52c1ba99c200758d58f7a1006")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SHMReleaseMemory-response)))
  "Returns md5sum for a message object of type 'SHMReleaseMemory-response"
  "9014a4b52c1ba99c200758d58f7a1006")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SHMReleaseMemory-response>)))
  "Returns full string definition for message of type '<SHMReleaseMemory-response>"
  (cl:format cl:nil "int32 result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SHMReleaseMemory-response)))
  "Returns full string definition for message of type 'SHMReleaseMemory-response"
  (cl:format cl:nil "int32 result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SHMReleaseMemory-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SHMReleaseMemory-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SHMReleaseMemory-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SHMReleaseMemory)))
  'SHMReleaseMemory-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SHMReleaseMemory)))
  'SHMReleaseMemory-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SHMReleaseMemory)))
  "Returns string type for a service object of type '<SHMReleaseMemory>"
  "sharedmem_transport/SHMReleaseMemory")