; Auto-generated. Do not edit!


(cl:in-package vn_100-srv)


;//! \htmlinclude YPR-request.msg.html

(cl:defclass <YPR-request> (roslisp-msg-protocol:ros-message)
  ((ins
    :reader ins
    :initarg :ins
    :type cl:string
    :initform ""))
)

(cl:defclass YPR-request (<YPR-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <YPR-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'YPR-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vn_100-srv:<YPR-request> is deprecated: use vn_100-srv:YPR-request instead.")))

(cl:ensure-generic-function 'ins-val :lambda-list '(m))
(cl:defmethod ins-val ((m <YPR-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vn_100-srv:ins-val is deprecated.  Use vn_100-srv:ins instead.")
  (ins m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <YPR-request>) ostream)
  "Serializes a message object of type '<YPR-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ins))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ins))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <YPR-request>) istream)
  "Deserializes a message object of type '<YPR-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ins) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ins) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<YPR-request>)))
  "Returns string type for a service object of type '<YPR-request>"
  "vn_100/YPRRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YPR-request)))
  "Returns string type for a service object of type 'YPR-request"
  "vn_100/YPRRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<YPR-request>)))
  "Returns md5sum for a message object of type '<YPR-request>"
  "38523f96e5f55f0457623ec9a8c6ca22")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'YPR-request)))
  "Returns md5sum for a message object of type 'YPR-request"
  "38523f96e5f55f0457623ec9a8c6ca22")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<YPR-request>)))
  "Returns full string definition for message of type '<YPR-request>"
  (cl:format cl:nil "string   ins~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'YPR-request)))
  "Returns full string definition for message of type 'YPR-request"
  (cl:format cl:nil "string   ins~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <YPR-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'ins))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <YPR-request>))
  "Converts a ROS message object to a list"
  (cl:list 'YPR-request
    (cl:cons ':ins (ins msg))
))
;//! \htmlinclude YPR-response.msg.html

(cl:defclass <YPR-response> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass YPR-response (<YPR-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <YPR-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'YPR-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vn_100-srv:<YPR-response> is deprecated: use vn_100-srv:YPR-response instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <YPR-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vn_100-srv:data-val is deprecated.  Use vn_100-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <YPR-response>) ostream)
  "Serializes a message object of type '<YPR-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <YPR-response>) istream)
  "Deserializes a message object of type '<YPR-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<YPR-response>)))
  "Returns string type for a service object of type '<YPR-response>"
  "vn_100/YPRResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YPR-response)))
  "Returns string type for a service object of type 'YPR-response"
  "vn_100/YPRResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<YPR-response>)))
  "Returns md5sum for a message object of type '<YPR-response>"
  "38523f96e5f55f0457623ec9a8c6ca22")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'YPR-response)))
  "Returns md5sum for a message object of type 'YPR-response"
  "38523f96e5f55f0457623ec9a8c6ca22")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<YPR-response>)))
  "Returns full string definition for message of type '<YPR-response>"
  (cl:format cl:nil "float32[]   data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'YPR-response)))
  "Returns full string definition for message of type 'YPR-response"
  (cl:format cl:nil "float32[]   data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <YPR-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <YPR-response>))
  "Converts a ROS message object to a list"
  (cl:list 'YPR-response
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'YPR)))
  'YPR-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'YPR)))
  'YPR-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YPR)))
  "Returns string type for a service object of type '<YPR>"
  "vn_100/YPR")