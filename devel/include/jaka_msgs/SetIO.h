// Generated by gencpp from file jaka_msgs/SetIO.msg
// DO NOT EDIT!


#ifndef JAKA_MSGS_MESSAGE_SETIO_H
#define JAKA_MSGS_MESSAGE_SETIO_H

#include <ros/service_traits.h>


#include <jaka_msgs/SetIORequest.h>
#include <jaka_msgs/SetIOResponse.h>


namespace jaka_msgs
{

struct SetIO
{

typedef SetIORequest Request;
typedef SetIOResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetIO
} // namespace jaka_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::jaka_msgs::SetIO > {
  static const char* value()
  {
    return "d70f55fb8350e7d75cb38e91f1bc0373";
  }

  static const char* value(const ::jaka_msgs::SetIO&) { return value(); }
};

template<>
struct DataType< ::jaka_msgs::SetIO > {
  static const char* value()
  {
    return "jaka_msgs/SetIO";
  }

  static const char* value(const ::jaka_msgs::SetIO&) { return value(); }
};


// service_traits::MD5Sum< ::jaka_msgs::SetIORequest> should match
// service_traits::MD5Sum< ::jaka_msgs::SetIO >
template<>
struct MD5Sum< ::jaka_msgs::SetIORequest>
{
  static const char* value()
  {
    return MD5Sum< ::jaka_msgs::SetIO >::value();
  }
  static const char* value(const ::jaka_msgs::SetIORequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::jaka_msgs::SetIORequest> should match
// service_traits::DataType< ::jaka_msgs::SetIO >
template<>
struct DataType< ::jaka_msgs::SetIORequest>
{
  static const char* value()
  {
    return DataType< ::jaka_msgs::SetIO >::value();
  }
  static const char* value(const ::jaka_msgs::SetIORequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::jaka_msgs::SetIOResponse> should match
// service_traits::MD5Sum< ::jaka_msgs::SetIO >
template<>
struct MD5Sum< ::jaka_msgs::SetIOResponse>
{
  static const char* value()
  {
    return MD5Sum< ::jaka_msgs::SetIO >::value();
  }
  static const char* value(const ::jaka_msgs::SetIOResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::jaka_msgs::SetIOResponse> should match
// service_traits::DataType< ::jaka_msgs::SetIO >
template<>
struct DataType< ::jaka_msgs::SetIOResponse>
{
  static const char* value()
  {
    return DataType< ::jaka_msgs::SetIO >::value();
  }
  static const char* value(const ::jaka_msgs::SetIOResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // JAKA_MSGS_MESSAGE_SETIO_H
