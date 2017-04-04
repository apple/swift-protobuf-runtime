/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: google/protobuf/map_unittest_proto3.proto
 *
 */

//  Protocol Buffers - Google's data interchange format
//  Copyright 2008 Google Inc.  All rights reserved.
//  https://developers.google.com/protocol-buffers/
// 
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions are
//  met:
// 
//      * Redistributions of source code must retain the above copyright
//  notice, this list of conditions and the following disclaimer.
//      * Redistributions in binary form must reproduce the above
//  copyright notice, this list of conditions and the following disclaimer
//  in the documentation and/or other materials provided with the
//  distribution.
//      * Neither the name of Google Inc. nor the names of its
//  contributors may be used to endorse or promote products derived from
//  this software without specific prior written permission.
// 
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
//  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
//  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
//  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
//  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
//  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
//  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
//  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
//  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
//  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

///   This file is mostly equivalent to map_unittest.proto, but imports
///   unittest_proto3.proto instead of unittest.proto, so that it only
///   uses proto3 messages. This makes it suitable for testing
///   implementations which only support proto3.
///   The TestRequiredMessageMap message has been removed as there are no
///   required fields in proto3.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _1: SwiftProtobuf.ProtobufAPIVersion_1 {}
  typealias Version = _1
}

fileprivate let _protobuf_package = "protobuf_unittest"

