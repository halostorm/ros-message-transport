; Auto-generated. Do not edit!


(cl:in-package sharedmem_transport-msg)


;//! \htmlinclude SharedMemBlock.msg.html

(cl:defclass <SharedMemBlock> (roslisp-msg-protocol:ros-message)
  ((handle
    :reader handle
    :initarg :handle
    :type cl:integer
    :initform 0)
   (size
    :reader size
    :initarg :size
    :type cl:integer
    :initform 0)
   (allocated
    :reader allocated
    :initarg :allocated
    :type cl:integer
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass SharedMemBlock (<SharedMemBlock>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SharedMemBlock>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SharedMemBlock)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sharedmem_transport-msg:<SharedMemBlock> is deprecated: use sharedmem_transport-msg:SharedMemBlock instead.")))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <SharedMemBlock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sharedmem_transport-msg:handle-val is deprecated.  Use sharedmem_transport-msg:handle instead.")
  (handle m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <SharedMemBlock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sharedmem_transport-msg:size-val is deprecated.  Use sharedmem_transport-msg:size instead.")
  (size m))

(cl:ensure-generic-function 'allocated-val :lambda-list '(m))
(cl:defmethod allocated-val ((m <SharedMemBlock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sharedmem_transport-msg:allocated-val is deprecated.  Use sharedmem_transport-msg:allocated instead.")
  (allocated m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <SharedMemBlock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sharedmem_transport-msg:name-val is deprecated.  Use sharedmem_transport-msg:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SharedMemBlock>) ostream)
  "Serializes a message object of type '<SharedMemBlock>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'handle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'handle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'handle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'handle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'allocated)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'allocated)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'allocated)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'allocated)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SharedMemBlock>) istream)
  "Deserializes a message object of type '<SharedMemBlock>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'handle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'handle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'handle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'handle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'allocated)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'allocated)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'allocated)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'allocated)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SharedMemBlock>)))
  "Returns string type for a message object of type '<SharedMemBlock>"
  "sharedmem_transport/SharedMemBlock")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SharedMemBlock)))
  "Returns string type for a message object of type 'SharedMemBlock"
  "sharedmem_transport/SharedMemBlock")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SharedMemBlock>)))
  "Returns md5sum for a message object of type '<SharedMemBlock>"
  "56cdbb4565401cc80f0d826e209bbbe5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SharedMemBlock)))
  "Returns md5sum for a message object of type 'SharedMemBlock"
  "56cdbb4565401cc80f0d826e209bbbe5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SharedMemBlock>)))
  "Returns full string definition for message of type '<SharedMemBlock>"
  (cl:format cl:nil "uint32 handle~%uint32 size~%uint32 allocated~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SharedMemBlock)))
  "Returns full string definition for message of type 'SharedMemBlock"
  (cl:format cl:nil "uint32 handle~%uint32 size~%uint32 allocated~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SharedMemBlock>))
  (cl:+ 0
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SharedMemBlock>))
  "Converts a ROS message object to a list"
  (cl:list 'SharedMemBlock
    (cl:cons ':handle (handle msg))
    (cl:cons ':size (size msg))
    (cl:cons ':allocated (allocated msg))
    (cl:cons ':name (name msg))
))
