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

class GetFKRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint = null;
    }
    else {
      if (initObj.hasOwnProperty('joint')) {
        this.joint = initObj.joint
      }
      else {
        this.joint = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetFKRequest
    // Serialize message field [joint]
    bufferOffset = _arraySerializer.float32(obj.joint, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetFKRequest
    let len;
    let data = new GetFKRequest(null);
    // Deserialize message field [joint]
    data.joint = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.joint.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jaka_msgs/GetFKRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'edecb4b6fff50f927a908742515e167a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[]  joint
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetFKRequest(null);
    if (msg.joint !== undefined) {
      resolved.joint = msg.joint;
    }
    else {
      resolved.joint = []
    }

    return resolved;
    }
};

class GetFKResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cartesian_pose = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('cartesian_pose')) {
        this.cartesian_pose = initObj.cartesian_pose
      }
      else {
        this.cartesian_pose = [];
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
    // Serializes a message object of type GetFKResponse
    // Serialize message field [cartesian_pose]
    bufferOffset = _arraySerializer.float32(obj.cartesian_pose, buffer, bufferOffset, null);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetFKResponse
    let len;
    let data = new GetFKResponse(null);
    // Deserialize message field [cartesian_pose]
    data.cartesian_pose = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.cartesian_pose.length;
    length += _getByteLength(object.message);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jaka_msgs/GetFKResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5e3f3a6af4e0d3902203dceed3bf47e2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    float32[] cartesian_pose
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetFKResponse(null);
    if (msg.cartesian_pose !== undefined) {
      resolved.cartesian_pose = msg.cartesian_pose;
    }
    else {
      resolved.cartesian_pose = []
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
  Request: GetFKRequest,
  Response: GetFKResponse,
  md5sum() { return '10d9bfd5c1accf4678c49f520f9480b8'; },
  datatype() { return 'jaka_msgs/GetFK'; }
};
