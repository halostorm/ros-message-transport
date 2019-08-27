file(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "../src/udpmulti_transport/msg"
  "../src/udpmulti_transport/srv"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/udpmulti_transport/msg/__init__.py"
  "../src/udpmulti_transport/msg/_UDPMultTopic.py"
  "../src/udpmulti_transport/msg/_UDPMultHeader.py"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
