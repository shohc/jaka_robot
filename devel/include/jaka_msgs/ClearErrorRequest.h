// Generated by gencpp from file jaka_msgs/ClearErrorRequest.msg
// DO NOT EDIT!


#ifndef JAKA_MSGS_MESSAGE_CLEARERRORREQUEST_H
#define JAKA_MSGS_MESSAGE_CLEARERRORREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace jaka_msgs
{
template <class ContainerAllocator>
struct ClearErrorRequest_
{
  typedef ClearErrorRequest_<ContainerAllocator> Type;

  ClearErrorRequest_()
    : enable(false)  {
    }
  ClearErrorRequest_(const ContainerAllocator& _alloc)
    : enable(false)  {
  (void)_alloc;
    }



   typedef uint8_t _enable_type;
  _enable_type enable;





  typedef boost::shared_ptr< ::jaka_msgs::ClearErrorRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::jaka_msgs::ClearErrorRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ClearErrorRequest_

typedef ::jaka_msgs::ClearErrorRequest_<std::allocator<void> > ClearErrorRequest;

typedef boost::shared_ptr< ::jaka_msgs::ClearErrorRequest > ClearErrorRequestPtr;
typedef boost::shared_ptr< ::jaka_msgs::ClearErrorRequest const> ClearErrorRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::jaka_msgs::ClearErrorRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::jaka_msgs::ClearErrorRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::jaka_msgs::ClearErrorRequest_<ContainerAllocator1> & lhs, const ::jaka_msgs::ClearErrorRequest_<ContainerAllocator2> & rhs)
{
  return lhs.enable == rhs.enable;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::jaka_msgs::ClearErrorRequest_<ContainerAllocator1> & lhs, const ::jaka_msgs::ClearErrorRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace jaka_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::jaka_msgs::ClearErrorRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::jaka_msgs::ClearErrorRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::jaka_msgs::ClearErrorRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::jaka_msgs::ClearErrorRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jaka_msgs::ClearErrorRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jaka_msgs::ClearErrorRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::jaka_msgs::ClearErrorRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8c1211af706069c994c06e00eb59ac9e";
  }

  static const char* value(const ::jaka_msgs::ClearErrorRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8c1211af706069c9ULL;
  static const uint64_t static_value2 = 0x94c06e00eb59ac9eULL;
};

template<class ContainerAllocator>
struct DataType< ::jaka_msgs::ClearErrorRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "jaka_msgs/ClearErrorRequest";
  }

  static const char* value(const ::jaka_msgs::ClearErrorRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::jaka_msgs::ClearErrorRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool enable\n"
"\n"
;
  }

  static const char* value(const ::jaka_msgs::ClearErrorRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::jaka_msgs::ClearErrorRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.enable);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ClearErrorRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::jaka_msgs::ClearErrorRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::jaka_msgs::ClearErrorRequest_<ContainerAllocator>& v)
  {
    s << indent << "enable: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.enable);
  }
};

} // namespace message_operations
} // namespace ros

#endif // JAKA_MSGS_MESSAGE_CLEARERRORREQUEST_H
