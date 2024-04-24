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

class GetIORequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.signal = null;
      this.path = null;
      this.type = null;
      this.index = null;
    }
    else {
      if (initObj.hasOwnProperty('signal')) {
        this.signal = initObj.signal
      }
      else {
        this.signal = '';
      }
      if (initObj.hasOwnProperty('path')) {
        this.path = initObj.path
      }
      else {
        this.path = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('index')) {
        this.index = initObj.index
      }
      else {
        this.index = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetIORequest
    // Serialize message field [signal]
    bufferOffset = _serializer.string(obj.signal, buffer, bufferOffset);
    // Serialize message field [path]
    bufferOffset = _serializer.int16(obj.path, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int16(obj.type, buffer, bufferOffset);
    // Serialize message field [index]
    bufferOffset = _serializer.int16(obj.index, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetIORequest
    let len;
    let data = new GetIORequest(null);
    // Deserialize message field [signal]
    data.signal = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [path]
    data.path = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [index]
    data.index = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.signal);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jaka_msgs/GetIORequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9fb3a4539cc0eabc515d4abfbe16cb17';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string signal
    int16 path
    int16 type
    int16 index
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetIORequest(null);
    if (msg.signal !== undefined) {
      resolved.signal = msg.signal;
    }
    else {
      resolved.signal = ''
    }

    if (msg.path !== undefined) {
      resolved.path = msg.path;
    }
    else {
      resolved.path = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.index !== undefined) {
      resolved.index = msg.index;
    }
    else {
      resolved.index = 0
    }

    return resolved;
    }
};

class GetIOResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0.0;
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
    // Serializes a message object of type GetIOResponse
    // Serialize message field [value]
    bufferOffset = _serializer.float32(obj.value, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetIOResponse
    let len;
    let data = new GetIOResponse(null);
    // Deserialize message field [value]
    data.value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jaka_msgs/GetIOResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0b4c2d4b84b17860a96271a9dcc03cf1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    float32 value
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetIOResponse(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0.0
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
  Request: GetIORequest,
  Response: GetIOResponse,
  md5sum() { return '6ff1cb5f4f299720705884f0c89f9d08'; },
  datatype() { return 'jaka_msgs/GetIO'; }
};