enum Proto3MapEnum: SwiftProtobuf.Enum, SwiftProtobuf._ProtoNameProviding {
  typealias RawValue = Int
  case foo // = 0
  case bar // = 1
  case baz // = 2
  case UNRECOGNIZED(Int)

  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "MAP_ENUM_FOO"),
    1: .same(proto: "MAP_ENUM_BAR"),
    2: .same(proto: "MAP_ENUM_BAZ"),
  ]

  init() {
    self = .foo
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .foo
    case 1: self = .bar
    case 2: self = .baz
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .foo: return 0
    case .bar: return 1
    case .baz: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

///   Tests maps.
struct Proto3TestMap: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".TestMap"

  fileprivate class _StorageClass {
    var _mapInt32Int32: Dictionary<Int32,Int32> = [:]
    var _mapInt64Int64: Dictionary<Int64,Int64> = [:]
    var _mapUint32Uint32: Dictionary<UInt32,UInt32> = [:]
    var _mapUint64Uint64: Dictionary<UInt64,UInt64> = [:]
    var _mapSint32Sint32: Dictionary<Int32,Int32> = [:]
    var _mapSint64Sint64: Dictionary<Int64,Int64> = [:]
    var _mapFixed32Fixed32: Dictionary<UInt32,UInt32> = [:]
    var _mapFixed64Fixed64: Dictionary<UInt64,UInt64> = [:]
    var _mapSfixed32Sfixed32: Dictionary<Int32,Int32> = [:]
    var _mapSfixed64Sfixed64: Dictionary<Int64,Int64> = [:]
    var _mapInt32Float: Dictionary<Int32,Float> = [:]
    var _mapInt32Double: Dictionary<Int32,Double> = [:]
    var _mapBoolBool: Dictionary<Bool,Bool> = [:]
    var _mapStringString: Dictionary<String,String> = [:]
    var _mapInt32Bytes: Dictionary<Int32,Data> = [:]
    var _mapInt32Enum: Dictionary<Int32,Proto3MapEnum> = [:]
    var _mapInt32ForeignMessage: Dictionary<Int32,Proto3ForeignMessage> = [:]

    init() {}

    init(copying source: _StorageClass) {
      _mapInt32Int32 = source._mapInt32Int32
      _mapInt64Int64 = source._mapInt64Int64
      _mapUint32Uint32 = source._mapUint32Uint32
      _mapUint64Uint64 = source._mapUint64Uint64
      _mapSint32Sint32 = source._mapSint32Sint32
      _mapSint64Sint64 = source._mapSint64Sint64
      _mapFixed32Fixed32 = source._mapFixed32Fixed32
      _mapFixed64Fixed64 = source._mapFixed64Fixed64
      _mapSfixed32Sfixed32 = source._mapSfixed32Sfixed32
      _mapSfixed64Sfixed64 = source._mapSfixed64Sfixed64
      _mapInt32Float = source._mapInt32Float
      _mapInt32Double = source._mapInt32Double
      _mapBoolBool = source._mapBoolBool
      _mapStringString = source._mapStringString
      _mapInt32Bytes = source._mapInt32Bytes
      _mapInt32Enum = source._mapInt32Enum
      _mapInt32ForeignMessage = source._mapInt32ForeignMessage
    }
  }

  fileprivate var _storage = _StorageClass()

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  var mapInt32Int32: Dictionary<Int32,Int32> {
    get {return _storage._mapInt32Int32}
    set {_uniqueStorage()._mapInt32Int32 = newValue}
  }

  var mapInt64Int64: Dictionary<Int64,Int64> {
    get {return _storage._mapInt64Int64}
    set {_uniqueStorage()._mapInt64Int64 = newValue}
  }

  var mapUint32Uint32: Dictionary<UInt32,UInt32> {
    get {return _storage._mapUint32Uint32}
    set {_uniqueStorage()._mapUint32Uint32 = newValue}
  }

  var mapUint64Uint64: Dictionary<UInt64,UInt64> {
    get {return _storage._mapUint64Uint64}
    set {_uniqueStorage()._mapUint64Uint64 = newValue}
  }

  var mapSint32Sint32: Dictionary<Int32,Int32> {
    get {return _storage._mapSint32Sint32}
    set {_uniqueStorage()._mapSint32Sint32 = newValue}
  }

  var mapSint64Sint64: Dictionary<Int64,Int64> {
    get {return _storage._mapSint64Sint64}
    set {_uniqueStorage()._mapSint64Sint64 = newValue}
  }

  var mapFixed32Fixed32: Dictionary<UInt32,UInt32> {
    get {return _storage._mapFixed32Fixed32}
    set {_uniqueStorage()._mapFixed32Fixed32 = newValue}
  }

  var mapFixed64Fixed64: Dictionary<UInt64,UInt64> {
    get {return _storage._mapFixed64Fixed64}
    set {_uniqueStorage()._mapFixed64Fixed64 = newValue}
  }

  var mapSfixed32Sfixed32: Dictionary<Int32,Int32> {
    get {return _storage._mapSfixed32Sfixed32}
    set {_uniqueStorage()._mapSfixed32Sfixed32 = newValue}
  }

  var mapSfixed64Sfixed64: Dictionary<Int64,Int64> {
    get {return _storage._mapSfixed64Sfixed64}
    set {_uniqueStorage()._mapSfixed64Sfixed64 = newValue}
  }

  var mapInt32Float: Dictionary<Int32,Float> {
    get {return _storage._mapInt32Float}
    set {_uniqueStorage()._mapInt32Float = newValue}
  }

  var mapInt32Double: Dictionary<Int32,Double> {
    get {return _storage._mapInt32Double}
    set {_uniqueStorage()._mapInt32Double = newValue}
  }

  var mapBoolBool: Dictionary<Bool,Bool> {
    get {return _storage._mapBoolBool}
    set {_uniqueStorage()._mapBoolBool = newValue}
  }

  var mapStringString: Dictionary<String,String> {
    get {return _storage._mapStringString}
    set {_uniqueStorage()._mapStringString = newValue}
  }

  var mapInt32Bytes: Dictionary<Int32,Data> {
    get {return _storage._mapInt32Bytes}
    set {_uniqueStorage()._mapInt32Bytes = newValue}
  }

  var mapInt32Enum: Dictionary<Int32,Proto3MapEnum> {
    get {return _storage._mapInt32Enum}
    set {_uniqueStorage()._mapInt32Enum = newValue}
  }

  var mapInt32ForeignMessage: Dictionary<Int32,Proto3ForeignMessage> {
    get {return _storage._mapInt32ForeignMessage}
    set {_uniqueStorage()._mapInt32ForeignMessage = newValue}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufInt32,SwiftProtobuf.ProtobufInt32>.self, value: &_storage._mapInt32Int32)
        case 2: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufInt64,SwiftProtobuf.ProtobufInt64>.self, value: &_storage._mapInt64Int64)
        case 3: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufUInt32,SwiftProtobuf.ProtobufUInt32>.self, value: &_storage._mapUint32Uint32)
        case 4: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufUInt64,SwiftProtobuf.ProtobufUInt64>.self, value: &_storage._mapUint64Uint64)
        case 5: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufSInt32,SwiftProtobuf.ProtobufSInt32>.self, value: &_storage._mapSint32Sint32)
        case 6: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufSInt64,SwiftProtobuf.ProtobufSInt64>.self, value: &_storage._mapSint64Sint64)
        case 7: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufFixed32,SwiftProtobuf.ProtobufFixed32>.self, value: &_storage._mapFixed32Fixed32)
        case 8: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufFixed64,SwiftProtobuf.ProtobufFixed64>.self, value: &_storage._mapFixed64Fixed64)
        case 9: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufSFixed32,SwiftProtobuf.ProtobufSFixed32>.self, value: &_storage._mapSfixed32Sfixed32)
        case 10: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufSFixed64,SwiftProtobuf.ProtobufSFixed64>.self, value: &_storage._mapSfixed64Sfixed64)
        case 11: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufInt32,SwiftProtobuf.ProtobufFloat>.self, value: &_storage._mapInt32Float)
        case 12: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufInt32,SwiftProtobuf.ProtobufDouble>.self, value: &_storage._mapInt32Double)
        case 13: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufBool,SwiftProtobuf.ProtobufBool>.self, value: &_storage._mapBoolBool)
        case 14: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: &_storage._mapStringString)
        case 15: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufInt32,SwiftProtobuf.ProtobufBytes>.self, value: &_storage._mapInt32Bytes)
        case 16: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufEnumMap<SwiftProtobuf.ProtobufInt32,Proto3MapEnum>.self, value: &_storage._mapInt32Enum)
        case 17: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufInt32,Proto3ForeignMessage>.self, value: &_storage._mapInt32ForeignMessage)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._mapInt32Int32.isEmpty {
        try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufInt32,SwiftProtobuf.ProtobufInt32>.self, value: _storage._mapInt32Int32, fieldNumber: 1)
      }
      if !_storage._mapInt64Int64.isEmpty {
        try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufInt64,SwiftProtobuf.ProtobufInt64>.self, value: _storage._mapInt64Int64, fieldNumber: 2)
      }
      if !_storage._mapUint32Uint32.isEmpty {
        try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufUInt32,SwiftProtobuf.ProtobufUInt32>.self, value: _storage._mapUint32Uint32, fieldNumber: 3)
      }
      if !_storage._mapUint64Uint64.isEmpty {
        try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufUInt64,SwiftProtobuf.ProtobufUInt64>.self, value: _storage._mapUint64Uint64, fieldNumber: 4)
      }
      if !_storage._mapSint32Sint32.isEmpty {
        try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufSInt32,SwiftProtobuf.ProtobufSInt32>.self, value: _storage._mapSint32Sint32, fieldNumber: 5)
      }
      if !_storage._mapSint64Sint64.isEmpty {
        try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufSInt64,SwiftProtobuf.ProtobufSInt64>.self, value: _storage._mapSint64Sint64, fieldNumber: 6)
      }
      if !_storage._mapFixed32Fixed32.isEmpty {
        try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufFixed32,SwiftProtobuf.ProtobufFixed32>.self, value: _storage._mapFixed32Fixed32, fieldNumber: 7)
      }
      if !_storage._mapFixed64Fixed64.isEmpty {
        try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufFixed64,SwiftProtobuf.ProtobufFixed64>.self, value: _storage._mapFixed64Fixed64, fieldNumber: 8)
      }
      if !_storage._mapSfixed32Sfixed32.isEmpty {
        try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufSFixed32,SwiftProtobuf.ProtobufSFixed32>.self, value: _storage._mapSfixed32Sfixed32, fieldNumber: 9)
      }
      if !_storage._mapSfixed64Sfixed64.isEmpty {
        try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufSFixed64,SwiftProtobuf.ProtobufSFixed64>.self, value: _storage._mapSfixed64Sfixed64, fieldNumber: 10)
      }
      if !_storage._mapInt32Float.isEmpty {
        try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufInt32,SwiftProtobuf.ProtobufFloat>.self, value: _storage._mapInt32Float, fieldNumber: 11)
      }
      if !_storage._mapInt32Double.isEmpty {
        try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufInt32,SwiftProtobuf.ProtobufDouble>.self, value: _storage._mapInt32Double, fieldNumber: 12)
      }
      if !_storage._mapBoolBool.isEmpty {
        try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufBool,SwiftProtobuf.ProtobufBool>.self, value: _storage._mapBoolBool, fieldNumber: 13)
      }
      if !_storage._mapStringString.isEmpty {
        try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: _storage._mapStringString, fieldNumber: 14)
      }
      if !_storage._mapInt32Bytes.isEmpty {
        try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufInt32,SwiftProtobuf.ProtobufBytes>.self, value: _storage._mapInt32Bytes, fieldNumber: 15)
      }
      if !_storage._mapInt32Enum.isEmpty {
        try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufEnumMap<SwiftProtobuf.ProtobufInt32,Proto3MapEnum>.self, value: _storage._mapInt32Enum, fieldNumber: 16)
      }
      if !_storage._mapInt32ForeignMessage.isEmpty {
        try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufInt32,Proto3ForeignMessage>.self, value: _storage._mapInt32ForeignMessage, fieldNumber: 17)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

