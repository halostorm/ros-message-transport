
(cl:in-package :asdf)

(defsystem "udpmulti_transport-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "UDPMultTopic" :depends-on ("_package_UDPMultTopic"))
    (:file "_package_UDPMultTopic" :depends-on ("_package"))
    (:file "UDPMultHeader" :depends-on ("_package_UDPMultHeader"))
    (:file "_package_UDPMultHeader" :depends-on ("_package"))
  ))