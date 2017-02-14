/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: unittest_swift_fieldorder.proto
 *
 */

//  Protos/unittest_swift_fieldorder.proto - test proto
// 
//  This source file is part of the Swift.org open source project
// 
//  Copyright (c) 2014 - 2016 Apple Inc. and the Swift project authors
//  Licensed under Apache License v2.0 with Runtime Library Exception
// 
//  See http://swift.org/LICENSE.txt for license information
//  See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
// 
//  -----------------------------------------------------------------------------
// /
// / Check that fields get properly ordered when serializing
// /
//  -----------------------------------------------------------------------------

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

struct Swift_Protobuf_TestFieldOrderings: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf.ExtensibleMessage, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  public var protoMessageName: String {return "TestFieldOrderings"}
  public var protoPackageName: String {return "swift.protobuf"}
  public static let _protobuf_fieldNames: FieldNameMap = [
    11: .unique(proto: "my_string", json: "myString"),
    1: .unique(proto: "my_int", json: "myInt"),
    101: .unique(proto: "my_float", json: "myFloat"),
    60: .unique(proto: "oneof_int64", json: "oneofInt64"),
    9: .unique(proto: "oneof_bool", json: "oneofBool"),
    150: .unique(proto: "oneof_string", json: "oneofString"),
    10: .unique(proto: "oneof_int32", json: "oneofInt32"),
    200: .unique(proto: "optional_nested_message", json: "optionalNestedMessage"),
  ]

  private class _StorageClass: SwiftProtobuf.ExtensibleMessageStorage {
    typealias ExtendedMessage = Swift_Protobuf_TestFieldOrderings
    var extensionFieldValues = SwiftProtobuf.ExtensionFieldValueSet()
    var unknown = SwiftProtobuf.UnknownStorage()
    var _myString: String? = nil
    var _myInt: Int64? = nil
    var _myFloat: Float? = nil
    var _options = Swift_Protobuf_TestFieldOrderings.OneOf_Options()
    var _optionalNestedMessage: Swift_Protobuf_TestFieldOrderings.NestedMessage? = nil

    init() {}

    func decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
      switch protoFieldNumber {
      case 11: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: &_myString)
      case 1: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufInt64.self, value: &_myInt)
      case 101: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufFloat.self, value: &_myFloat)
      case 60, 9, 150, 10: try _options.decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
      case 200: try setter.decodeSingularMessageField(fieldType: Swift_Protobuf_TestFieldOrderings.NestedMessage.self, value: &_optionalNestedMessage)
      default: if (2 <= protoFieldNumber && protoFieldNumber < 9) || (12 <= protoFieldNumber && protoFieldNumber < 56) {
          try setter.decodeExtensionField(values: &extensionFieldValues, messageType: Swift_Protobuf_TestFieldOrderings.self, protoFieldNumber: protoFieldNumber)
        }
      }
    }

    func traverse(visitor: SwiftProtobuf.Visitor) throws {
      if let v = _myInt {
        try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufInt64.self, value: v, fieldNumber: 1)
      }
      try extensionFieldValues.traverse(visitor: visitor, start: 2, end: 9)
      try _options.traverse(visitor: visitor, start: 9, end: 11)
      if let v = _myString {
        try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: v, fieldNumber: 11)
      }
      try extensionFieldValues.traverse(visitor: visitor, start: 12, end: 56)
      try _options.traverse(visitor: visitor, start: 60, end: 61)
      if let v = _myFloat {
        try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufFloat.self, value: v, fieldNumber: 101)
      }
      try _options.traverse(visitor: visitor, start: 150, end: 151)
      if let v = _optionalNestedMessage {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 200)
      }
      unknown.traverse(visitor: visitor)
    }

    func isEqualTo(other: _StorageClass) -> Bool {
      if _myString != other._myString {return false}
      if _myInt != other._myInt {return false}
      if _myFloat != other._myFloat {return false}
      if _options != other._options {return false}
      if _optionalNestedMessage != other._optionalNestedMessage {return false}
      if unknown != other.unknown {return false}
      if extensionFieldValues != other.extensionFieldValues {return false}
      return true
    }

    func copy() -> _StorageClass {
      let clone = _StorageClass()
      clone.unknown = unknown
      clone.extensionFieldValues = extensionFieldValues
      clone._myString = _myString
      clone._myInt = _myInt
      clone._myFloat = _myFloat
      clone._options = _options
      clone._optionalNestedMessage = _optionalNestedMessage
      return clone
    }
  }

  private var _storage = _StorageClass()

  public var unknown: SwiftProtobuf.UnknownStorage {
    get {return _storage.unknown}
    set {_storage.unknown = newValue}
  }

  enum OneOf_Options: ExpressibleByNilLiteral, SwiftProtobuf.OneofEnum {
    case oneofInt64(Int64)
    case oneofBool(Bool)
    case oneofString(String)
    case oneofInt32(Int32)
    case None

    static func ==(lhs: Swift_Protobuf_TestFieldOrderings.OneOf_Options, rhs: Swift_Protobuf_TestFieldOrderings.OneOf_Options) -> Bool {
      switch (lhs, rhs) {
      case (.oneofInt64(let l), .oneofInt64(let r)): return l == r
      case (.oneofBool(let l), .oneofBool(let r)): return l == r
      case (.oneofString(let l), .oneofString(let r)): return l == r
      case (.oneofInt32(let l), .oneofInt32(let r)): return l == r
      case (.None, .None): return true
      default: return false
      }
    }

    public init(nilLiteral: ()) {
      self = .None
    }

    public init() {
      self = .None
    }

    public mutating func decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
      if self != .None && setter.rejectConflictingOneof {
        throw SwiftProtobuf.DecodingError.duplicatedOneOf
      }
      switch protoFieldNumber {
      case 9:
        var value: Bool?
        try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufBool.self, value: &value)
        if let value = value {
          self = .oneofBool(value)
        }
      case 10:
        var value: Int32?
        try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufInt32.self, value: &value)
        if let value = value {
          self = .oneofInt32(value)
        }
      case 60:
        var value: Int64?
        try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufInt64.self, value: &value)
        if let value = value {
          self = .oneofInt64(value)
        }
      case 150:
        var value: String?
        try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: &value)
        if let value = value {
          self = .oneofString(value)
        }
      default:
        self = .None
      }
    }

    public func traverse(visitor: SwiftProtobuf.Visitor, start: Int, end: Int) throws {
      switch self {
      case .oneofBool(let v):
        if start <= 9 && 9 < end {
          try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufBool.self, value: v, fieldNumber: 9)
        }
      case .oneofInt32(let v):
        if start <= 10 && 10 < end {
          try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufInt32.self, value: v, fieldNumber: 10)
        }
      case .oneofInt64(let v):
        if start <= 60 && 60 < end {
          try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufInt64.self, value: v, fieldNumber: 60)
        }
      case .oneofString(let v):
        if start <= 150 && 150 < end {
          try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: v, fieldNumber: 150)
        }
      case .None:
        break
      }
    }
  }

  struct NestedMessage: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
    public var protoMessageName: String {return "NestedMessage"}
    public var protoPackageName: String {return "swift.protobuf"}
    public static let _protobuf_fieldNames: FieldNameMap = [
      2: .same(proto: "oo"),
      1: .same(proto: "bb"),
    ]

    public var unknown = SwiftProtobuf.UnknownStorage()

    private var _oo: Int64? = nil
    var oo: Int64 {
      get {return _oo ?? 0}
      set {_oo = newValue}
    }
    var hasOo: Bool {
      return _oo != nil
    }
    mutating func clearOo() {
      return _oo = nil
    }

    private var _bb: Int32? = nil
    var bb: Int32 {
      get {return _bb ?? 0}
      set {_bb = newValue}
    }
    var hasBb: Bool {
      return _bb != nil
    }
    mutating func clearBb() {
      return _bb = nil
    }

    init() {}

    public mutating func _protoc_generated_decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
      switch protoFieldNumber {
      case 2: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufInt64.self, value: &_oo)
      case 1: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufInt32.self, value: &_bb)
      default: break
      }
    }

    public func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
      if let v = _bb {
        try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufInt32.self, value: v, fieldNumber: 1)
      }
      if let v = _oo {
        try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufInt64.self, value: v, fieldNumber: 2)
      }
      unknown.traverse(visitor: visitor)
    }

    public func _protoc_generated_isEqualTo(other: Swift_Protobuf_TestFieldOrderings.NestedMessage) -> Bool {
      if _oo != other._oo {return false}
      if _bb != other._bb {return false}
      if unknown != other.unknown {return false}
      return true
    }
  }

  var myString: String {
    get {return _storage._myString ?? ""}
    set {_uniqueStorage()._myString = newValue}
  }
  var hasMyString: Bool {
    return _storage._myString != nil
  }
  mutating func clearMyString() {
    return _storage._myString = nil
  }

  var myInt: Int64 {
    get {return _storage._myInt ?? 0}
    set {_uniqueStorage()._myInt = newValue}
  }
  var hasMyInt: Bool {
    return _storage._myInt != nil
  }
  mutating func clearMyInt() {
    return _storage._myInt = nil
  }

  var myFloat: Float {
    get {return _storage._myFloat ?? 0}
    set {_uniqueStorage()._myFloat = newValue}
  }
  var hasMyFloat: Bool {
    return _storage._myFloat != nil
  }
  mutating func clearMyFloat() {
    return _storage._myFloat = nil
  }

  var oneofInt64: Int64 {
    get {
      if case .oneofInt64(let v) = _storage._options {
        return v
      }
      return 0
    }
    set {
      _uniqueStorage()._options = .oneofInt64(newValue)
    }
  }

  var oneofBool: Bool {
    get {
      if case .oneofBool(let v) = _storage._options {
        return v
      }
      return false
    }
    set {
      _uniqueStorage()._options = .oneofBool(newValue)
    }
  }

  var oneofString: String {
    get {
      if case .oneofString(let v) = _storage._options {
        return v
      }
      return ""
    }
    set {
      _uniqueStorage()._options = .oneofString(newValue)
    }
  }

  var oneofInt32: Int32 {
    get {
      if case .oneofInt32(let v) = _storage._options {
        return v
      }
      return 0
    }
    set {
      _uniqueStorage()._options = .oneofInt32(newValue)
    }
  }

  var optionalNestedMessage: Swift_Protobuf_TestFieldOrderings.NestedMessage {
    get {return _storage._optionalNestedMessage ?? Swift_Protobuf_TestFieldOrderings.NestedMessage()}
    set {_uniqueStorage()._optionalNestedMessage = newValue}
  }
  var hasOptionalNestedMessage: Bool {
    return _storage._optionalNestedMessage != nil
  }
  mutating func clearOptionalNestedMessage() {
    return _storage._optionalNestedMessage = nil
  }

  var options: OneOf_Options {
    get {return _storage._options}
    set {
      _uniqueStorage()._options = newValue
    }
  }

  init() {}

  public mutating func _protoc_generated_decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
    try _uniqueStorage().decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
  }

  public func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
    try _storage.traverse(visitor: visitor)
  }

  public func _protoc_generated_isEqualTo(other: Swift_Protobuf_TestFieldOrderings) -> Bool {
    return _storage === other._storage || _storage.isEqualTo(other: other._storage)
  }

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _storage.copy()
    }
    return _storage
  }

  public mutating func setExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, Swift_Protobuf_TestFieldOrderings>, value: F.ValueType) {
    return _uniqueStorage().setExtensionValue(ext: ext, value: value)
  }

  public mutating func clearExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, Swift_Protobuf_TestFieldOrderings>) {
    return _storage.clearExtensionValue(ext: ext)
  }

  public func getExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, Swift_Protobuf_TestFieldOrderings>) -> F.ValueType {
    return _storage.getExtensionValue(ext: ext)
  }

  public func hasExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, Swift_Protobuf_TestFieldOrderings>) -> Bool {
    return _storage.hasExtensionValue(ext: ext)
  }
  public func _protobuf_fieldNames(for number: Int) -> FieldNameMap.Names? {
    return Swift_Protobuf_TestFieldOrderings._protobuf_fieldNames.fieldNames(for: number) ?? _storage.extensionFieldValues.fieldNames(for: number)
  }
}

