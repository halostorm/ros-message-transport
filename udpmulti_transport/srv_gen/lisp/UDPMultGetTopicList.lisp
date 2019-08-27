; Auto-generated. Do not edit!


(cl:in-package udpmulti_transport-srv)


;//! \htmlinclude UDPMultGetTopicList-request.msg.html

(cl:defclass <UDPMultGetTopicList-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass UDPMultGetTopicList-request (<UDPMultGetTopicList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UDPMultGetTopicList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UDPMultGetTopicList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name udpmulti_transport-srv:<UDPMultGetTopicList-request> is deprecated: use udpmulti_transport-srv:UDPMultGetTopicList-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UDPMultGetTopicList-request>) ostream)
  "Serializes a message object of type '<UDPMultGetTopicList-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UDPMultGetTopicList-request>) istream)
  "Deserializes a message object of type '<UDPMultGetTopicList-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UDPMultGetTopicList-request>)))
  "Returns string type for a service object of type '<UDPMultGetTopicList-request>"
  "udpmulti_transport/UDPMultGetTopicListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UDPMultGetTopicList-request)))
  "Returns string type for a service object of type 'UDPMultGetTopicList-request"
  "udpmulti_transport/UDPMultGetTopicListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UDPMultGetTopicList-request>)))
  "Returns md5sum for a message object of type '<UDPMultGetTopicList-request>"
  "22672cb98b49fe101a321cb17bceec21")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UDPMultGetTopicList-request)))
  "Returns md5sum for a message object of type 'UDPMultGetTopicList-request"
  "22672cb98b49fe101a321cb17bceec21")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UDPMultGetTopicList-request>)))
  "Returns full string definition for message of type '<UDPMultGetTopicList-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UDPMultGetTopicList-request)))
  "Returns full string definition for message of type 'UDPMultGetTopicList-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UDPMultGetTopicList-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UDPMultGetTopicList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UDPMultGetTopicList-request
))
;//! \htmlinclude UDPMultGetTopicList-response.msg.html

(cl:defclass <UDPMultGetTopicList-response> (roslisp-msg-protocol:ros-message)
  ((multicast_address
    :reader multicast_address
    :initarg :multicast_address
    :type cl:string
    :initform "")
   (topics
    :reader topics
    :initarg :topics
    :type (cl:vector udpmulti_transport-msg:UDPMultTopic)
   :initform (cl:make-array 0 :element-type 'udpmulti_transport-msg:UDPMultTopic :initial-element (cl:make-instance 'udpmulti_transport-msg:UDPMultTopic))))
)

(cl:defclass UDPMultGetTopicList-response (<UDPMultGetTopicList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UDPMultGetTopicList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UDPMultGetTopicList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name udpmulti_transport-srv:<UDPMultGetTopicList-response> is deprecated: use udpmulti_transport-srv:UDPMultGetTopicList-response instead.")))

(cl:ensure-generic-function 'multicast_address-val :lambda-list '(m))
(cl:defmethod multicast_address-val ((m <UDPMultGetTopicList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader udpmulti_transport-srv:multicast_address-val is deprecated.  Use udpmulti_transport-srv:multicast_address instead.")
  (multicast_address m))

(cl:ensure-generic-function 'topics-val :lambda-list '(m))
(cl:defmethod topics-val ((m <UDPMultGetTopicList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader udpmulti_transport-srv:topics-val is deprecated.  Use udpmulti_transport-srv:topics instead.")
  (topics m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UDPMultGetTopicList-response>) ostream)
  "Serializes a message object of type '<UDPMultGetTopicList-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'multicast_address))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'multicast_address))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'topics))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'topics))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UDPMultGetTopicList-response>) istream)
  "Deserializes a message object of type '<UDPMultGetTopicList-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'multicast_address) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'multicast_address) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'topics) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'topics)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'udpmulti_transport-msg:UDPMultTopic))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UDPMultGetTopicList-response>)))
  "Returns string type for a service object of type '<UDPMultGetTopicList-response>"
  "udpmulti_transport/UDPMultGetTopicListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UDPMultGetTopicList-response)))
  "Returns string type for a service object of type 'UDPMultGetTopicList-response"
  "udpmulti_transport/UDPMultGetTopicListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UDPMultGetTopicList-response>)))
  "Returns md5sum for a message object of type '<UDPMultGetTopicList-response>"
  "22672cb98b49fe101a321cb17bceec21")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UDPMultGetTopicList-response)))
  "Returns md5sum for a message object of type 'UDPMultGetTopicList-response"
  "22672cb98b49fe101a321cb17bceec21")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UDPMultGetTopicList-response>)))
  "Returns full string definition for message of type '<UDPMultGetTopicList-response>"
  (cl:format cl:nil "string multicast_address~%udpmulti_transport/UDPMultTopic[] topics~%~%~%================================================================================~%MSG: udpmulti_transport/UDPMultTopic~%string topic~%uint16 port~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UDPMultGetTopicList-response)))
  "Returns full string definition for message of type 'UDPMultGetTopicList-response"
  (cl:format cl:nil "string multicast_address~%udpmulti_transport/UDPMultTopic[] topics~%~%~%================================================================================~%MSG: udpmulti_transport/UDPMultTopic~%string topic~%uint16 port~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UDPMultGetTopicList-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'multicast_address))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'topics) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UDPMultGetTopicList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UDPMultGetTopicList-response
    (cl:cons ':multicast_address (multicast_address msg))
    (cl:cons ':topics (topics msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UDPMultGetTopicList)))
  'UDPMultGetTopicList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UDPMultGetTopicList)))
  'UDPMultGetTopicList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UDPMultGetTopicList)))
  "Returns string type for a service object of type '<UDPMultGetTopicList>"
  "udpmulti_transport/UDPMultGetTopicList")