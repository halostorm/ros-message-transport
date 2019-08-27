; Auto-generated. Do not edit!


(cl:in-package sharedmem_transport-msg)


;//! \htmlinclude SharedMemHeader.msg.html

(cl:defclass <SharedMemHeader> (roslisp-msg-protocol:ros-message)
  ((handle
    :reader handle
    :initarg :handle
    :type cl:integer
    :initform 0))
)

(cl:defclass SharedMemHeader (<SharedMemHeader>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SharedMemHeader>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SharedMemHeader)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sharedmem_transport-msg:<SharedMemHeader> is deprecated: use sharedmem_transport-msg:SharedMemHeader instead.")))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <SharedMemHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sharedmem_transport-msg:handle-val is deprecated.  Use sharedmem_transport-msg:handle instead.")
  (handle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SharedMemHeader>) ostream)
  "Serializes a message object of type '<SharedMemHeader>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'handle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'handle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'handle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'handle)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SharedMemHeader>) istream)
  "Deserializes a message object of type '<SharedMemHeader>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'handle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'handle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'handle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'handle)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SharedMemHeader>)))
  "Returns string type for a message object of type '<SharedMemHeader>"
  "sharedmem_transport/SharedMemHeader")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SharedMemHeader)))
  "Returns string type for a message object of type 'SharedMemHeader"
  "sharedmem_transport/SharedMemHeader")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SharedMemHeader>)))
  "Returns md5sum for a message object of type '<SharedMemHeader>"
  "de8778c721e9c9c4deca368d96f4cbf5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SharedMemHeader)))
  "Returns md5sum for a message object of type 'SharedMemHeader"
  "de8778c721e9c9c4deca368d96f4cbf5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SharedMemHeader>)))
  "Returns full string definition for message of type '<SharedMemHeader>"
  (cl:format cl:nil "uint32 handle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SharedMemHeader)))
  "Returns full string definition for message of type 'SharedMemHeader"
  (cl:format cl:nil "uint32 handle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SharedMemHeader>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SharedMemHeader>))
  "Converts a ROS message object to a list"
  (cl:list 'SharedMemHeader
    (cl:cons ':handle (handle msg))
))
