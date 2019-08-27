; Auto-generated. Do not edit!


(cl:in-package udpmulti_transport-srv)


;//! \htmlinclude UDPMultClearAll-request.msg.html

(cl:defclass <UDPMultClearAll-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass UDPMultClearAll-request (<UDPMultClearAll-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UDPMultClearAll-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UDPMultClearAll-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name udpmulti_transport-srv:<UDPMultClearAll-request> is deprecated: use udpmulti_transport-srv:UDPMultClearAll-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UDPMultClearAll-request>) ostream)
  "Serializes a message object of type '<UDPMultClearAll-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UDPMultClearAll-request>) istream)
  "Deserializes a message object of type '<UDPMultClearAll-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UDPMultClearAll-request>)))
  "Returns string type for a service object of type '<UDPMultClearAll-request>"
  "udpmulti_transport/UDPMultClearAllRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UDPMultClearAll-request)))
  "Returns string type for a service object of type 'UDPMultClearAll-request"
  "udpmulti_transport/UDPMultClearAllRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UDPMultClearAll-request>)))
  "Returns md5sum for a message object of type '<UDPMultClearAll-request>"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UDPMultClearAll-request)))
  "Returns md5sum for a message object of type 'UDPMultClearAll-request"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UDPMultClearAll-request>)))
  "Returns full string definition for message of type '<UDPMultClearAll-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UDPMultClearAll-request)))
  "Returns full string definition for message of type 'UDPMultClearAll-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UDPMultClearAll-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UDPMultClearAll-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UDPMultClearAll-request
))
;//! \htmlinclude UDPMultClearAll-response.msg.html

(cl:defclass <UDPMultClearAll-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass UDPMultClearAll-response (<UDPMultClearAll-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UDPMultClearAll-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UDPMultClearAll-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name udpmulti_transport-srv:<UDPMultClearAll-response> is deprecated: use udpmulti_transport-srv:UDPMultClearAll-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <UDPMultClearAll-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader udpmulti_transport-srv:result-val is deprecated.  Use udpmulti_transport-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UDPMultClearAll-response>) ostream)
  "Serializes a message object of type '<UDPMultClearAll-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UDPMultClearAll-response>) istream)
  "Deserializes a message object of type '<UDPMultClearAll-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UDPMultClearAll-response>)))
  "Returns string type for a service object of type '<UDPMultClearAll-response>"
  "udpmulti_transport/UDPMultClearAllResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UDPMultClearAll-response)))
  "Returns string type for a service object of type 'UDPMultClearAll-response"
  "udpmulti_transport/UDPMultClearAllResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UDPMultClearAll-response>)))
  "Returns md5sum for a message object of type '<UDPMultClearAll-response>"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UDPMultClearAll-response)))
  "Returns md5sum for a message object of type 'UDPMultClearAll-response"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UDPMultClearAll-response>)))
  "Returns full string definition for message of type '<UDPMultClearAll-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UDPMultClearAll-response)))
  "Returns full string definition for message of type 'UDPMultClearAll-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UDPMultClearAll-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UDPMultClearAll-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UDPMultClearAll-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UDPMultClearAll)))
  'UDPMultClearAll-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UDPMultClearAll)))
  'UDPMultClearAll-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UDPMultClearAll)))
  "Returns string type for a service object of type '<UDPMultClearAll>"
  "udpmulti_transport/UDPMultClearAll")