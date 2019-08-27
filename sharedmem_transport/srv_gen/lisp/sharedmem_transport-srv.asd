
(cl:in-package :asdf)

(defsystem "sharedmem_transport-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sharedmem_transport-msg
)
  :components ((:file "_package")
    (:file "SHMGetBlocks" :depends-on ("_package_SHMGetBlocks"))
    (:file "_package_SHMGetBlocks" :depends-on ("_package"))
    (:file "SHMClearAll" :depends-on ("_package_SHMClearAll"))
    (:file "_package_SHMClearAll" :depends-on ("_package"))
    (:file "SHMReleaseMemory" :depends-on ("_package_SHMReleaseMemory"))
    (:file "_package_SHMReleaseMemory" :depends-on ("_package"))
  ))