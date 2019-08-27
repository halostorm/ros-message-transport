
(cl:in-package :asdf)

(defsystem "bz2_transport-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "BZ2Packet" :depends-on ("_package_BZ2Packet"))
    (:file "_package_BZ2Packet" :depends-on ("_package"))
  ))