struct Proto3TestMapSubmessage: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".TestMapSubmessage"

  fileprivate class _StorageClass {
    var _testMap: Proto3TestMap? = nil

    init() {}

    init(copying source: _StorageClass) {
      _testMap = source._testMap
    }
  }

  fileprivate var _storage = _StorageClass()

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  var testMap: Proto3TestMap {
    get {return _storage._testMap ?? Proto3TestMap()}
    set {_uniqueStorage()._testMap = newValue}
  }
  var hasTestMap: Bool {
    return _storage._testMap != nil
  }
  mutating func clearTestMap() {
    return _storage._testMap = nil
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._testMap)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._testMap {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

struct Proto3TestMessageMap: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".TestMessageMap"

  var mapInt32Message: Dictionary<Int32,Proto3TestAllTypes> = [:]

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufInt32,Proto3TestAllTypes>.self, value: &mapInt32Message)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !mapInt32Message.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufInt32,Proto3TestAllTypes>.self, value: mapInt32Message, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

///   Two map fields share the same entry default instance.
struct Proto3TestSameTypeMap: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".TestSameTypeMap"

  var map1: Dictionary<Int32,Int32> = [:]

  var map2: Dictionary<Int32,Int32> = [:]

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufInt32,SwiftProtobuf.ProtobufInt32>.self, value: &map1)
      case 2: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufInt32,SwiftProtobuf.ProtobufInt32>.self, value: &map2)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !map1.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufInt32,SwiftProtobuf.ProtobufInt32>.self, value: map1, fieldNumber: 1)
    }
    if !map2.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufInt32,SwiftProtobuf.ProtobufInt32>.self, value: map2, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

