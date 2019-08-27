; Auto-generated. Do not edit!


(cl:in-package bz2_transport-msg)


;//! \htmlinclude BZ2Packet.msg.html

(cl:defclass <BZ2Packet> (roslisp-msg-protocol:ros-message)
  ((original_length
    :reader original_length
    :initarg :original_length
    :type cl:integer
    :initform 0)
   (buffer
    :reader buffer
    :initarg :buffer
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass BZ2Packet (<BZ2Packet>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BZ2Packet>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BZ2Packet)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bz2_transport-msg:<BZ2Packet> is deprecated: use bz2_transport-msg:BZ2Packet instead.")))

(cl:ensure-generic-function 'original_length-val :lambda-list '(m))
(cl:defmethod original_length-val ((m <BZ2Packet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bz2_transport-msg:original_length-val is deprecated.  Use bz2_transport-msg:original_length instead.")
  (original_length m))

(cl:ensure-generic-function 'buffer-val :lambda-list '(m))
(cl:defmethod buffer-val ((m <BZ2Packet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bz2_transport-msg:buffer-val is deprecated.  Use bz2_transport-msg:buffer instead.")
  (buffer m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BZ2Packet>) ostream)
  "Serializes a message object of type '<BZ2Packet>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'original_length)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'original_length)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'original_length)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'original_length)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'buffer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'buffer))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BZ2Packet>) istream)
  "Deserializes a message object of type '<BZ2Packet>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'original_length)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'original_length)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'original_length)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'original_length)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'buffer) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'buffer)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BZ2Packet>)))
  "Returns string type for a message object of type '<BZ2Packet>"
  "bz2_transport/BZ2Packet")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BZ2Packet)))
  "Returns string type for a message object of type 'BZ2Packet"
  "bz2_transport/BZ2Packet")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BZ2Packet>)))
  "Returns md5sum for a message object of type '<BZ2Packet>"
  "37a209db6e0c11cc6c12601cdd2e4aef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BZ2Packet)))
  "Returns md5sum for a message object of type 'BZ2Packet"
  "37a209db6e0c11cc6c12601cdd2e4aef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BZ2Packet>)))
  "Returns full string definition for message of type '<BZ2Packet>"
  (cl:format cl:nil "uint32 original_length~%uint8[] buffer~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BZ2Packet)))
  "Returns full string definition for message of type 'BZ2Packet"
  (cl:format cl:nil "uint32 original_length~%uint8[] buffer~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BZ2Packet>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'buffer) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BZ2Packet>))
  "Converts a ROS message object to a list"
  (cl:list 'BZ2Packet
    (cl:cons ':original_length (original_length msg))
    (cl:cons ':buffer (buffer msg))
))
