file(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "../src/sharedmem_transport/msg"
  "../src/sharedmem_transport/srv"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/sharedmem_transport/msg/__init__.py"
  "../src/sharedmem_transport/msg/_SharedMemHeader.py"
  "../src/sharedmem_transport/msg/_SharedMemBlock.py"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
