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

class GetIKRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ref_joint = null;
      this.cartesian_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('ref_joint')) {
        this.ref_joint = initObj.ref_joint
      }
      else {
        this.ref_joint = [];
      }
      if (initObj.hasOwnProperty('cartesian_pose')) {
        this.cartesian_pose = initObj.cartesian_pose
      }
      else {
        this.cartesian_pose = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetIKRequest
    // Serialize message field [ref_joint]
    bufferOffset = _arraySerializer.float32(obj.ref_joint, buffer, bufferOffset, null);
    // Serialize message field [cartesian_pose]
    bufferOffset = _arraySerializer.float32(obj.cartesian_pose, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetIKRequest
    let len;
    let data = new GetIKRequest(null);
    // Deserialize message field [ref_joint]
    data.ref_joint = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [cartesian_pose]
    data.cartesian_pose = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.ref_joint.length;
    length += 4 * object.cartesian_pose.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jaka_msgs/GetIKRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1002dcf61aae9f2dccba986ca3669d83';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] ref_joint
    float32[] cartesian_pose
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetIKRequest(null);
    if (msg.ref_joint !== undefined) {
      resolved.ref_joint = msg.ref_joint;
    }
    else {
      resolved.ref_joint = []
    }

    if (msg.cartesian_pose !== undefined) {
      resolved.cartesian_pose = msg.cartesian_pose;
    }
    else {
      resolved.cartesian_pose = []
    }

    return resolved;
    }
};

class GetIKResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('joint')) {
        this.joint = initObj.joint
      }
      else {
        this.joint = [];
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
    // Serializes a message object of type GetIKResponse
    // Serialize message field [joint]
    bufferOffset = _arraySerializer.float32(obj.joint, buffer, bufferOffset, null);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetIKResponse
    let len;
    let data = new GetIKResponse(null);
    // Deserialize message field [joint]
    data.joint = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.joint.length;
    length += _getByteLength(object.message);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jaka_msgs/GetIKResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5dcff6f9f3dc05bbc7189ed764e58d40';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    float32[] joint
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetIKResponse(null);
    if (msg.joint !== undefined) {
      resolved.joint = msg.joint;
    }
    else {
      resolved.joint = []
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
  Request: GetIKRequest,
  Response: GetIKResponse,
  md5sum() { return '33a7ddff09d4b5dc0322950ee926aea6'; },
  datatype() { return 'jaka_msgs/GetIK'; }
};
