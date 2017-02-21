/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: google/protobuf/unittest_optimize_for.proto
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
//  A proto file which uses optimize_for = CODE_SIZE.

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

struct ProtobufUnittest_TestOptimizedForSize: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf.ExtensibleMessage, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  static let protoMessageName: String = "TestOptimizedForSize"
  static let protoPackageName: String = "protobuf_unittest"
  static let _protobuf_fieldNames: FieldNameMap = [
    1: .same(proto: "i"),
    19: .same(proto: "msg"),
    2: .unique(proto: "integer_field", json: "integerField"),
    3: .unique(proto: "string_field", json: "stringField"),
  ]

  private class _StorageClass: SwiftProtobuf.ExtensibleMessageStorage {
    typealias ExtendedMessage = ProtobufUnittest_TestOptimizedForSize
    var extensionFieldValues = SwiftProtobuf.ExtensionFieldValueSet()
    var unknownFields = SwiftProtobuf.UnknownStorage()
    var _i: Int32? = nil
    var _msg: ProtobufUnittest_ForeignMessage? = nil
    var _foo: ProtobufUnittest_TestOptimizedForSize.OneOf_Foo?

    init() {}

    var isInitialized: Bool {
      if !extensionFieldValues.isInitialized {return false}
      return true
    }

    func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
      while let fieldNumber = try decoder.nextFieldNumber() {
        try decodeField(decoder: &decoder, fieldNumber: fieldNumber)
      }
    }

    func decodeField<D: SwiftProtobuf.Decoder>(decoder: inout D, fieldNumber: Int) throws {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &_i)
      case 19: try decoder.decodeSingularMessageField(value: &_msg)
      case 2, 3:
        if _foo != nil {
          try decoder.handleConflictingOneOf()
        }
        _foo = try ProtobufUnittest_TestOptimizedForSize.OneOf_Foo(byDecodingFrom: &decoder, fieldNumber: fieldNumber)
      default: if (1000 <= fieldNumber && fieldNumber < 536870912) {
          try decoder.decodeExtensionField(values: &extensionFieldValues, messageType: ProtobufUnittest_TestOptimizedForSize.self, fieldNumber: fieldNumber)
        }
      }
    }

    func isEqualTo(other: _StorageClass) -> Bool {
      if _i != other._i {return false}
      if _msg != other._msg {return false}
      if _foo != other._foo {return false}
      if unknownFields != other.unknownFields {return false}
      if extensionFieldValues != other.extensionFieldValues {return false}
      return true
    }

    func copy() -> _StorageClass {
      let clone = _StorageClass()
      clone.unknownFields = unknownFields
      clone.extensionFieldValues = extensionFieldValues
      clone._i = _i
      clone._msg = _msg
      clone._foo = _foo
      return clone
    }
  }

  private var _storage = _StorageClass()

  var unknownFields: SwiftProtobuf.UnknownStorage {
    get {return _storage.unknownFields}
    set {_storage.unknownFields = newValue}
  }

  enum OneOf_Foo: Equatable {
    case integerField(Int32)
    case stringField(String)

    static func ==(lhs: ProtobufUnittest_TestOptimizedForSize.OneOf_Foo, rhs: ProtobufUnittest_TestOptimizedForSize.OneOf_Foo) -> Bool {
      switch (lhs, rhs) {
      case (.integerField(let l), .integerField(let r)): return l == r
      case (.stringField(let l), .stringField(let r)): return l == r
      default: return false
      }
    }

    fileprivate init?<T: SwiftProtobuf.Decoder>(byDecodingFrom decoder: inout T, fieldNumber: Int) throws {
      switch fieldNumber {
      case 2:
        var value: Int32?
        try decoder.decodeSingularInt32Field(value: &value)
        if let value = value {
          self = .integerField(value)
          return
        }
      case 3:
        var value: String?
        try decoder.decodeSingularStringField(value: &value)
        if let value = value {
          self = .stringField(value)
          return
        }
      default:
        break
      }
      return nil
    }

    fileprivate func traverse(visitor: SwiftProtobuf.Visitor, start: Int, end: Int) throws {
      switch self {
      case .integerField(let v):
        if start <= 2 && 2 < end {
          try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufInt32.self, value: v, fieldNumber: 2)
        }
      case .stringField(let v):
        if start <= 3 && 3 < end {
          try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: v, fieldNumber: 3)
        }
      }
    }
  }

  struct Extensions {

    static let test_extension = SwiftProtobuf.MessageExtension<OptionalExtensionField<SwiftProtobuf.ProtobufInt32>, ProtobufUnittest_TestOptimizedForSize>(
      fieldNumber: 1234,
      fieldNames: .same(proto: "protobuf_unittest.TestOptimizedForSize.test_extension"),
      defaultValue: 0
    )

    static let test_extension2 = SwiftProtobuf.MessageExtension<OptionalMessageExtensionField<ProtobufUnittest_TestRequiredOptimizedForSize>, ProtobufUnittest_TestOptimizedForSize>(
      fieldNumber: 1235,
      fieldNames: .same(proto: "protobuf_unittest.TestOptimizedForSize.test_extension2"),
      defaultValue: ProtobufUnittest_TestRequiredOptimizedForSize()
    )
  }

  var i: Int32 {
    get {return _storage._i ?? 0}
    set {_uniqueStorage()._i = newValue}
  }
  var hasI: Bool {
    return _storage._i != nil
  }
  mutating func clearI() {
    return _storage._i = nil
  }

  var msg: ProtobufUnittest_ForeignMessage {
    get {return _storage._msg ?? ProtobufUnittest_ForeignMessage()}
    set {_uniqueStorage()._msg = newValue}
  }
  var hasMsg: Bool {
    return _storage._msg != nil
  }
  mutating func clearMsg() {
    return _storage._msg = nil
  }

  var integerField: Int32 {
    get {
      if case .integerField(let v)? = _storage._foo {
        return v
      }
      return 0
    }
    set {
      _uniqueStorage()._foo = .integerField(newValue)
    }
  }

  var stringField: String {
    get {
      if case .stringField(let v)? = _storage._foo {
        return v
      }
      return ""
    }
    set {
      _uniqueStorage()._foo = .stringField(newValue)
    }
  }

  var foo: OneOf_Foo? {
    get {return _storage._foo}
    set {
      _uniqueStorage()._foo = newValue
    }
  }

  init() {}

  public var isInitialized: Bool {
    return _storage.isInitialized
  }

  mutating func _protoc_generated_decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    try _uniqueStorage().decodeMessage(decoder: &decoder)
  }

  mutating func _protoc_generated_decodeField<D: SwiftProtobuf.Decoder>(decoder: inout D, fieldNumber: Int) throws {
    try _uniqueStorage().decodeField(decoder: &decoder, fieldNumber: fieldNumber)
  }

  func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
    try withExtendedLifetime(_storage) { (storage: _StorageClass) in
      if let v = storage._i {
        try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufInt32.self, value: v, fieldNumber: 1)
      }
      try storage._foo?.traverse(visitor: visitor, start: 2, end: 4)
      if let v = storage._msg {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 19)
      }
      try visitor.visitExtensionFields(fields: storage.extensionFieldValues, start: 1000, end: 536870912)
      storage.unknownFields.traverse(visitor: visitor)
    }
  }

  func _protoc_generated_isEqualTo(other: ProtobufUnittest_TestOptimizedForSize) -> Bool {
    return _storage === other._storage || _storage.isEqualTo(other: other._storage)
  }

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _storage.copy()
    }
    return _storage
  }

  mutating func setExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, ProtobufUnittest_TestOptimizedForSize>, value: F.ValueType) {
    return _uniqueStorage().setExtensionValue(ext: ext, value: value)
  }

  mutating func clearExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, ProtobufUnittest_TestOptimizedForSize>) {
    return _storage.clearExtensionValue(ext: ext)
  }

  func getExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, ProtobufUnittest_TestOptimizedForSize>) -> F.ValueType {
    return _storage.getExtensionValue(ext: ext)
  }

  func hasExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, ProtobufUnittest_TestOptimizedForSize>) -> Bool {
    return _storage.hasExtensionValue(ext: ext)
  }
  func _protobuf_fieldNames(for number: Int) -> FieldNameMap.Names? {
    return ProtobufUnittest_TestOptimizedForSize._protobuf_fieldNames.fieldNames(for: number) ?? _storage.extensionFieldValues.fieldNames(for: number)
  }
}

