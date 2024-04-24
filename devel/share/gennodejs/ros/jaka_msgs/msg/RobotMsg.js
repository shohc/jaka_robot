// Auto-generated. Do not edit!

// (in-package jaka_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RobotMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motion_state = null;
      this.power_state = null;
      this.servo_state = null;
      this.collision_state = null;
    }
    else {
      if (initObj.hasOwnProperty('motion_state')) {
        this.motion_state = initObj.motion_state
      }
      else {
        this.motion_state = 0;
      }
      if (initObj.hasOwnProperty('power_state')) {
        this.power_state = initObj.power_state
      }
      else {
        this.power_state = 0;
      }
      if (initObj.hasOwnProperty('servo_state')) {
        this.servo_state = initObj.servo_state
      }
      else {
        this.servo_state = 0;
      }
      if (initObj.hasOwnProperty('collision_state')) {
        this.collision_state = initObj.collision_state
      }
      else {
        this.collision_state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotMsg
    // Serialize message field [motion_state]
    bufferOffset = _serializer.int16(obj.motion_state, buffer, bufferOffset);
    // Serialize message field [power_state]
    bufferOffset = _serializer.int16(obj.power_state, buffer, bufferOffset);
    // Serialize message field [servo_state]
    bufferOffset = _serializer.int16(obj.servo_state, buffer, bufferOffset);
    // Serialize message field [collision_state]
    bufferOffset = _serializer.int16(obj.collision_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotMsg
    let len;
    let data = new RobotMsg(null);
    // Deserialize message field [motion_state]
    data.motion_state = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [power_state]
    data.power_state = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [servo_state]
    data.servo_state = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [collision_state]
    data.collision_state = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jaka_msgs/RobotMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cb4726a69178af69dc31d5013f095556';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 motion_state
    int16 power_state
    int16 servo_state
    int16 collision_state
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotMsg(null);
    if (msg.motion_state !== undefined) {
      resolved.motion_state = msg.motion_state;
    }
    else {
      resolved.motion_state = 0
    }

    if (msg.power_state !== undefined) {
      resolved.power_state = msg.power_state;
    }
    else {
      resolved.power_state = 0
    }

    if (msg.servo_state !== undefined) {
      resolved.servo_state = msg.servo_state;
    }
    else {
      resolved.servo_state = 0
    }

    if (msg.collision_state !== undefined) {
      resolved.collision_state = msg.collision_state;
    }
    else {
      resolved.collision_state = 0
    }

    return resolved;
    }
};

module.exports = RobotMsg;
