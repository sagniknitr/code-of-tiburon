; Auto-generated. Do not edit!


(cl:in-package vn_100-msg)


;//! \htmlinclude send_arduino.msg.html

(cl:defclass <send_arduino> (roslisp-msg-protocol:ros-message)
  ((header_1
    :reader header_1
    :initarg :header_1
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (sensor
    :reader sensor
    :initarg :sensor
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (quat_data_1
    :reader quat_data_1
    :initarg :quat_data_1
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass send_arduino (<send_arduino>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <send_arduino>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'send_arduino)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vn_100-msg:<send_arduino> is deprecated: use vn_100-msg:send_arduino instead.")))

(cl:ensure-generic-function 'header_1-val :lambda-list '(m))
(cl:defmethod header_1-val ((m <send_arduino>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vn_100-msg:header_1-val is deprecated.  Use vn_100-msg:header_1 instead.")
  (header_1 m))

(cl:ensure-generic-function 'sensor-val :lambda-list '(m))
(cl:defmethod sensor-val ((m <send_arduino>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vn_100-msg:sensor-val is deprecated.  Use vn_100-msg:sensor instead.")
  (sensor m))

(cl:ensure-generic-function 'quat_data_1-val :lambda-list '(m))
(cl:defmethod quat_data_1-val ((m <send_arduino>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vn_100-msg:quat_data_1-val is deprecated.  Use vn_100-msg:quat_data_1 instead.")
  (quat_data_1 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <send_arduino>) ostream)
  "Serializes a message object of type '<send_arduino>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header_1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sensor) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'quat_data_1))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <send_arduino>) istream)
  "Deserializes a message object of type '<send_arduino>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header_1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sensor) istream)
  (cl:setf (cl:slot-value msg 'quat_data_1) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'quat_data_1)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<send_arduino>)))
  "Returns string type for a message object of type '<send_arduino>"
  "vn_100/send_arduino")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'send_arduino)))
  "Returns string type for a message object of type 'send_arduino"
  "vn_100/send_arduino")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<send_arduino>)))
  "Returns md5sum for a message object of type '<send_arduino>"
  "a0356d4c592d7d6a6ce8c2b527dfae48")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'send_arduino)))
  "Returns md5sum for a message object of type 'send_arduino"
  "a0356d4c592d7d6a6ce8c2b527dfae48")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<send_arduino>)))
  "Returns full string definition for message of type '<send_arduino>"
  (cl:format cl:nil "std_msgs/Header        header_1~%geometry_msgs/Vector3  sensor~%float32[4]              quat_data_1~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'send_arduino)))
  "Returns full string definition for message of type 'send_arduino"
  (cl:format cl:nil "std_msgs/Header        header_1~%geometry_msgs/Vector3  sensor~%float32[4]              quat_data_1~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <send_arduino>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header_1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sensor))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'quat_data_1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <send_arduino>))
  "Converts a ROS message object to a list"
  (cl:list 'send_arduino
    (cl:cons ':header_1 (header_1 msg))
    (cl:cons ':sensor (sensor msg))
    (cl:cons ':quat_data_1 (quat_data_1 msg))
))
