// Auto-generated. Do not edit!

// (in-package jaka_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetCollisionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.is_enable = null;
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('is_enable')) {
        this.is_enable = initObj.is_enable
      }
      else {
        this.is_enable = false;
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetCollisionRequest
    // Serialize message field [is_enable]
    bufferOffset = _serializer.bool(obj.is_enable, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.int16(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetCollisionRequest
    let len;
    let data = new SetCollisionRequest(null);
    // Deserialize message field [is_enable]
    data.is_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jaka_msgs/SetCollisionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3d7163ed1d322a8ff456dd6e8d9fa8bd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool is_enable
    int16 value
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetCollisionRequest(null);
    if (msg.is_enable !== undefined) {
      resolved.is_enable = msg.is_enable;
    }
    else {
      resolved.is_enable = false
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    return resolved;
    }
};

class SetCollisionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ret = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('ret')) {
        this.ret = initObj.ret
      }
      else {
        this.ret = 0;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetCollisionResponse
    // Serialize message field [ret]
    bufferOffset = _serializer.int16(obj.ret, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetCollisionResponse
    let len;
    let data = new SetCollisionResponse(null);
    // Deserialize message field [ret]
    data.ret = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jaka_msgs/SetCollisionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '76c68a2c5e109f4d6a4dc1cfc355f405';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    int16 ret
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetCollisionResponse(null);
    if (msg.ret !== undefined) {
      resolved.ret = msg.ret;
    }
    else {
      resolved.ret = 0
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: SetCollisionRequest,
  Response: SetCollisionResponse,
  md5sum() { return '192c4b02f65b62b6f0470ca351b4f7cc'; },
  datatype() { return 'jaka_msgs/SetCollision'; }
};
