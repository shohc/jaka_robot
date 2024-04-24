// Generated by gencpp from file jaka_msgs/SetPayload.msg
// DO NOT EDIT!


#ifndef JAKA_MSGS_MESSAGE_SETPAYLOAD_H
#define JAKA_MSGS_MESSAGE_SETPAYLOAD_H

#include <ros/service_traits.h>


#include <jaka_msgs/SetPayloadRequest.h>
#include <jaka_msgs/SetPayloadResponse.h>


namespace jaka_msgs
{

struct SetPayload
{

typedef SetPayloadRequest Request;
typedef SetPayloadResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetPayload
} // namespace jaka_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::jaka_msgs::SetPayload > {
  static const char* value()
  {
    return "dbe0292cc6f9be694a93bf981dcc8471";
  }

  static const char* value(const ::jaka_msgs::SetPayload&) { return value(); }
};

template<>
struct DataType< ::jaka_msgs::SetPayload > {
  static const char* value()
  {
    return "jaka_msgs/SetPayload";
  }

  static const char* value(const ::jaka_msgs::SetPayload&) { return value(); }
};


// service_traits::MD5Sum< ::jaka_msgs::SetPayloadRequest> should match
// service_traits::MD5Sum< ::jaka_msgs::SetPayload >
template<>
struct MD5Sum< ::jaka_msgs::SetPayloadRequest>
{
  static const char* value()
  {
    return MD5Sum< ::jaka_msgs::SetPayload >::value();
  }
  static const char* value(const ::jaka_msgs::SetPayloadRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::jaka_msgs::SetPayloadRequest> should match
// service_traits::DataType< ::jaka_msgs::SetPayload >
template<>
struct DataType< ::jaka_msgs::SetPayloadRequest>
{
  static const char* value()
  {
    return DataType< ::jaka_msgs::SetPayload >::value();
  }
  static const char* value(const ::jaka_msgs::SetPayloadRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::jaka_msgs::SetPayloadResponse> should match
// service_traits::MD5Sum< ::jaka_msgs::SetPayload >
template<>
struct MD5Sum< ::jaka_msgs::SetPayloadResponse>
{
  static const char* value()
  {
    return MD5Sum< ::jaka_msgs::SetPayload >::value();
  }
  static const char* value(const ::jaka_msgs::SetPayloadResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::jaka_msgs::SetPayloadResponse> should match
// service_traits::DataType< ::jaka_msgs::SetPayload >
template<>
struct DataType< ::jaka_msgs::SetPayloadResponse>
{
  static const char* value()
  {
    return DataType< ::jaka_msgs::SetPayload >::value();
  }
  static const char* value(const ::jaka_msgs::SetPayloadResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // JAKA_MSGS_MESSAGE_SETPAYLOAD_H