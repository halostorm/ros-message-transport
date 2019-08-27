; Auto-generated. Do not edit!


(cl:in-package throttled_transport-srv)


;//! \htmlinclude SetThrottlingParameters-request.msg.html

(cl:defclass <SetThrottlingParameters-request> (roslisp-msg-protocol:ros-message)
  ((throttling_mode
    :reader throttling_mode
    :initarg :throttling_mode
    :type cl:string
    :initform "")
   (max_frequency
    :reader max_frequency
    :initarg :max_frequency
    :type cl:float
    :initform 0.0)
   (max_bandwidth
    :reader max_bandwidth
    :initarg :max_bandwidth
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetThrottlingParameters-request (<SetThrottlingParameters-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetThrottlingParameters-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetThrottlingParameters-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name throttled_transport-srv:<SetThrottlingParameters-request> is deprecated: use throttled_transport-srv:SetThrottlingParameters-request instead.")))

(cl:ensure-generic-function 'throttling_mode-val :lambda-list '(m))
(cl:defmethod throttling_mode-val ((m <SetThrottlingParameters-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader throttled_transport-srv:throttling_mode-val is deprecated.  Use throttled_transport-srv:throttling_mode instead.")
  (throttling_mode m))

(cl:ensure-generic-function 'max_frequency-val :lambda-list '(m))
(cl:defmethod max_frequency-val ((m <SetThrottlingParameters-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader throttled_transport-srv:max_frequency-val is deprecated.  Use throttled_transport-srv:max_frequency instead.")
  (max_frequency m))

(cl:ensure-generic-function 'max_bandwidth-val :lambda-list '(m))
(cl:defmethod max_bandwidth-val ((m <SetThrottlingParameters-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader throttled_transport-srv:max_bandwidth-val is deprecated.  Use throttled_transport-srv:max_bandwidth instead.")
  (max_bandwidth m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetThrottlingParameters-request>) ostream)
  "Serializes a message object of type '<SetThrottlingParameters-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'throttling_mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'throttling_mode))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_frequency))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_bandwidth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetThrottlingParameters-request>) istream)
  "Deserializes a message object of type '<SetThrottlingParameters-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'throttling_mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'throttling_mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_frequency) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_bandwidth) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetThrottlingParameters-request>)))
  "Returns string type for a service object of type '<SetThrottlingParameters-request>"
  "throttled_transport/SetThrottlingParametersRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetThrottlingParameters-request)))
  "Returns string type for a service object of type 'SetThrottlingParameters-request"
  "throttled_transport/SetThrottlingParametersRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetThrottlingParameters-request>)))
  "Returns md5sum for a message object of type '<SetThrottlingParameters-request>"
  "1171dbf4537d0192990c184bda16de61")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetThrottlingParameters-request)))
  "Returns md5sum for a message object of type 'SetThrottlingParameters-request"
  "1171dbf4537d0192990c184bda16de61")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetThrottlingParameters-request>)))
  "Returns full string definition for message of type '<SetThrottlingParameters-request>"
  (cl:format cl:nil "~%string throttling_mode~%~%float32 max_frequency~%float32 max_bandwidth~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetThrottlingParameters-request)))
  "Returns full string definition for message of type 'SetThrottlingParameters-request"
  (cl:format cl:nil "~%string throttling_mode~%~%float32 max_frequency~%float32 max_bandwidth~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetThrottlingParameters-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'throttling_mode))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetThrottlingParameters-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetThrottlingParameters-request
    (cl:cons ':throttling_mode (throttling_mode msg))
    (cl:cons ':max_frequency (max_frequency msg))
    (cl:cons ':max_bandwidth (max_bandwidth msg))
))
;//! \htmlinclude SetThrottlingParameters-response.msg.html

(cl:defclass <SetThrottlingParameters-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass SetThrottlingParameters-response (<SetThrottlingParameters-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetThrottlingParameters-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetThrottlingParameters-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name throttled_transport-srv:<SetThrottlingParameters-response> is deprecated: use throttled_transport-srv:SetThrottlingParameters-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetThrottlingParameters-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader throttled_transport-srv:result-val is deprecated.  Use throttled_transport-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetThrottlingParameters-response>) ostream)
  "Serializes a message object of type '<SetThrottlingParameters-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetThrottlingParameters-response>) istream)
  "Deserializes a message object of type '<SetThrottlingParameters-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetThrottlingParameters-response>)))
  "Returns string type for a service object of type '<SetThrottlingParameters-response>"
  "throttled_transport/SetThrottlingParametersResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetThrottlingParameters-response)))
  "Returns string type for a service object of type 'SetThrottlingParameters-response"
  "throttled_transport/SetThrottlingParametersResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetThrottlingParameters-response>)))
  "Returns md5sum for a message object of type '<SetThrottlingParameters-response>"
  "1171dbf4537d0192990c184bda16de61")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetThrottlingParameters-response)))
  "Returns md5sum for a message object of type 'SetThrottlingParameters-response"
  "1171dbf4537d0192990c184bda16de61")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetThrottlingParameters-response>)))
  "Returns full string definition for message of type '<SetThrottlingParameters-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetThrottlingParameters-response)))
  "Returns full string definition for message of type 'SetThrottlingParameters-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetThrottlingParameters-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetThrottlingParameters-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetThrottlingParameters-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetThrottlingParameters)))
  'SetThrottlingParameters-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetThrottlingParameters)))
  'SetThrottlingParameters-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetThrottlingParameters)))
  "Returns string type for a service object of type '<SetThrottlingParameters>"
  "throttled_transport/SetThrottlingParameters")