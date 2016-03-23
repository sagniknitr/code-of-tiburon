; Auto-generated. Do not edit!


(cl:in-package vn_100-msg)


;//! \htmlinclude auvcontrol.msg.html

(cl:defclass <auvcontrol> (roslisp-msg-protocol:ros-message)
  ((msg
    :reader msg
    :initarg :msg
    :type cl:fixnum
    :initform 0))
)

(cl:defclass auvcontrol (<auvcontrol>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <auvcontrol>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'auvcontrol)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vn_100-msg:<auvcontrol> is deprecated: use vn_100-msg:auvcontrol instead.")))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <auvcontrol>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vn_100-msg:msg-val is deprecated.  Use vn_100-msg:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <auvcontrol>) ostream)
  "Serializes a message object of type '<auvcontrol>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'msg)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <auvcontrol>) istream)
  "Deserializes a message object of type '<auvcontrol>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'msg)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<auvcontrol>)))
  "Returns string type for a message object of type '<auvcontrol>"
  "vn_100/auvcontrol")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'auvcontrol)))
  "Returns string type for a message object of type 'auvcontrol"
  "vn_100/auvcontrol")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<auvcontrol>)))
  "Returns md5sum for a message object of type '<auvcontrol>"
  "7f3267e4c6a857ad880bfaf772c93116")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'auvcontrol)))
  "Returns md5sum for a message object of type 'auvcontrol"
  "7f3267e4c6a857ad880bfaf772c93116")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<auvcontrol>)))
  "Returns full string definition for message of type '<auvcontrol>"
  (cl:format cl:nil "uint16 msg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'auvcontrol)))
  "Returns full string definition for message of type 'auvcontrol"
  (cl:format cl:nil "uint16 msg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <auvcontrol>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <auvcontrol>))
  "Converts a ROS message object to a list"
  (cl:list 'auvcontrol
    (cl:cons ':msg (msg msg))
))
