file(REMOVE_RECURSE
  "../msg_gen"
  "../msg_gen"
  "../src/bz2_transport/msg"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/rospack_genmsg.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
