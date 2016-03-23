; Auto-generated. Do not edit!


(cl:in-package vn_100-msg)


;//! \htmlinclude ins_data.msg.html

(cl:defclass <ins_data> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (YPR
    :reader YPR
    :initarg :YPR
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (quat_data
    :reader quat_data
    :initarg :quat_data
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ins_data (<ins_data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ins_data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ins_data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vn_100-msg:<ins_data> is deprecated: use vn_100-msg:ins_data instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ins_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vn_100-msg:header-val is deprecated.  Use vn_100-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'YPR-val :lambda-list '(m))
(cl:defmethod YPR-val ((m <ins_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vn_100-msg:YPR-val is deprecated.  Use vn_100-msg:YPR instead.")
  (YPR m))

(cl:ensure-generic-function 'quat_data-val :lambda-list '(m))
(cl:defmethod quat_data-val ((m <ins_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vn_100-msg:quat_data-val is deprecated.  Use vn_100-msg:quat_data instead.")
  (quat_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ins_data>) ostream)
  "Serializes a message object of type '<ins_data>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'YPR) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'quat_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ins_data>) istream)
  "Deserializes a message object of type '<ins_data>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'YPR) istream)
  (cl:setf (cl:slot-value msg 'quat_data) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'quat_data)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ins_data>)))
  "Returns string type for a message object of type '<ins_data>"
  "vn_100/ins_data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ins_data)))
  "Returns string type for a message object of type 'ins_data"
  "vn_100/ins_data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ins_data>)))
  "Returns md5sum for a message object of type '<ins_data>"
  "6a03b8a926f3035d530c063d87d10078")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ins_data)))
  "Returns md5sum for a message object of type 'ins_data"
  "6a03b8a926f3035d530c063d87d10078")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ins_data>)))
  "Returns full string definition for message of type '<ins_data>"
  (cl:format cl:nil "std_msgs/Header        header~%geometry_msgs/Vector3  YPR~%float32[4]              quat_data~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ins_data)))
  "Returns full string definition for message of type 'ins_data"
  (cl:format cl:nil "std_msgs/Header        header~%geometry_msgs/Vector3  YPR~%float32[4]              quat_data~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ins_data>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'YPR))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'quat_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ins_data>))
  "Converts a ROS message object to a list"
  (cl:list 'ins_data
    (cl:cons ':header (header msg))
    (cl:cons ':YPR (YPR msg))
    (cl:cons ':quat_data (quat_data msg))
))
