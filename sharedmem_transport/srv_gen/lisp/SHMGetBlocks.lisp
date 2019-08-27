; Auto-generated. Do not edit!


(cl:in-package sharedmem_transport-srv)


;//! \htmlinclude SHMGetBlocks-request.msg.html

(cl:defclass <SHMGetBlocks-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SHMGetBlocks-request (<SHMGetBlocks-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SHMGetBlocks-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SHMGetBlocks-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sharedmem_transport-srv:<SHMGetBlocks-request> is deprecated: use sharedmem_transport-srv:SHMGetBlocks-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SHMGetBlocks-request>) ostream)
  "Serializes a message object of type '<SHMGetBlocks-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SHMGetBlocks-request>) istream)
  "Deserializes a message object of type '<SHMGetBlocks-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SHMGetBlocks-request>)))
  "Returns string type for a service object of type '<SHMGetBlocks-request>"
  "sharedmem_transport/SHMGetBlocksRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SHMGetBlocks-request)))
  "Returns string type for a service object of type 'SHMGetBlocks-request"
  "sharedmem_transport/SHMGetBlocksRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SHMGetBlocks-request>)))
  "Returns md5sum for a message object of type '<SHMGetBlocks-request>"
  "2f7f2be967ee5b16b25d7eeba51fc62a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SHMGetBlocks-request)))
  "Returns md5sum for a message object of type 'SHMGetBlocks-request"
  "2f7f2be967ee5b16b25d7eeba51fc62a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SHMGetBlocks-request>)))
  "Returns full string definition for message of type '<SHMGetBlocks-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SHMGetBlocks-request)))
  "Returns full string definition for message of type 'SHMGetBlocks-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SHMGetBlocks-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SHMGetBlocks-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SHMGetBlocks-request
))
;//! \htmlinclude SHMGetBlocks-response.msg.html

(cl:defclass <SHMGetBlocks-response> (roslisp-msg-protocol:ros-message)
  ((blocks
    :reader blocks
    :initarg :blocks
    :type (cl:vector sharedmem_transport-msg:SharedMemBlock)
   :initform (cl:make-array 0 :element-type 'sharedmem_transport-msg:SharedMemBlock :initial-element (cl:make-instance 'sharedmem_transport-msg:SharedMemBlock))))
)

(cl:defclass SHMGetBlocks-response (<SHMGetBlocks-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SHMGetBlocks-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SHMGetBlocks-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sharedmem_transport-srv:<SHMGetBlocks-response> is deprecated: use sharedmem_transport-srv:SHMGetBlocks-response instead.")))

(cl:ensure-generic-function 'blocks-val :lambda-list '(m))
(cl:defmethod blocks-val ((m <SHMGetBlocks-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sharedmem_transport-srv:blocks-val is deprecated.  Use sharedmem_transport-srv:blocks instead.")
  (blocks m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SHMGetBlocks-response>) ostream)
  "Serializes a message object of type '<SHMGetBlocks-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'blocks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'blocks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SHMGetBlocks-response>) istream)
  "Deserializes a message object of type '<SHMGetBlocks-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'blocks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'blocks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sharedmem_transport-msg:SharedMemBlock))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SHMGetBlocks-response>)))
  "Returns string type for a service object of type '<SHMGetBlocks-response>"
  "sharedmem_transport/SHMGetBlocksResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SHMGetBlocks-response)))
  "Returns string type for a service object of type 'SHMGetBlocks-response"
  "sharedmem_transport/SHMGetBlocksResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SHMGetBlocks-response>)))
  "Returns md5sum for a message object of type '<SHMGetBlocks-response>"
  "2f7f2be967ee5b16b25d7eeba51fc62a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SHMGetBlocks-response)))
  "Returns md5sum for a message object of type 'SHMGetBlocks-response"
  "2f7f2be967ee5b16b25d7eeba51fc62a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SHMGetBlocks-response>)))
  "Returns full string definition for message of type '<SHMGetBlocks-response>"
  (cl:format cl:nil "sharedmem_transport/SharedMemBlock[] blocks~%~%~%================================================================================~%MSG: sharedmem_transport/SharedMemBlock~%uint32 handle~%uint32 size~%uint32 allocated~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SHMGetBlocks-response)))
  "Returns full string definition for message of type 'SHMGetBlocks-response"
  (cl:format cl:nil "sharedmem_transport/SharedMemBlock[] blocks~%~%~%================================================================================~%MSG: sharedmem_transport/SharedMemBlock~%uint32 handle~%uint32 size~%uint32 allocated~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SHMGetBlocks-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'blocks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SHMGetBlocks-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SHMGetBlocks-response
    (cl:cons ':blocks (blocks msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SHMGetBlocks)))
  'SHMGetBlocks-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SHMGetBlocks)))
  'SHMGetBlocks-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SHMGetBlocks)))
  "Returns string type for a service object of type '<SHMGetBlocks>"
  "sharedmem_transport/SHMGetBlocks")