struct ProtobufUnittest_TestRequiredOptimizedForSize: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  static let protoMessageName: String = "TestRequiredOptimizedForSize"
  static let protoPackageName: String = "protobuf_unittest"
  static let _protobuf_fieldNames: FieldNameMap = [
    1: .same(proto: "x"),
  ]

  var unknownFields = SwiftProtobuf.UnknownStorage()

  private var _x: Int32? = nil
  var x: Int32 {
    get {return _x ?? 0}
    set {_x = newValue}
  }
  var hasX: Bool {
    return _x != nil
  }
  mutating func clearX() {
    return _x = nil
  }

  init() {}

  public var isInitialized: Bool {
    if _x == nil {return false}
    return true
  }

  mutating func _protoc_generated_decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      try decodeField(decoder: &decoder, fieldNumber: fieldNumber)
    }
  }

  mutating func _protoc_generated_decodeField<D: SwiftProtobuf.Decoder>(decoder: inout D, fieldNumber: Int) throws {
    switch fieldNumber {
    case 1: try decoder.decodeSingularInt32Field(value: &_x)
    default: break
    }
  }

  func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
    if let v = _x {
      try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufInt32.self, value: v, fieldNumber: 1)
    }
    unknownFields.traverse(visitor: visitor)
  }

  func _protoc_generated_isEqualTo(other: ProtobufUnittest_TestRequiredOptimizedForSize) -> Bool {
    if _x != other._x {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

struct ProtobufUnittest_TestOptionalOptimizedForSize: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  static let protoMessageName: String = "TestOptionalOptimizedForSize"
  static let protoPackageName: String = "protobuf_unittest"
  static let _protobuf_fieldNames: FieldNameMap = [
    1: .same(proto: "o"),
  ]

  private class _StorageClass {
    var unknownFields = SwiftProtobuf.UnknownStorage()
    var _o: ProtobufUnittest_TestRequiredOptimizedForSize? = nil

    init() {}

    var isInitialized: Bool {
      if let v = _o, !v.isInitialized {return false}
      return true
    }

    func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
      while let fieldNumber = try decoder.nextFieldNumber() {
        try decodeField(decoder: &decoder, fieldNumber: fieldNumber)
      }
    }

    func decodeField<D: SwiftProtobuf.Decoder>(decoder: inout D, fieldNumber: Int) throws {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &_o)
      default: break
      }
    }

    func isEqualTo(other: _StorageClass) -> Bool {
      if _o != other._o {return false}
      if unknownFields != other.unknownFields {return false}
      return true
    }

    func copy() -> _StorageClass {
      let clone = _StorageClass()
      clone.unknownFields = unknownFields
      clone._o = _o
      return clone
    }
  }

  private var _storage = _StorageClass()

  var unknownFields: SwiftProtobuf.UnknownStorage {
    get {return _storage.unknownFields}
    set {_storage.unknownFields = newValue}
  }

  var o: ProtobufUnittest_TestRequiredOptimizedForSize {
    get {return _storage._o ?? ProtobufUnittest_TestRequiredOptimizedForSize()}
    set {_uniqueStorage()._o = newValue}
  }
  var hasO: Bool {
    return _storage._o != nil
  }
  mutating func clearO() {
    return _storage._o = nil
  }

  init() {}

  public var isInitialized: Bool {
    return _storage.isInitialized
  }

  mutating func _protoc_generated_decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    try _uniqueStorage().decodeMessage(decoder: &decoder)
  }

  mutating func _protoc_generated_decodeField<D: SwiftProtobuf.Decoder>(decoder: inout D, fieldNumber: Int) throws {
    try _uniqueStorage().decodeField(decoder: &decoder, fieldNumber: fieldNumber)
  }

  func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
    try withExtendedLifetime(_storage) { (storage: _StorageClass) in
      if let v = storage._o {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      storage.unknownFields.traverse(visitor: visitor)
    }
  }

  func _protoc_generated_isEqualTo(other: ProtobufUnittest_TestOptionalOptimizedForSize) -> Bool {
    return _storage === other._storage || _storage.isEqualTo(other: other._storage)
  }

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _storage.copy()
    }
    return _storage
  }
}

