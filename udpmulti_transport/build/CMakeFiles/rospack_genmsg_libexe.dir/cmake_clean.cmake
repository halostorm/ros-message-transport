file(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "../src/udpmulti_transport/msg"
  "../src/udpmulti_transport/srv"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/rospack_genmsg_libexe.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
