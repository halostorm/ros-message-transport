
(cl:in-package :asdf)

(defsystem "sharedmem_transport-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SharedMemBlock" :depends-on ("_package_SharedMemBlock"))
    (:file "_package_SharedMemBlock" :depends-on ("_package"))
    (:file "SharedMemHeader" :depends-on ("_package_SharedMemHeader"))
    (:file "_package_SharedMemHeader" :depends-on ("_package"))
  ))