struct Proto3TestArenaMap: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".TestArenaMap"

  var mapInt32Int32: Dictionary<Int32,Int32> = [:]

  var mapInt64Int64: Dictionary<Int64,Int64> = [:]

  var mapUint32Uint32: Dictionary<UInt32,UInt32> = [:]

  var mapUint64Uint64: Dictionary<UInt64,UInt64> = [:]

  var mapSint32Sint32: Dictionary<Int32,Int32> = [:]

  var mapSint64Sint64: Dictionary<Int64,Int64> = [:]

  var mapFixed32Fixed32: Dictionary<UInt32,UInt32> = [:]

  var mapFixed64Fixed64: Dictionary<UInt64,UInt64> = [:]

  var mapSfixed32Sfixed32: Dictionary<Int32,Int32> = [:]

  var mapSfixed64Sfixed64: Dictionary<Int64,Int64> = [:]

  var mapInt32Float: Dictionary<Int32,Float> = [:]

  var mapInt32Double: Dictionary<Int32,Double> = [:]

  var mapBoolBool: Dictionary<Bool,Bool> = [:]

  var mapInt32Enum: Dictionary<Int32,Proto3MapEnum> = [:]

  var mapInt32ForeignMessage: Dictionary<Int32,Proto3ForeignMessage> = [:]

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufInt32,SwiftProtobuf.ProtobufInt32>.self, value: &mapInt32Int32)
      case 2: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufInt64,SwiftProtobuf.ProtobufInt64>.self, value: &mapInt64Int64)
      case 3: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufUInt32,SwiftProtobuf.ProtobufUInt32>.self, value: &mapUint32Uint32)
      case 4: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufUInt64,SwiftProtobuf.ProtobufUInt64>.self, value: &mapUint64Uint64)
      case 5: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufSInt32,SwiftProtobuf.ProtobufSInt32>.self, value: &mapSint32Sint32)
      case 6: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufSInt64,SwiftProtobuf.ProtobufSInt64>.self, value: &mapSint64Sint64)
      case 7: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufFixed32,SwiftProtobuf.ProtobufFixed32>.self, value: &mapFixed32Fixed32)
      case 8: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufFixed64,SwiftProtobuf.ProtobufFixed64>.self, value: &mapFixed64Fixed64)
      case 9: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufSFixed32,SwiftProtobuf.ProtobufSFixed32>.self, value: &mapSfixed32Sfixed32)
      case 10: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufSFixed64,SwiftProtobuf.ProtobufSFixed64>.self, value: &mapSfixed64Sfixed64)
      case 11: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufInt32,SwiftProtobuf.ProtobufFloat>.self, value: &mapInt32Float)
      case 12: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufInt32,SwiftProtobuf.ProtobufDouble>.self, value: &mapInt32Double)
      case 13: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufBool,SwiftProtobuf.ProtobufBool>.self, value: &mapBoolBool)
      case 14: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufEnumMap<SwiftProtobuf.ProtobufInt32,Proto3MapEnum>.self, value: &mapInt32Enum)
      case 15: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufInt32,Proto3ForeignMessage>.self, value: &mapInt32ForeignMessage)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !mapInt32Int32.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufInt32,SwiftProtobuf.ProtobufInt32>.self, value: mapInt32Int32, fieldNumber: 1)
    }
    if !mapInt64Int64.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufInt64,SwiftProtobuf.ProtobufInt64>.self, value: mapInt64Int64, fieldNumber: 2)
    }
    if !mapUint32Uint32.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufUInt32,SwiftProtobuf.ProtobufUInt32>.self, value: mapUint32Uint32, fieldNumber: 3)
    }
    if !mapUint64Uint64.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufUInt64,SwiftProtobuf.ProtobufUInt64>.self, value: mapUint64Uint64, fieldNumber: 4)
    }
    if !mapSint32Sint32.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufSInt32,SwiftProtobuf.ProtobufSInt32>.self, value: mapSint32Sint32, fieldNumber: 5)
    }
    if !mapSint64Sint64.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufSInt64,SwiftProtobuf.ProtobufSInt64>.self, value: mapSint64Sint64, fieldNumber: 6)
    }
    if !mapFixed32Fixed32.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufFixed32,SwiftProtobuf.ProtobufFixed32>.self, value: mapFixed32Fixed32, fieldNumber: 7)
    }
    if !mapFixed64Fixed64.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufFixed64,SwiftProtobuf.ProtobufFixed64>.self, value: mapFixed64Fixed64, fieldNumber: 8)
    }
    if !mapSfixed32Sfixed32.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufSFixed32,SwiftProtobuf.ProtobufSFixed32>.self, value: mapSfixed32Sfixed32, fieldNumber: 9)
    }
    if !mapSfixed64Sfixed64.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufSFixed64,SwiftProtobuf.ProtobufSFixed64>.self, value: mapSfixed64Sfixed64, fieldNumber: 10)
    }
    if !mapInt32Float.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufInt32,SwiftProtobuf.ProtobufFloat>.self, value: mapInt32Float, fieldNumber: 11)
    }
    if !mapInt32Double.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufInt32,SwiftProtobuf.ProtobufDouble>.self, value: mapInt32Double, fieldNumber: 12)
    }
    if !mapBoolBool.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufBool,SwiftProtobuf.ProtobufBool>.self, value: mapBoolBool, fieldNumber: 13)
    }
    if !mapInt32Enum.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufEnumMap<SwiftProtobuf.ProtobufInt32,Proto3MapEnum>.self, value: mapInt32Enum, fieldNumber: 14)
    }
    if !mapInt32ForeignMessage.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufInt32,Proto3ForeignMessage>.self, value: mapInt32ForeignMessage, fieldNumber: 15)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

