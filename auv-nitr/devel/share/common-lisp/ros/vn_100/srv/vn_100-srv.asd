
(cl:in-package :asdf)

(defsystem "vn_100-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "depth_srv" :depends-on ("_package_depth_srv"))
    (:file "_package_depth_srv" :depends-on ("_package"))
    (:file "YPR" :depends-on ("_package_YPR"))
    (:file "_package_YPR" :depends-on ("_package"))
  ))