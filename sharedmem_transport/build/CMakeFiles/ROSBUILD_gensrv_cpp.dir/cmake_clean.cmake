file(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "../src/sharedmem_transport/msg"
  "../src/sharedmem_transport/srv"
  "CMakeFiles/ROSBUILD_gensrv_cpp"
  "../srv_gen/cpp/include/sharedmem_transport/SHMGetBlocks.h"
  "../srv_gen/cpp/include/sharedmem_transport/SHMClearAll.h"
  "../srv_gen/cpp/include/sharedmem_transport/SHMReleaseMemory.h"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/ROSBUILD_gensrv_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
