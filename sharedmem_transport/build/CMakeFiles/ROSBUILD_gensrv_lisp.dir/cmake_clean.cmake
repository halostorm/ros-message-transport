file(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "../src/sharedmem_transport/msg"
  "../src/sharedmem_transport/srv"
  "CMakeFiles/ROSBUILD_gensrv_lisp"
  "../srv_gen/lisp/SHMGetBlocks.lisp"
  "../srv_gen/lisp/_package.lisp"
  "../srv_gen/lisp/_package_SHMGetBlocks.lisp"
  "../srv_gen/lisp/SHMClearAll.lisp"
  "../srv_gen/lisp/_package.lisp"
  "../srv_gen/lisp/_package_SHMClearAll.lisp"
  "../srv_gen/lisp/SHMReleaseMemory.lisp"
  "../srv_gen/lisp/_package.lisp"
  "../srv_gen/lisp/_package_SHMReleaseMemory.lisp"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/ROSBUILD_gensrv_lisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
