; Auto-generated. Do not edit!


(cl:in-package sharedmem_transport-srv)


;//! \htmlinclude SHMClearAll-request.msg.html

(cl:defclass <SHMClearAll-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SHMClearAll-request (<SHMClearAll-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SHMClearAll-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SHMClearAll-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sharedmem_transport-srv:<SHMClearAll-request> is deprecated: use sharedmem_transport-srv:SHMClearAll-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SHMClearAll-request>) ostream)
  "Serializes a message object of type '<SHMClearAll-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SHMClearAll-request>) istream)
  "Deserializes a message object of type '<SHMClearAll-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SHMClearAll-request>)))
  "Returns string type for a service object of type '<SHMClearAll-request>"
  "sharedmem_transport/SHMClearAllRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SHMClearAll-request)))
  "Returns string type for a service object of type 'SHMClearAll-request"
  "sharedmem_transport/SHMClearAllRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SHMClearAll-request>)))
  "Returns md5sum for a message object of type '<SHMClearAll-request>"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SHMClearAll-request)))
  "Returns md5sum for a message object of type 'SHMClearAll-request"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SHMClearAll-request>)))
  "Returns full string definition for message of type '<SHMClearAll-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SHMClearAll-request)))
  "Returns full string definition for message of type 'SHMClearAll-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SHMClearAll-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SHMClearAll-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SHMClearAll-request
))
;//! \htmlinclude SHMClearAll-response.msg.html

(cl:defclass <SHMClearAll-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass SHMClearAll-response (<SHMClearAll-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SHMClearAll-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SHMClearAll-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sharedmem_transport-srv:<SHMClearAll-response> is deprecated: use sharedmem_transport-srv:SHMClearAll-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SHMClearAll-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sharedmem_transport-srv:result-val is deprecated.  Use sharedmem_transport-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SHMClearAll-response>) ostream)
  "Serializes a message object of type '<SHMClearAll-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SHMClearAll-response>) istream)
  "Deserializes a message object of type '<SHMClearAll-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SHMClearAll-response>)))
  "Returns string type for a service object of type '<SHMClearAll-response>"
  "sharedmem_transport/SHMClearAllResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SHMClearAll-response)))
  "Returns string type for a service object of type 'SHMClearAll-response"
  "sharedmem_transport/SHMClearAllResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SHMClearAll-response>)))
  "Returns md5sum for a message object of type '<SHMClearAll-response>"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SHMClearAll-response)))
  "Returns md5sum for a message object of type 'SHMClearAll-response"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SHMClearAll-response>)))
  "Returns full string definition for message of type '<SHMClearAll-response>"
  (cl:format cl:nil "int32 result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SHMClearAll-response)))
  "Returns full string definition for message of type 'SHMClearAll-response"
  (cl:format cl:nil "int32 result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SHMClearAll-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SHMClearAll-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SHMClearAll-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SHMClearAll)))
  'SHMClearAll-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SHMClearAll)))
  'SHMClearAll-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SHMClearAll)))
  "Returns string type for a service object of type '<SHMClearAll>"
  "sharedmem_transport/SHMClearAll")