///   Previously, message containing enum called Type cannot be used as value of
///   map field.
struct Proto3MessageContainingEnumCalledType: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".MessageContainingEnumCalledType"

  var type: Dictionary<Int32,Proto3MessageContainingEnumCalledType> = [:]

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum TypeEnum: SwiftProtobuf.Enum, SwiftProtobuf._ProtoNameProviding {
    typealias RawValue = Int
    case foo // = 0
    case UNRECOGNIZED(Int)

    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
      0: .same(proto: "TYPE_FOO"),
    ]

    init() {
      self = .foo
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .foo
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .foo: return 0
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  init() {}

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufInt32,Proto3MessageContainingEnumCalledType>.self, value: &type)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !type.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufInt32,Proto3MessageContainingEnumCalledType>.self, value: type, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

///   Previously, message cannot contain map field called "entry".
struct Proto3MessageContainingMapCalledEntry: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".MessageContainingMapCalledEntry"

  var entry: Dictionary<Int32,Int32> = [:]

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufInt32,SwiftProtobuf.ProtobufInt32>.self, value: &entry)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !entry.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufInt32,SwiftProtobuf.ProtobufInt32>.self, value: entry, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

extension Proto3TestMap: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "map_int32_int32"),
    2: .standard(proto: "map_int64_int64"),
    3: .standard(proto: "map_uint32_uint32"),
    4: .standard(proto: "map_uint64_uint64"),
    5: .standard(proto: "map_sint32_sint32"),
    6: .standard(proto: "map_sint64_sint64"),
    7: .standard(proto: "map_fixed32_fixed32"),
    8: .standard(proto: "map_fixed64_fixed64"),
    9: .standard(proto: "map_sfixed32_sfixed32"),
    10: .standard(proto: "map_sfixed64_sfixed64"),
    11: .standard(proto: "map_int32_float"),
    12: .standard(proto: "map_int32_double"),
    13: .standard(proto: "map_bool_bool"),
    14: .standard(proto: "map_string_string"),
    15: .standard(proto: "map_int32_bytes"),
    16: .standard(proto: "map_int32_enum"),
    17: .standard(proto: "map_int32_foreign_message"),
  ]

  func _protobuf_generated_isEqualTo(other: Proto3TestMap) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) in
        if _storage._mapInt32Int32 != other_storage._mapInt32Int32 {return false}
        if _storage._mapInt64Int64 != other_storage._mapInt64Int64 {return false}
        if _storage._mapUint32Uint32 != other_storage._mapUint32Uint32 {return false}
        if _storage._mapUint64Uint64 != other_storage._mapUint64Uint64 {return false}
        if _storage._mapSint32Sint32 != other_storage._mapSint32Sint32 {return false}
        if _storage._mapSint64Sint64 != other_storage._mapSint64Sint64 {return false}
        if _storage._mapFixed32Fixed32 != other_storage._mapFixed32Fixed32 {return false}
        if _storage._mapFixed64Fixed64 != other_storage._mapFixed64Fixed64 {return false}
        if _storage._mapSfixed32Sfixed32 != other_storage._mapSfixed32Sfixed32 {return false}
        if _storage._mapSfixed64Sfixed64 != other_storage._mapSfixed64Sfixed64 {return false}
        if _storage._mapInt32Float != other_storage._mapInt32Float {return false}
        if _storage._mapInt32Double != other_storage._mapInt32Double {return false}
        if _storage._mapBoolBool != other_storage._mapBoolBool {return false}
        if _storage._mapStringString != other_storage._mapStringString {return false}
        if _storage._mapInt32Bytes != other_storage._mapInt32Bytes {return false}
        if _storage._mapInt32Enum != other_storage._mapInt32Enum {return false}
        if _storage._mapInt32ForeignMessage != other_storage._mapInt32ForeignMessage {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Proto3TestMapSubmessage: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "test_map"),
  ]

  func _protobuf_generated_isEqualTo(other: Proto3TestMapSubmessage) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) in
        if _storage._testMap != other_storage._testMap {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Proto3TestMessageMap: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "map_int32_message"),
  ]

  func _protobuf_generated_isEqualTo(other: Proto3TestMessageMap) -> Bool {
    if mapInt32Message != other.mapInt32Message {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Proto3TestSameTypeMap: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "map1"),
    2: .same(proto: "map2"),
  ]

  func _protobuf_generated_isEqualTo(other: Proto3TestSameTypeMap) -> Bool {
    if map1 != other.map1 {return false}
    if map2 != other.map2 {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Proto3TestArenaMap: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "map_int32_int32"),
    2: .standard(proto: "map_int64_int64"),
    3: .standard(proto: "map_uint32_uint32"),
    4: .standard(proto: "map_uint64_uint64"),
    5: .standard(proto: "map_sint32_sint32"),
    6: .standard(proto: "map_sint64_sint64"),
    7: .standard(proto: "map_fixed32_fixed32"),
    8: .standard(proto: "map_fixed64_fixed64"),
    9: .standard(proto: "map_sfixed32_sfixed32"),
    10: .standard(proto: "map_sfixed64_sfixed64"),
    11: .standard(proto: "map_int32_float"),
    12: .standard(proto: "map_int32_double"),
    13: .standard(proto: "map_bool_bool"),
    14: .standard(proto: "map_int32_enum"),
    15: .standard(proto: "map_int32_foreign_message"),
  ]

  func _protobuf_generated_isEqualTo(other: Proto3TestArenaMap) -> Bool {
    if mapInt32Int32 != other.mapInt32Int32 {return false}
    if mapInt64Int64 != other.mapInt64Int64 {return false}
    if mapUint32Uint32 != other.mapUint32Uint32 {return false}
    if mapUint64Uint64 != other.mapUint64Uint64 {return false}
    if mapSint32Sint32 != other.mapSint32Sint32 {return false}
    if mapSint64Sint64 != other.mapSint64Sint64 {return false}
    if mapFixed32Fixed32 != other.mapFixed32Fixed32 {return false}
    if mapFixed64Fixed64 != other.mapFixed64Fixed64 {return false}
    if mapSfixed32Sfixed32 != other.mapSfixed32Sfixed32 {return false}
    if mapSfixed64Sfixed64 != other.mapSfixed64Sfixed64 {return false}
    if mapInt32Float != other.mapInt32Float {return false}
    if mapInt32Double != other.mapInt32Double {return false}
    if mapBoolBool != other.mapBoolBool {return false}
    if mapInt32Enum != other.mapInt32Enum {return false}
    if mapInt32ForeignMessage != other.mapInt32ForeignMessage {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Proto3MessageContainingEnumCalledType: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
  ]

  func _protobuf_generated_isEqualTo(other: Proto3MessageContainingEnumCalledType) -> Bool {
    if type != other.type {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Proto3MessageContainingMapCalledEntry: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "entry"),
  ]

  func _protobuf_generated_isEqualTo(other: Proto3MessageContainingMapCalledEntry) -> Bool {
    if entry != other.entry {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