extension ProtobufUnittest_TestOptimizedForSize {
  var ProtobufUnittest_TestOptimizedForSize_testExtension: Int32 {
    get {return getExtensionValue(ext: ProtobufUnittest_TestOptimizedForSize.Extensions.test_extension) ?? 0}
    set {setExtensionValue(ext: ProtobufUnittest_TestOptimizedForSize.Extensions.test_extension, value: newValue)}
  }
  var hasProtobufUnittest_TestOptimizedForSize_testExtension: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_TestOptimizedForSize.Extensions.test_extension)
  }
  mutating func clearProtobufUnittest_TestOptimizedForSize_testExtension() {
    clearExtensionValue(ext: ProtobufUnittest_TestOptimizedForSize.Extensions.test_extension)
  }
}

extension ProtobufUnittest_TestOptimizedForSize {
  var ProtobufUnittest_TestOptimizedForSize_testExtension2: ProtobufUnittest_TestRequiredOptimizedForSize {
    get {return getExtensionValue(ext: ProtobufUnittest_TestOptimizedForSize.Extensions.test_extension2) ?? ProtobufUnittest_TestRequiredOptimizedForSize()}
    set {setExtensionValue(ext: ProtobufUnittest_TestOptimizedForSize.Extensions.test_extension2, value: newValue)}
  }
  var hasProtobufUnittest_TestOptimizedForSize_testExtension2: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_TestOptimizedForSize.Extensions.test_extension2)
  }
  mutating func clearProtobufUnittest_TestOptimizedForSize_testExtension2() {
    clearExtensionValue(ext: ProtobufUnittest_TestOptimizedForSize.Extensions.test_extension2)
  }
}

let ProtobufUnittest_UnittestOptimizeFor_Extensions: SwiftProtobuf.ExtensionSet = [
  ProtobufUnittest_TestOptimizedForSize.Extensions.test_extension,
  ProtobufUnittest_TestOptimizedForSize.Extensions.test_extension2
]
