file(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "../src/udpmulti_transport/msg"
  "../src/udpmulti_transport/srv"
  "CMakeFiles/ROSBUILD_gensrv_cpp"
  "../srv_gen/cpp/include/udpmulti_transport/UDPMultRegisterTopic.h"
  "../srv_gen/cpp/include/udpmulti_transport/UDPMultClearAll.h"
  "../srv_gen/cpp/include/udpmulti_transport/UDPMultGetTopicList.h"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/ROSBUILD_gensrv_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
