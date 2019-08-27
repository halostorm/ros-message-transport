
(cl:in-package :asdf)

(defsystem "udpmulti_transport-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :udpmulti_transport-msg
)
  :components ((:file "_package")
    (:file "UDPMultGetTopicList" :depends-on ("_package_UDPMultGetTopicList"))
    (:file "_package_UDPMultGetTopicList" :depends-on ("_package"))
    (:file "UDPMultClearAll" :depends-on ("_package_UDPMultClearAll"))
    (:file "_package_UDPMultClearAll" :depends-on ("_package"))
    (:file "UDPMultRegisterTopic" :depends-on ("_package_UDPMultRegisterTopic"))
    (:file "_package_UDPMultRegisterTopic" :depends-on ("_package"))
  ))