let Swift_Protobuf_Extensions_myExtensionString = SwiftProtobuf.MessageExtension<OptionalExtensionField<SwiftProtobuf.ProtobufString>, Swift_Protobuf_TestFieldOrderings>(
  protoFieldNumber: 50,
  fieldNames: .same(proto: "swift.protobuf.my_extension_string"),
  defaultValue: ""
)

let Swift_Protobuf_Extensions_myExtensionInt = SwiftProtobuf.MessageExtension<OptionalExtensionField<SwiftProtobuf.ProtobufInt32>, Swift_Protobuf_TestFieldOrderings>(
  protoFieldNumber: 5,
  fieldNames: .same(proto: "swift.protobuf.my_extension_int"),
  defaultValue: 0
)

extension Swift_Protobuf_TestFieldOrderings {
  var Swift_Protobuf_myExtensionString: String {
    get {return getExtensionValue(ext: Swift_Protobuf_Extensions_myExtensionString) ?? ""}
    set {setExtensionValue(ext: Swift_Protobuf_Extensions_myExtensionString, value: newValue)}
  }
  var hasSwift_Protobuf_myExtensionString: Bool {
    return hasExtensionValue(ext: Swift_Protobuf_Extensions_myExtensionString)
  }
  mutating func clearSwift_Protobuf_myExtensionString() {
    clearExtensionValue(ext: Swift_Protobuf_Extensions_myExtensionString)
  }
}

extension Swift_Protobuf_TestFieldOrderings {
  var Swift_Protobuf_myExtensionInt: Int32 {
    get {return getExtensionValue(ext: Swift_Protobuf_Extensions_myExtensionInt) ?? 0}
    set {setExtensionValue(ext: Swift_Protobuf_Extensions_myExtensionInt, value: newValue)}
  }
  var hasSwift_Protobuf_myExtensionInt: Bool {
    return hasExtensionValue(ext: Swift_Protobuf_Extensions_myExtensionInt)
  }
  mutating func clearSwift_Protobuf_myExtensionInt() {
    clearExtensionValue(ext: Swift_Protobuf_Extensions_myExtensionInt)
  }
}

let Swift_Protobuf_UnittestSwiftFieldorder_Extensions: SwiftProtobuf.ExtensionSet = [
  Swift_Protobuf_Extensions_myExtensionString,
  Swift_Protobuf_Extensions_myExtensionInt
]
