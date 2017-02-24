/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: google/protobuf/unittest_mset_wire_format.proto
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

//  Author: kenton@google.com (Kenton Varda)
//   Based on original Protocol Buffers design by
//   Sanjay Ghemawat, Jeff Dean, and others.
// 
//  This file contains messages for testing message_set_wire_format.

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

///   A message with message_set_wire_format.
struct Proto2WireformatUnittest_TestMessageSet: SwiftProtobuf.Proto2Message, SwiftProtobuf.ExtensibleMessage, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "TestMessageSet"
  static let protoPackageName: String = "proto2_wireformat_unittest"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  public var isInitialized: Bool {
    if !_extensionFieldValues.isInitialized {return false}
    return true
  }

  mutating func _protoc_generated_decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      try decodeField(decoder: &decoder, fieldNumber: fieldNumber)
    }
  }

  mutating func _protoc_generated_decodeField<D: SwiftProtobuf.Decoder>(decoder: inout D, fieldNumber: Int) throws {
    if (4 <= fieldNumber && fieldNumber < 2147483647) {
      try decoder.decodeExtensionField(values: &_extensionFieldValues, messageType: Proto2WireformatUnittest_TestMessageSet.self, fieldNumber: fieldNumber)
    }
  }

  func _protoc_generated_traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try visitor.visitExtensionFields(fields: _extensionFieldValues, start: 4, end: 2147483647)
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protoc_generated_isEqualTo(other: Proto2WireformatUnittest_TestMessageSet) -> Bool {
    if unknownFields != other.unknownFields {return false}
    if _extensionFieldValues != other._extensionFieldValues {return false}
    return true
  }

  private var _extensionFieldValues = SwiftProtobuf.ExtensionFieldValueSet()

  mutating func setExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, Proto2WireformatUnittest_TestMessageSet>, value: F.ValueType) {
    _extensionFieldValues[ext.fieldNumber] = ext.set(value: value)
  }

  mutating func clearExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, Proto2WireformatUnittest_TestMessageSet>) {
    _extensionFieldValues[ext.fieldNumber] = nil
  }

  func getExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, Proto2WireformatUnittest_TestMessageSet>) -> F.ValueType {
    if let fieldValue = _extensionFieldValues[ext.fieldNumber] as? F {
      return fieldValue.value
    }
    return ext.defaultValue
  }

  func hasExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, Proto2WireformatUnittest_TestMessageSet>) -> Bool {
    return _extensionFieldValues[ext.fieldNumber] is F
  }
  func _protobuf_names(for number: Int) -> _NameMap.Names? {
    return Proto2WireformatUnittest_TestMessageSet._protobuf_nameMap.names(for: number) ?? _extensionFieldValues.fieldNames(for: number)
  }
}

struct Proto2WireformatUnittest_TestMessageSetWireFormatContainer: SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "TestMessageSetWireFormatContainer"
  static let protoPackageName: String = "proto2_wireformat_unittest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .unique(proto: "message_set", json: "messageSet"),
  ]

  private class _StorageClass {
    var _messageSet: Proto2WireformatUnittest_TestMessageSet? = nil

    init() {}

    func copy() -> _StorageClass {
      let clone = _StorageClass()
      clone._messageSet = _messageSet
      return clone
    }
  }

  private var _storage = _StorageClass()

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _storage.copy()
    }
    return _storage
  }

  var messageSet: Proto2WireformatUnittest_TestMessageSet {
    get {return _storage._messageSet ?? Proto2WireformatUnittest_TestMessageSet()}
    set {_uniqueStorage()._messageSet = newValue}
  }
  var hasMessageSet: Bool {
    return _storage._messageSet != nil
  }
  mutating func clearMessageSet() {
    return _storage._messageSet = nil
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  public var isInitialized: Bool {
    return withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._messageSet, !v.isInitialized {return false}
      return true
    }
  }

  mutating func _protoc_generated_decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        try decodeField(decoder: &decoder, fieldNumber: fieldNumber)
      }
    }
  }

  mutating func _protoc_generated_decodeField<D: SwiftProtobuf.Decoder>(decoder: inout D, fieldNumber: Int) throws {
    switch fieldNumber {
    case 1: try decoder.decodeSingularMessageField(value: &_storage._messageSet)
    default: break
    }
  }

  func _protoc_generated_traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._messageSet {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      try unknownFields.traverse(visitor: &visitor)
    }
  }

  func _protoc_generated_isEqualTo(other: Proto2WireformatUnittest_TestMessageSetWireFormatContainer) -> Bool {
    return withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) in
      if _storage !== other_storage {
        if _storage._messageSet != other_storage._messageSet {return false}
      }
      if unknownFields != other.unknownFields {return false}
      return true
    }
  }
}
