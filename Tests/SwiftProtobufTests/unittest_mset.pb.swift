/*
 * DO NOT EDIT.
 *
 * Generated by protoc and protoc-gen-swift.
 * Source: google/protobuf/unittest_mset.proto
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
//  This file is similar to unittest_mset_wire_format.proto, but does not
//  have a TestMessageSet, so it can be downgraded to proto1.

import Foundation
import SwiftProtobuf


struct ProtobufUnittest_TestMessageSetContainer: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  public var swiftClassName: String {return "ProtobufUnittest_TestMessageSetContainer"}
  public var protoMessageName: String {return "TestMessageSetContainer"}
  public var protoPackageName: String {return "protobuf_unittest"}
  public static let _protobuf_fieldNames: FieldNameMap = [
    1: .unique(proto: "message_set", json: "messageSet", swift: "messageSet"),
  ]

  private class _StorageClass {
    typealias ExtendedMessage = ProtobufUnittest_TestMessageSetContainer
    var unknown = SwiftProtobuf.UnknownStorage()
    var _messageSet: Proto2WireformatUnittest_TestMessageSet? = nil

    init() {}

    func decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
      switch protoFieldNumber {
      case 1: try setter.decodeSingularMessageField(fieldType: Proto2WireformatUnittest_TestMessageSet.self, value: &_messageSet)
      default: break
      }
    }

    func traverse(visitor: SwiftProtobuf.Visitor) throws {
      if let v = _messageSet {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      unknown.traverse(visitor: visitor)
    }

    func isEqualTo(other: _StorageClass) -> Bool {
      if _messageSet != other._messageSet {return false}
      if unknown != other.unknown {return false}
      return true
    }

    func copy() -> _StorageClass {
      let clone = _StorageClass()
      clone.unknown = unknown
      clone._messageSet = _messageSet
      return clone
    }
  }

  private var _storage = _StorageClass()

  public var unknown: SwiftProtobuf.UnknownStorage {
    get {return _storage.unknown}
    set {_storage.unknown = newValue}
  }

  var messageSet: Proto2WireformatUnittest_TestMessageSet {
    get {return _storage._messageSet ?? Proto2WireformatUnittest_TestMessageSet()}
    set {_uniqueStorage()._messageSet = newValue}
  }
  public var hasMessageSet: Bool {
    return _storage._messageSet != nil
  }
  public mutating func clearMessageSet() {
    return _storage._messageSet = nil
  }

  init() {}

  public mutating func _protoc_generated_decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
    try _uniqueStorage().decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
  }

  public func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
    try _storage.traverse(visitor: visitor)
  }

  public func _protoc_generated_isEqualTo(other: ProtobufUnittest_TestMessageSetContainer) -> Bool {
    return _storage === other._storage || _storage.isEqualTo(other: other._storage)
  }

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _storage.copy()
    }
    return _storage
  }
}

struct ProtobufUnittest_TestMessageSetExtension1: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  public var swiftClassName: String {return "ProtobufUnittest_TestMessageSetExtension1"}
  public var protoMessageName: String {return "TestMessageSetExtension1"}
  public var protoPackageName: String {return "protobuf_unittest"}
  public static let _protobuf_fieldNames: FieldNameMap = [
    15: .same(proto: "i", swift: "i"),
  ]

  public var unknown = SwiftProtobuf.UnknownStorage()

  struct Extensions {

    static let messageSetExtension = SwiftProtobuf.MessageExtension<OptionalMessageExtensionField<ProtobufUnittest_TestMessageSetExtension1>, Proto2WireformatUnittest_TestMessageSet>(
      protoFieldNumber: 1545008,
      fieldNames: .same(proto: "protobuf_unittest.TestMessageSetExtension1.message_set_extension", swift: "ProtobufUnittest_TestMessageSetExtension1_messageSetExtension"),
      defaultValue: ProtobufUnittest_TestMessageSetExtension1()
    )
  }

  private var _i: Int32? = nil
  var i: Int32 {
    get {return _i ?? 0}
    set {_i = newValue}
  }
  public var hasI: Bool {
    return _i != nil
  }
  public mutating func clearI() {
    return _i = nil
  }

  init() {}

  public mutating func _protoc_generated_decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
    switch protoFieldNumber {
    case 15: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufInt32.self, value: &_i)
    default: break
    }
  }

  public func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
    if let v = _i {
      try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufInt32.self, value: v, fieldNumber: 15)
    }
    unknown.traverse(visitor: visitor)
  }

  public func _protoc_generated_isEqualTo(other: ProtobufUnittest_TestMessageSetExtension1) -> Bool {
    if _i != other._i {return false}
    if unknown != other.unknown {return false}
    return true
  }
}

struct ProtobufUnittest_TestMessageSetExtension2: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  public var swiftClassName: String {return "ProtobufUnittest_TestMessageSetExtension2"}
  public var protoMessageName: String {return "TestMessageSetExtension2"}
  public var protoPackageName: String {return "protobuf_unittest"}
  public static let _protobuf_fieldNames: FieldNameMap = [
    25: .same(proto: "str", swift: "str"),
  ]

  public var unknown = SwiftProtobuf.UnknownStorage()

  struct Extensions {

    static let messageSetExtension = SwiftProtobuf.MessageExtension<OptionalMessageExtensionField<ProtobufUnittest_TestMessageSetExtension2>, Proto2WireformatUnittest_TestMessageSet>(
      protoFieldNumber: 1547769,
      fieldNames: .same(proto: "protobuf_unittest.TestMessageSetExtension2.message_set_extension", swift: "ProtobufUnittest_TestMessageSetExtension2_messageSetExtension"),
      defaultValue: ProtobufUnittest_TestMessageSetExtension2()
    )
  }

  private var _str: String? = nil
  var str: String {
    get {return _str ?? ""}
    set {_str = newValue}
  }
  public var hasStr: Bool {
    return _str != nil
  }
  public mutating func clearStr() {
    return _str = nil
  }

  init() {}

  public mutating func _protoc_generated_decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
    switch protoFieldNumber {
    case 25: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: &_str)
    default: break
    }
  }

  public func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
    if let v = _str {
      try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: v, fieldNumber: 25)
    }
    unknown.traverse(visitor: visitor)
  }

  public func _protoc_generated_isEqualTo(other: ProtobufUnittest_TestMessageSetExtension2) -> Bool {
    if _str != other._str {return false}
    if unknown != other.unknown {return false}
    return true
  }
}

//  This message was used to generate
//  //net/proto2/python/internal/testdata/message_set_message, but is commented
//  out since it must not actually exist in code, to simulate an "unknown"
//  extension.
//  message TestMessageSetUnknownExtension {
//    extend TestMessageSet {
//      optional TestMessageSetUnknownExtension message_set_extension = 56141421;
//    }
//    optional int64 a = 1;
//  }

///   MessageSet wire format is equivalent to this.
struct ProtobufUnittest_RawMessageSet: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  public var swiftClassName: String {return "ProtobufUnittest_RawMessageSet"}
  public var protoMessageName: String {return "RawMessageSet"}
  public var protoPackageName: String {return "protobuf_unittest"}
  public static let _protobuf_fieldNames: FieldNameMap = [
    1: .unique(proto: "Item", json: "item", swift: "item"),
  ]

  public var unknown = SwiftProtobuf.UnknownStorage()

  struct Item: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
    public var swiftClassName: String {return "ProtobufUnittest_RawMessageSet.Item"}
    public var protoMessageName: String {return "Item"}
    public var protoPackageName: String {return "protobuf_unittest"}
    public static let _protobuf_fieldNames: FieldNameMap = [
      2: .unique(proto: "type_id", json: "typeId", swift: "typeId"),
      3: .same(proto: "message", swift: "message"),
    ]

    public var unknown = SwiftProtobuf.UnknownStorage()

    private var _typeId: Int32? = nil
    var typeId: Int32 {
      get {return _typeId ?? 0}
      set {_typeId = newValue}
    }
    public var hasTypeId: Bool {
      return _typeId != nil
    }
    public mutating func clearTypeId() {
      return _typeId = nil
    }

    private var _message: Data? = nil
    var message: Data {
      get {return _message ?? Data()}
      set {_message = newValue}
    }
    public var hasMessage: Bool {
      return _message != nil
    }
    public mutating func clearMessage() {
      return _message = nil
    }

    init() {}

    public mutating func _protoc_generated_decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
      switch protoFieldNumber {
      case 2: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufInt32.self, value: &_typeId)
      case 3: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufBytes.self, value: &_message)
      default: break
      }
    }

    public func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
      try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufInt32.self, value: _typeId ?? 0, fieldNumber: 2)
      try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufBytes.self, value: _message ?? Data(), fieldNumber: 3)
      unknown.traverse(visitor: visitor)
    }

    public func _protoc_generated_isEqualTo(other: ProtobufUnittest_RawMessageSet.Item) -> Bool {
      if _typeId != other._typeId {return false}
      if _message != other._message {return false}
      if unknown != other.unknown {return false}
      return true
    }
  }

  var item: [ProtobufUnittest_RawMessageSet.Item] = []

  init() {}

  public mutating func _protoc_generated_decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
    switch protoFieldNumber {
    case 1: try setter.decodeRepeatedGroupField(fieldType: ProtobufUnittest_RawMessageSet.Item.self, value: &item)
    default: break
    }
  }

  public func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
    if !item.isEmpty {
      try visitor.visitRepeatedGroupField(value: item, fieldNumber: 1)
    }
    unknown.traverse(visitor: visitor)
  }

  public func _protoc_generated_isEqualTo(other: ProtobufUnittest_RawMessageSet) -> Bool {
    if item != other.item {return false}
    if unknown != other.unknown {return false}
    return true
  }
}

extension Proto2WireformatUnittest_TestMessageSet {
  var ProtobufUnittest_TestMessageSetExtension1_messageSetExtension: ProtobufUnittest_TestMessageSetExtension1 {
    get {return getExtensionValue(ext: ProtobufUnittest_TestMessageSetExtension1.Extensions.messageSetExtension) ?? ProtobufUnittest_TestMessageSetExtension1()}
    set {setExtensionValue(ext: ProtobufUnittest_TestMessageSetExtension1.Extensions.messageSetExtension, value: newValue)}
  }
  var hasProtobufUnittest_TestMessageSetExtension1_messageSetExtension: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_TestMessageSetExtension1.Extensions.messageSetExtension)
  }
  mutating func clearProtobufUnittest_TestMessageSetExtension1_messageSetExtension() {
    clearExtensionValue(ext: ProtobufUnittest_TestMessageSetExtension1.Extensions.messageSetExtension)
  }
}

extension Proto2WireformatUnittest_TestMessageSet {
  var ProtobufUnittest_TestMessageSetExtension2_messageSetExtension: ProtobufUnittest_TestMessageSetExtension2 {
    get {return getExtensionValue(ext: ProtobufUnittest_TestMessageSetExtension2.Extensions.messageSetExtension) ?? ProtobufUnittest_TestMessageSetExtension2()}
    set {setExtensionValue(ext: ProtobufUnittest_TestMessageSetExtension2.Extensions.messageSetExtension, value: newValue)}
  }
  var hasProtobufUnittest_TestMessageSetExtension2_messageSetExtension: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_TestMessageSetExtension2.Extensions.messageSetExtension)
  }
  mutating func clearProtobufUnittest_TestMessageSetExtension2_messageSetExtension() {
    clearExtensionValue(ext: ProtobufUnittest_TestMessageSetExtension2.Extensions.messageSetExtension)
  }
}

let ProtobufUnittest_UnittestMset_Extensions: SwiftProtobuf.ExtensionSet = [
  ProtobufUnittest_TestMessageSetExtension1.Extensions.messageSetExtension,
  ProtobufUnittest_TestMessageSetExtension2.Extensions.messageSetExtension
]
