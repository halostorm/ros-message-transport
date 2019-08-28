file(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "../src/sharedmem_transport/msg"
  "../src/sharedmem_transport/srv"
  "CMakeFiles/ROSBUILD_gensrv_py"
  "../src/sharedmem_transport/srv/__init__.py"
  "../src/sharedmem_transport/srv/_SHMGetBlocks.py"
  "../src/sharedmem_transport/srv/_SHMReleaseMemory.py"
  "../src/sharedmem_transport/srv/_SHMClearAll.py"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/ROSBUILD_gensrv_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
