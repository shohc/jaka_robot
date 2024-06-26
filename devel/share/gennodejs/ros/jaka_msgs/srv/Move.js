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

class MoveRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
      this.has_ref = null;
      this.ref_joint = null;
      this.mvvelo = null;
      this.mvacc = null;
      this.mvtime = null;
      this.mvradii = null;
      this.coord_mode = null;
      this.index = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = [];
      }
      if (initObj.hasOwnProperty('has_ref')) {
        this.has_ref = initObj.has_ref
      }
      else {
        this.has_ref = false;
      }
      if (initObj.hasOwnProperty('ref_joint')) {
        this.ref_joint = initObj.ref_joint
      }
      else {
        this.ref_joint = [];
      }
      if (initObj.hasOwnProperty('mvvelo')) {
        this.mvvelo = initObj.mvvelo
      }
      else {
        this.mvvelo = 0.0;
      }
      if (initObj.hasOwnProperty('mvacc')) {
        this.mvacc = initObj.mvacc
      }
      else {
        this.mvacc = 0.0;
      }
      if (initObj.hasOwnProperty('mvtime')) {
        this.mvtime = initObj.mvtime
      }
      else {
        this.mvtime = 0.0;
      }
      if (initObj.hasOwnProperty('mvradii')) {
        this.mvradii = initObj.mvradii
      }
      else {
        this.mvradii = 0.0;
      }
      if (initObj.hasOwnProperty('coord_mode')) {
        this.coord_mode = initObj.coord_mode
      }
      else {
        this.coord_mode = 0;
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
    // Serializes a message object of type MoveRequest
    // Serialize message field [pose]
    bufferOffset = _arraySerializer.float32(obj.pose, buffer, bufferOffset, null);
    // Serialize message field [has_ref]
    bufferOffset = _serializer.bool(obj.has_ref, buffer, bufferOffset);
    // Serialize message field [ref_joint]
    bufferOffset = _arraySerializer.float32(obj.ref_joint, buffer, bufferOffset, null);
    // Serialize message field [mvvelo]
    bufferOffset = _serializer.float32(obj.mvvelo, buffer, bufferOffset);
    // Serialize message field [mvacc]
    bufferOffset = _serializer.float32(obj.mvacc, buffer, bufferOffset);
    // Serialize message field [mvtime]
    bufferOffset = _serializer.float32(obj.mvtime, buffer, bufferOffset);
    // Serialize message field [mvradii]
    bufferOffset = _serializer.float32(obj.mvradii, buffer, bufferOffset);
    // Serialize message field [coord_mode]
    bufferOffset = _serializer.int16(obj.coord_mode, buffer, bufferOffset);
    // Serialize message field [index]
    bufferOffset = _serializer.int16(obj.index, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveRequest
    let len;
    let data = new MoveRequest(null);
    // Deserialize message field [pose]
    data.pose = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [has_ref]
    data.has_ref = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ref_joint]
    data.ref_joint = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [mvvelo]
    data.mvvelo = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mvacc]
    data.mvacc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mvtime]
    data.mvtime = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mvradii]
    data.mvradii = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [coord_mode]
    data.coord_mode = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [index]
    data.index = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.pose.length;
    length += 4 * object.ref_joint.length;
    return length + 29;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jaka_msgs/MoveRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f6ccea1f6eaf1904632f66ac69537407';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] pose
    bool has_ref
    float32[] ref_joint
    float32 mvvelo
    float32 mvacc
    float32 mvtime
    float32 mvradii
    int16 coord_mode
    int16 index
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveRequest(null);
    if (msg.pose !== undefined) {
      resolved.pose = msg.pose;
    }
    else {
      resolved.pose = []
    }

    if (msg.has_ref !== undefined) {
      resolved.has_ref = msg.has_ref;
    }
    else {
      resolved.has_ref = false
    }

    if (msg.ref_joint !== undefined) {
      resolved.ref_joint = msg.ref_joint;
    }
    else {
      resolved.ref_joint = []
    }

    if (msg.mvvelo !== undefined) {
      resolved.mvvelo = msg.mvvelo;
    }
    else {
      resolved.mvvelo = 0.0
    }

    if (msg.mvacc !== undefined) {
      resolved.mvacc = msg.mvacc;
    }
    else {
      resolved.mvacc = 0.0
    }

    if (msg.mvtime !== undefined) {
      resolved.mvtime = msg.mvtime;
    }
    else {
      resolved.mvtime = 0.0
    }

    if (msg.mvradii !== undefined) {
      resolved.mvradii = msg.mvradii;
    }
    else {
      resolved.mvradii = 0.0
    }

    if (msg.coord_mode !== undefined) {
      resolved.coord_mode = msg.coord_mode;
    }
    else {
      resolved.coord_mode = 0
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

class MoveResponse {
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
    // Serializes a message object of type MoveResponse
    // Serialize message field [ret]
    bufferOffset = _serializer.int16(obj.ret, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveResponse
    let len;
    let data = new MoveResponse(null);
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
    return 'jaka_msgs/MoveResponse';
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
    const resolved = new MoveResponse(null);
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
  Request: MoveRequest,
  Response: MoveResponse,
  md5sum() { return 'bfcaec3e81ace5826d9d96166632c9d1'; },
  datatype() { return 'jaka_msgs/Move'; }
};
