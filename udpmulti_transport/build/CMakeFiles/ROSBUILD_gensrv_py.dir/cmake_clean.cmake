file(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "../src/udpmulti_transport/msg"
  "../src/udpmulti_transport/srv"
  "CMakeFiles/ROSBUILD_gensrv_py"
  "../src/udpmulti_transport/srv/__init__.py"
  "../src/udpmulti_transport/srv/_UDPMultRegisterTopic.py"
  "../src/udpmulti_transport/srv/_UDPMultClearAll.py"
  "../src/udpmulti_transport/srv/_UDPMultGetTopicList.py"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/ROSBUILD_gensrv_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
