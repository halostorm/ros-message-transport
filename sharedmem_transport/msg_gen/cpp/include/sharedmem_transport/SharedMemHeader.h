/* Auto-generated by genmsg_cpp for file /home/duwenwen/Workspace/pointcloudcompress/ros-message-transport/sharedmem_transport/msg/SharedMemHeader.msg */
#ifndef SHAREDMEM_TRANSPORT_MESSAGE_SHAREDMEMHEADER_H
#define SHAREDMEM_TRANSPORT_MESSAGE_SHAREDMEMHEADER_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"


namespace sharedmem_transport
{
template <class ContainerAllocator>
struct SharedMemHeader_ {
  typedef SharedMemHeader_<ContainerAllocator> Type;

  SharedMemHeader_()
  : handle(0)
  {
  }

  SharedMemHeader_(const ContainerAllocator& _alloc)
  : handle(0)
  {
  }

  typedef uint32_t _handle_type;
  uint32_t handle;


  typedef boost::shared_ptr< ::sharedmem_transport::SharedMemHeader_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sharedmem_transport::SharedMemHeader_<ContainerAllocator>  const> ConstPtr;
}; // struct SharedMemHeader
typedef  ::sharedmem_transport::SharedMemHeader_<std::allocator<void> > SharedMemHeader;

typedef boost::shared_ptr< ::sharedmem_transport::SharedMemHeader> SharedMemHeaderPtr;
typedef boost::shared_ptr< ::sharedmem_transport::SharedMemHeader const> SharedMemHeaderConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::sharedmem_transport::SharedMemHeader_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::sharedmem_transport::SharedMemHeader_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace sharedmem_transport

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::sharedmem_transport::SharedMemHeader_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::sharedmem_transport::SharedMemHeader_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::sharedmem_transport::SharedMemHeader_<ContainerAllocator> > {
  static const char* value() 
  {
    return "de8778c721e9c9c4deca368d96f4cbf5";
  }

  static const char* value(const  ::sharedmem_transport::SharedMemHeader_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xde8778c721e9c9c4ULL;
  static const uint64_t static_value2 = 0xdeca368d96f4cbf5ULL;
};

template<class ContainerAllocator>
struct DataType< ::sharedmem_transport::SharedMemHeader_<ContainerAllocator> > {
  static const char* value() 
  {
    return "sharedmem_transport/SharedMemHeader";
  }

  static const char* value(const  ::sharedmem_transport::SharedMemHeader_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::sharedmem_transport::SharedMemHeader_<ContainerAllocator> > {
  static const char* value() 
  {
    return "uint32 handle\n\
\n\
";
  }

  static const char* value(const  ::sharedmem_transport::SharedMemHeader_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::sharedmem_transport::SharedMemHeader_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::sharedmem_transport::SharedMemHeader_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.handle);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER
}; // struct SharedMemHeader_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sharedmem_transport::SharedMemHeader_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::sharedmem_transport::SharedMemHeader_<ContainerAllocator> & v) 
  {
    s << indent << "handle: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.handle);
  }
};


} // namespace message_operations
} // namespace ros

#endif // SHAREDMEM_TRANSPORT_MESSAGE_SHAREDMEMHEADER_H
