// Generated by gencpp from file jaka_msgs/ServoMove.msg
// DO NOT EDIT!


#ifndef JAKA_MSGS_MESSAGE_SERVOMOVE_H
#define JAKA_MSGS_MESSAGE_SERVOMOVE_H

#include <ros/service_traits.h>


#include <jaka_msgs/ServoMoveRequest.h>
#include <jaka_msgs/ServoMoveResponse.h>


namespace jaka_msgs
{

struct ServoMove
{

typedef ServoMoveRequest Request;
typedef ServoMoveResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ServoMove
} // namespace jaka_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::jaka_msgs::ServoMove > {
  static const char* value()
  {
    return "ea058e08a9ca2790743a486fd4bfb151";
  }

  static const char* value(const ::jaka_msgs::ServoMove&) { return value(); }
};

template<>
struct DataType< ::jaka_msgs::ServoMove > {
  static const char* value()
  {
    return "jaka_msgs/ServoMove";
  }

  static const char* value(const ::jaka_msgs::ServoMove&) { return value(); }
};


// service_traits::MD5Sum< ::jaka_msgs::ServoMoveRequest> should match
// service_traits::MD5Sum< ::jaka_msgs::ServoMove >
template<>
struct MD5Sum< ::jaka_msgs::ServoMoveRequest>
{
  static const char* value()
  {
    return MD5Sum< ::jaka_msgs::ServoMove >::value();
  }
  static const char* value(const ::jaka_msgs::ServoMoveRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::jaka_msgs::ServoMoveRequest> should match
// service_traits::DataType< ::jaka_msgs::ServoMove >
template<>
struct DataType< ::jaka_msgs::ServoMoveRequest>
{
  static const char* value()
  {
    return DataType< ::jaka_msgs::ServoMove >::value();
  }
  static const char* value(const ::jaka_msgs::ServoMoveRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::jaka_msgs::ServoMoveResponse> should match
// service_traits::MD5Sum< ::jaka_msgs::ServoMove >
template<>
struct MD5Sum< ::jaka_msgs::ServoMoveResponse>
{
  static const char* value()
  {
    return MD5Sum< ::jaka_msgs::ServoMove >::value();
  }
  static const char* value(const ::jaka_msgs::ServoMoveResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::jaka_msgs::ServoMoveResponse> should match
// service_traits::DataType< ::jaka_msgs::ServoMove >
template<>
struct DataType< ::jaka_msgs::ServoMoveResponse>
{
  static const char* value()
  {
    return DataType< ::jaka_msgs::ServoMove >::value();
  }
  static const char* value(const ::jaka_msgs::ServoMoveResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // JAKA_MSGS_MESSAGE_SERVOMOVE_H
