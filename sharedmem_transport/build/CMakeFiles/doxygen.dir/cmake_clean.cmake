file(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "../src/sharedmem_transport/msg"
  "../src/sharedmem_transport/srv"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/doxygen.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
