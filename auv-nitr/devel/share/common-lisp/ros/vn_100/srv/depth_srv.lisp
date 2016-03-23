; Auto-generated. Do not edit!


(cl:in-package vn_100-srv)


;//! \htmlinclude depth_srv-request.msg.html

(cl:defclass <depth_srv-request> (roslisp-msg-protocol:ros-message)
  ((input
    :reader input
    :initarg :input
    :type cl:string
    :initform ""))
)

(cl:defclass depth_srv-request (<depth_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <depth_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'depth_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vn_100-srv:<depth_srv-request> is deprecated: use vn_100-srv:depth_srv-request instead.")))

(cl:ensure-generic-function 'input-val :lambda-list '(m))
(cl:defmethod input-val ((m <depth_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vn_100-srv:input-val is deprecated.  Use vn_100-srv:input instead.")
  (input m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <depth_srv-request>) ostream)
  "Serializes a message object of type '<depth_srv-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'input))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'input))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <depth_srv-request>) istream)
  "Deserializes a message object of type '<depth_srv-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'input) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'input) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<depth_srv-request>)))
  "Returns string type for a service object of type '<depth_srv-request>"
  "vn_100/depth_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'depth_srv-request)))
  "Returns string type for a service object of type 'depth_srv-request"
  "vn_100/depth_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<depth_srv-request>)))
  "Returns md5sum for a message object of type '<depth_srv-request>"
  "02afbbc686e2c044c6d3ef5d5a4f3cd3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'depth_srv-request)))
  "Returns md5sum for a message object of type 'depth_srv-request"
  "02afbbc686e2c044c6d3ef5d5a4f3cd3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<depth_srv-request>)))
  "Returns full string definition for message of type '<depth_srv-request>"
  (cl:format cl:nil "string input~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'depth_srv-request)))
  "Returns full string definition for message of type 'depth_srv-request"
  (cl:format cl:nil "string input~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <depth_srv-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'input))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <depth_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'depth_srv-request
    (cl:cons ':input (input msg))
))
;//! \htmlinclude depth_srv-response.msg.html

(cl:defclass <depth_srv-response> (roslisp-msg-protocol:ros-message)
  ((output
    :reader output
    :initarg :output
    :type cl:float
    :initform 0.0))
)

(cl:defclass depth_srv-response (<depth_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <depth_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'depth_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vn_100-srv:<depth_srv-response> is deprecated: use vn_100-srv:depth_srv-response instead.")))

(cl:ensure-generic-function 'output-val :lambda-list '(m))
(cl:defmethod output-val ((m <depth_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vn_100-srv:output-val is deprecated.  Use vn_100-srv:output instead.")
  (output m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <depth_srv-response>) ostream)
  "Serializes a message object of type '<depth_srv-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'output))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <depth_srv-response>) istream)
  "Deserializes a message object of type '<depth_srv-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'output) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<depth_srv-response>)))
  "Returns string type for a service object of type '<depth_srv-response>"
  "vn_100/depth_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'depth_srv-response)))
  "Returns string type for a service object of type 'depth_srv-response"
  "vn_100/depth_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<depth_srv-response>)))
  "Returns md5sum for a message object of type '<depth_srv-response>"
  "02afbbc686e2c044c6d3ef5d5a4f3cd3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'depth_srv-response)))
  "Returns md5sum for a message object of type 'depth_srv-response"
  "02afbbc686e2c044c6d3ef5d5a4f3cd3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<depth_srv-response>)))
  "Returns full string definition for message of type '<depth_srv-response>"
  (cl:format cl:nil "float32 output~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'depth_srv-response)))
  "Returns full string definition for message of type 'depth_srv-response"
  (cl:format cl:nil "float32 output~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <depth_srv-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <depth_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'depth_srv-response
    (cl:cons ':output (output msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'depth_srv)))
  'depth_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'depth_srv)))
  'depth_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'depth_srv)))
  "Returns string type for a service object of type '<depth_srv>"
  "vn_100/depth_srv")