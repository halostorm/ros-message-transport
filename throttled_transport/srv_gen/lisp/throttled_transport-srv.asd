
(cl:in-package :asdf)

(defsystem "throttled_transport-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SetThrottlingParameters" :depends-on ("_package_SetThrottlingParameters"))
    (:file "_package_SetThrottlingParameters" :depends-on ("_package"))
  ))