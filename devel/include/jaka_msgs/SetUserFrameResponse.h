// Generated by gencpp from file jaka_msgs/SetUserFrameResponse.msg
// DO NOT EDIT!


#ifndef JAKA_MSGS_MESSAGE_SETUSERFRAMERESPONSE_H
#define JAKA_MSGS_MESSAGE_SETUSERFRAMERESPONSE_H


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
struct SetUserFrameResponse_
{
  typedef SetUserFrameResponse_<ContainerAllocator> Type;

  SetUserFrameResponse_()
    : ret(0)
    , message()  {
    }
  SetUserFrameResponse_(const ContainerAllocator& _alloc)
    : ret(0)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef int16_t _ret_type;
  _ret_type ret;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;





  typedef boost::shared_ptr< ::jaka_msgs::SetUserFrameResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::jaka_msgs::SetUserFrameResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetUserFrameResponse_

typedef ::jaka_msgs::SetUserFrameResponse_<std::allocator<void> > SetUserFrameResponse;

typedef boost::shared_ptr< ::jaka_msgs::SetUserFrameResponse > SetUserFrameResponsePtr;
typedef boost::shared_ptr< ::jaka_msgs::SetUserFrameResponse const> SetUserFrameResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::jaka_msgs::SetUserFrameResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::jaka_msgs::SetUserFrameResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::jaka_msgs::SetUserFrameResponse_<ContainerAllocator1> & lhs, const ::jaka_msgs::SetUserFrameResponse_<ContainerAllocator2> & rhs)
{
  return lhs.ret == rhs.ret &&
    lhs.message == rhs.message;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::jaka_msgs::SetUserFrameResponse_<ContainerAllocator1> & lhs, const ::jaka_msgs::SetUserFrameResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace jaka_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::jaka_msgs::SetUserFrameResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::jaka_msgs::SetUserFrameResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::jaka_msgs::SetUserFrameResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::jaka_msgs::SetUserFrameResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jaka_msgs::SetUserFrameResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jaka_msgs::SetUserFrameResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::jaka_msgs::SetUserFrameResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "76c68a2c5e109f4d6a4dc1cfc355f405";
  }

  static const char* value(const ::jaka_msgs::SetUserFrameResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x76c68a2c5e109f4dULL;
  static const uint64_t static_value2 = 0x6a4dc1cfc355f405ULL;
};

template<class ContainerAllocator>
struct DataType< ::jaka_msgs::SetUserFrameResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "jaka_msgs/SetUserFrameResponse";
  }

  static const char* value(const ::jaka_msgs::SetUserFrameResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::jaka_msgs::SetUserFrameResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"int16 ret\n"
"string message\n"
;
  }

  static const char* value(const ::jaka_msgs::SetUserFrameResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::jaka_msgs::SetUserFrameResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ret);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetUserFrameResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::jaka_msgs::SetUserFrameResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::jaka_msgs::SetUserFrameResponse_<ContainerAllocator>& v)
  {
    s << indent << "ret: ";
    Printer<int16_t>::stream(s, indent + "  ", v.ret);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // JAKA_MSGS_MESSAGE_SETUSERFRAMERESPONSE_H
