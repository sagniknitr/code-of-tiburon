; Auto-generated. Do not edit!


(cl:in-package vn_100-msg)


;//! \htmlinclude sensor_data.msg.html

(cl:defclass <sensor_data> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (Mag
    :reader Mag
    :initarg :Mag
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (Accel
    :reader Accel
    :initarg :Accel
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (Gyro
    :reader Gyro
    :initarg :Gyro
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (Temp
    :reader Temp
    :initarg :Temp
    :type cl:float
    :initform 0.0)
   (Pressure
    :reader Pressure
    :initarg :Pressure
    :type cl:float
    :initform 0.0))
)

(cl:defclass sensor_data (<sensor_data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sensor_data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sensor_data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vn_100-msg:<sensor_data> is deprecated: use vn_100-msg:sensor_data instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <sensor_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vn_100-msg:header-val is deprecated.  Use vn_100-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'Mag-val :lambda-list '(m))
(cl:defmethod Mag-val ((m <sensor_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vn_100-msg:Mag-val is deprecated.  Use vn_100-msg:Mag instead.")
  (Mag m))

(cl:ensure-generic-function 'Accel-val :lambda-list '(m))
(cl:defmethod Accel-val ((m <sensor_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vn_100-msg:Accel-val is deprecated.  Use vn_100-msg:Accel instead.")
  (Accel m))

(cl:ensure-generic-function 'Gyro-val :lambda-list '(m))
(cl:defmethod Gyro-val ((m <sensor_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vn_100-msg:Gyro-val is deprecated.  Use vn_100-msg:Gyro instead.")
  (Gyro m))

(cl:ensure-generic-function 'Temp-val :lambda-list '(m))
(cl:defmethod Temp-val ((m <sensor_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vn_100-msg:Temp-val is deprecated.  Use vn_100-msg:Temp instead.")
  (Temp m))

(cl:ensure-generic-function 'Pressure-val :lambda-list '(m))
(cl:defmethod Pressure-val ((m <sensor_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vn_100-msg:Pressure-val is deprecated.  Use vn_100-msg:Pressure instead.")
  (Pressure m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sensor_data>) ostream)
  "Serializes a message object of type '<sensor_data>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Mag) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Accel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Gyro) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Temp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Pressure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sensor_data>) istream)
  "Deserializes a message object of type '<sensor_data>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Mag) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Accel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Gyro) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Temp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Pressure) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sensor_data>)))
  "Returns string type for a message object of type '<sensor_data>"
  "vn_100/sensor_data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sensor_data)))
  "Returns string type for a message object of type 'sensor_data"
  "vn_100/sensor_data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sensor_data>)))
  "Returns md5sum for a message object of type '<sensor_data>"
  "c5215e6ec84aeaa8f38adc4380e155e4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sensor_data)))
  "Returns md5sum for a message object of type 'sensor_data"
  "c5215e6ec84aeaa8f38adc4380e155e4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sensor_data>)))
  "Returns full string definition for message of type '<sensor_data>"
  (cl:format cl:nil "std_msgs/Header           header~%geometry_msgs/Vector3     Mag~%geometry_msgs/Vector3     Accel~%geometry_msgs/Vector3     Gyro~%float32                   Temp~%float32                   Pressure~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sensor_data)))
  "Returns full string definition for message of type 'sensor_data"
  (cl:format cl:nil "std_msgs/Header           header~%geometry_msgs/Vector3     Mag~%geometry_msgs/Vector3     Accel~%geometry_msgs/Vector3     Gyro~%float32                   Temp~%float32                   Pressure~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sensor_data>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Mag))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Accel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Gyro))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sensor_data>))
  "Converts a ROS message object to a list"
  (cl:list 'sensor_data
    (cl:cons ':header (header msg))
    (cl:cons ':Mag (Mag msg))
    (cl:cons ':Accel (Accel msg))
    (cl:cons ':Gyro (Gyro msg))
    (cl:cons ':Temp (Temp msg))
    (cl:cons ':Pressure (Pressure msg))
))
