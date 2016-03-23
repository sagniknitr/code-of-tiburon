
(cl:in-package :asdf)

(defsystem "vn_100-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "sensor_data" :depends-on ("_package_sensor_data"))
    (:file "_package_sensor_data" :depends-on ("_package"))
    (:file "send_arduino" :depends-on ("_package_send_arduino"))
    (:file "_package_send_arduino" :depends-on ("_package"))
    (:file "ins_data" :depends-on ("_package_ins_data"))
    (:file "_package_ins_data" :depends-on ("_package"))
    (:file "auvcontrol" :depends-on ("_package_auvcontrol"))
    (:file "_package_auvcontrol" :depends-on ("_package"))
  ))