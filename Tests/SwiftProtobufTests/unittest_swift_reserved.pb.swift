/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: unittest_swift_reserved.proto
 *
 */

//  Protos/unittest_swift_reserved.proto - test proto
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
// / Test Swift reserved words used as enum or message names
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

struct ProtobufUnittest_SwiftReservedTest: SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "SwiftReservedTest"
  static let protoPackageName: String = "protobuf_unittest"
  static let _protobuf_fieldNames: FieldNameMap = [
    10: .unique(proto: "proto_message_name", json: "protoMessageName"),
    11: .unique(proto: "proto_package_name", json: "protoPackageName"),
    12: .unique(proto: "any_type_prefix", json: "anyTypePrefix"),
    13: .unique(proto: "any_type_url", json: "anyTypeUrl"),
    20: .unique(proto: "is_initialized", json: "isInitialized"),
    21: .unique(proto: "hash_value", json: "hashValue"),
    22: .unique(proto: "debug_description", json: "debugDescription"),
  ]

  ///   static r/o properties on Message, ensure they still work as fields.
  private var _protoMessageName: Int32? = nil
  var protoMessageName: Int32 {
    get {return _protoMessageName ?? 0}
    set {_protoMessageName = newValue}
  }
  var hasProtoMessageName: Bool {
    return _protoMessageName != nil
  }
  mutating func clearProtoMessageName() {
    return _protoMessageName = nil
  }

  private var _protoPackageName: Int32? = nil
  var protoPackageName: Int32 {
    get {return _protoPackageName ?? 0}
    set {_protoPackageName = newValue}
  }
  var hasProtoPackageName: Bool {
    return _protoPackageName != nil
  }
  mutating func clearProtoPackageName() {
    return _protoPackageName = nil
  }

  private var _anyTypePrefix: Int32? = nil
  var anyTypePrefix: Int32 {
    get {return _anyTypePrefix ?? 0}
    set {_anyTypePrefix = newValue}
  }
  var hasAnyTypePrefix: Bool {
    return _anyTypePrefix != nil
  }
  mutating func clearAnyTypePrefix() {
    return _anyTypePrefix = nil
  }

  private var _anyTypeURL: Int32? = nil
  var anyTypeURL: Int32 {
    get {return _anyTypeURL ?? 0}
    set {_anyTypeURL = newValue}
  }
  var hasAnyTypeURL: Bool {
    return _anyTypeURL != nil
  }
  mutating func clearAnyTypeURL() {
    return _anyTypeURL = nil
  }

  ///   r/o properties on Message, ensure it gets remapped.
  private var _isInitialized_p: String? = nil
  var isInitialized_p: String {
    get {return _isInitialized_p ?? ""}
    set {_isInitialized_p = newValue}
  }
  var hasIsInitialized_p: Bool {
    return _isInitialized_p != nil
  }
  mutating func clearIsInitialized_p() {
    return _isInitialized_p = nil
  }

  private var _hashValue_p: String? = nil
  var hashValue_p: String {
    get {return _hashValue_p ?? ""}
    set {_hashValue_p = newValue}
  }
  var hasHashValue_p: Bool {
    return _hashValue_p != nil
  }
  mutating func clearHashValue_p() {
    return _hashValue_p = nil
  }

  private var _debugDescription_p: Int32? = nil
  var debugDescription_p: Int32 {
    get {return _debugDescription_p ?? 0}
    set {_debugDescription_p = newValue}
  }
  var hasDebugDescription_p: Bool {
    return _debugDescription_p != nil
  }
  mutating func clearDebugDescription_p() {
    return _debugDescription_p = nil
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum Enum: SwiftProtobuf.Enum {
    typealias RawValue = Int
    case double // = 1
    case json // = 2
    case `class` // = 3
    case ___ // = 4
    case self_ // = 5
    case type // = 6

    init() {
      self = .double
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 1: self = .double
      case 2: self = .json
      case 3: self = .`class`
      case 4: self = .___
      case 5: self = .self_
      case 6: self = .type
      default: return nil
      }
    }

    init?(jsonName: String) {
      switch jsonName {
      case "DOUBLE": self = .double
      case "JSON": self = .json
      case "CLASS": self = .`class`
      case "_": self = .___
      case "SELF": self = .self_
      case "TYPE": self = .type
      default: return nil
      }
    }

    init?(protoName: String) {
      switch protoName {
      case "DOUBLE": self = .double
      case "JSON": self = .json
      case "CLASS": self = .`class`
      case "_": self = .___
      case "SELF": self = .self_
      case "TYPE": self = .type
      default: return nil
      }
    }

    var rawValue: Int {
      get {
        switch self {
        case .double: return 1
        case .json: return 2
        case .`class`: return 3
        case .___: return 4
        case .self_: return 5
        case .type: return 6
        }
      }
    }

    var _protobuf_jsonName: String? {
      get {
        switch self {
        case .double: return "DOUBLE"
        case .json: return "JSON"
        case .`class`: return "CLASS"
        case .___: return "_"
        case .self_: return "SELF"
        case .type: return "TYPE"
        }
      }
    }

  }

  enum ProtocolEnum: SwiftProtobuf.Enum {
    typealias RawValue = Int
    case a // = 1

    init() {
      self = .a
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 1: self = .a
      default: return nil
      }
    }

    init?(jsonName: String) {
      switch jsonName {
      case "a": self = .a
      default: return nil
      }
    }

    init?(protoName: String) {
      switch protoName {
      case "a": self = .a
      default: return nil
      }
    }

    var rawValue: Int {
      get {
        switch self {
        case .a: return 1
        }
      }
    }

    var _protobuf_jsonName: String? {
      get {
        switch self {
        case .a: return "a"
        }
      }
    }

  }

  struct classMessage: SwiftProtobuf.Proto2Message, SwiftProtobuf.ExtensibleMessage, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = "class"
    static let protoPackageName: String = "protobuf_unittest"
    static let _protobuf_fieldNames = FieldNameMap()

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
      if (1000 <= fieldNumber && fieldNumber < 2001) {
        try decoder.decodeExtensionField(values: &_extensionFieldValues, messageType: classMessage.self, fieldNumber: fieldNumber)
      }
    }

    func _protoc_generated_traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
      try visitor.visitExtensionFields(fields: _extensionFieldValues, start: 1000, end: 2001)
      unknownFields.traverse(visitor: &visitor)
    }

    func _protoc_generated_isEqualTo(other: ProtobufUnittest_SwiftReservedTest.classMessage) -> Bool {
      if unknownFields != other.unknownFields {return false}
      if _extensionFieldValues != other._extensionFieldValues {return false}
      return true
    }

    private var _extensionFieldValues = SwiftProtobuf.ExtensionFieldValueSet()

    mutating func setExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, classMessage>, value: F.ValueType) {
      _extensionFieldValues[ext.fieldNumber] = ext.set(value: value)
    }

    mutating func clearExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, classMessage>) {
      _extensionFieldValues[ext.fieldNumber] = nil
    }

    func getExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, classMessage>) -> F.ValueType {
      if let fieldValue = _extensionFieldValues[ext.fieldNumber] as? F {
        return fieldValue.value
      }
      return ext.defaultValue
    }

    func hasExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, classMessage>) -> Bool {
      return _extensionFieldValues[ext.fieldNumber] is F
    }
    func _protobuf_fieldNames(for number: Int) -> FieldNameMap.Names? {
      return classMessage._protobuf_fieldNames.fieldNames(for: number) ?? _extensionFieldValues.fieldNames(for: number)
    }
  }

  struct TypeMessage: SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = "Type"
    static let protoPackageName: String = "protobuf_unittest"
    static let _protobuf_fieldNames = FieldNameMap()

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}

    mutating func _protoc_generated_decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
      while let fieldNumber = try decoder.nextFieldNumber() {
        try decodeField(decoder: &decoder, fieldNumber: fieldNumber)
      }
    }

    mutating func _protoc_generated_decodeField<D: SwiftProtobuf.Decoder>(decoder: inout D, fieldNumber: Int) throws {
    }

    func _protoc_generated_traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
      unknownFields.traverse(visitor: &visitor)
    }

    func _protoc_generated_isEqualTo(other: ProtobufUnittest_SwiftReservedTest.TypeMessage) -> Bool {
      if unknownFields != other.unknownFields {return false}
      return true
    }
  }

  struct isEqualMessage: SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = "isEqual"
    static let protoPackageName: String = "protobuf_unittest"
    static let _protobuf_fieldNames = FieldNameMap()

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}

    mutating func _protoc_generated_decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
      while let fieldNumber = try decoder.nextFieldNumber() {
        try decodeField(decoder: &decoder, fieldNumber: fieldNumber)
      }
    }

    mutating func _protoc_generated_decodeField<D: SwiftProtobuf.Decoder>(decoder: inout D, fieldNumber: Int) throws {
    }

    func _protoc_generated_traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
      unknownFields.traverse(visitor: &visitor)
    }

    func _protoc_generated_isEqualTo(other: ProtobufUnittest_SwiftReservedTest.isEqualMessage) -> Bool {
      if unknownFields != other.unknownFields {return false}
      return true
    }
  }

  init() {}

  mutating func _protoc_generated_decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      try decodeField(decoder: &decoder, fieldNumber: fieldNumber)
    }
  }

  mutating func _protoc_generated_decodeField<D: SwiftProtobuf.Decoder>(decoder: inout D, fieldNumber: Int) throws {
    switch fieldNumber {
    case 10: try decoder.decodeSingularInt32Field(value: &_protoMessageName)
    case 11: try decoder.decodeSingularInt32Field(value: &_protoPackageName)
    case 12: try decoder.decodeSingularInt32Field(value: &_anyTypePrefix)
    case 13: try decoder.decodeSingularInt32Field(value: &_anyTypeURL)
    case 20: try decoder.decodeSingularStringField(value: &_isInitialized_p)
    case 21: try decoder.decodeSingularStringField(value: &_hashValue_p)
    case 22: try decoder.decodeSingularInt32Field(value: &_debugDescription_p)
    default: break
    }
  }

  func _protoc_generated_traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = _protoMessageName {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 10)
    }
    if let v = _protoPackageName {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 11)
    }
    if let v = _anyTypePrefix {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 12)
    }
    if let v = _anyTypeURL {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 13)
    }
    if let v = _isInitialized_p {
      try visitor.visitSingularStringField(value: v, fieldNumber: 20)
    }
    if let v = _hashValue_p {
      try visitor.visitSingularStringField(value: v, fieldNumber: 21)
    }
    if let v = _debugDescription_p {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 22)
    }
    unknownFields.traverse(visitor: &visitor)
  }

  func _protoc_generated_isEqualTo(other: ProtobufUnittest_SwiftReservedTest) -> Bool {
    if _protoMessageName != other._protoMessageName {return false}
    if _protoPackageName != other._protoPackageName {return false}
    if _anyTypePrefix != other._anyTypePrefix {return false}
    if _anyTypeURL != other._anyTypeURL {return false}
    if _isInitialized_p != other._isInitialized_p {return false}
    if _hashValue_p != other._hashValue_p {return false}
    if _debugDescription_p != other._debugDescription_p {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

struct ProtobufUnittest_SwiftReservedTestExt: SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "SwiftReservedTestExt"
  static let protoPackageName: String = "protobuf_unittest"
  static let _protobuf_fieldNames = FieldNameMap()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  struct Extensions {

    ///   Even though it is a raw name in the Extensions struct for the
    ///   Message (SwiftReservedTestExt), the generation controls what
    ///   that struct has to conform to, so collisions there don't matter.
    static let hash_value = SwiftProtobuf.MessageExtension<OptionalExtensionField<SwiftProtobuf.ProtobufBool>, ProtobufUnittest_SwiftReservedTest.classMessage>(
      fieldNumber: 1001,
      fieldNames: .same(proto: "protobuf_unittest.SwiftReservedTestExt.hash_value"),
      defaultValue: false
    )
  }

  init() {}

  mutating func _protoc_generated_decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      try decodeField(decoder: &decoder, fieldNumber: fieldNumber)
    }
  }

  mutating func _protoc_generated_decodeField<D: SwiftProtobuf.Decoder>(decoder: inout D, fieldNumber: Int) throws {
  }

  func _protoc_generated_traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    unknownFields.traverse(visitor: &visitor)
  }

  func _protoc_generated_isEqualTo(other: ProtobufUnittest_SwiftReservedTestExt) -> Bool {
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

///   Won't get _p added because it is fully qualified.
let ProtobufUnittest_Extensions_debug_description = SwiftProtobuf.MessageExtension<OptionalExtensionField<SwiftProtobuf.ProtobufBool>, ProtobufUnittest_SwiftReservedTest.classMessage>(
  fieldNumber: 1000,
  fieldNames: .same(proto: "protobuf_unittest.debug_description"),
  defaultValue: false
)

extension ProtobufUnittest_SwiftReservedTest.classMessage {
  ///   Even though it is a raw name in the Extensions struct for the
  ///   Message (SwiftReservedTestExt), the generation controls what
  ///   that struct has to conform to, so collisions there don't matter.
  var ProtobufUnittest_SwiftReservedTestExt_hashValue: Bool {
    get {return getExtensionValue(ext: ProtobufUnittest_SwiftReservedTestExt.Extensions.hash_value) ?? false}
    set {setExtensionValue(ext: ProtobufUnittest_SwiftReservedTestExt.Extensions.hash_value, value: newValue)}
  }
  var hasProtobufUnittest_SwiftReservedTestExt_hashValue: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_SwiftReservedTestExt.Extensions.hash_value)
  }
  mutating func clearProtobufUnittest_SwiftReservedTestExt_hashValue() {
    clearExtensionValue(ext: ProtobufUnittest_SwiftReservedTestExt.Extensions.hash_value)
  }
}

extension ProtobufUnittest_SwiftReservedTest.classMessage {
  ///   Won't get _p added because it is fully qualified.
  var ProtobufUnittest_debugDescription: Bool {
    get {return getExtensionValue(ext: ProtobufUnittest_Extensions_debug_description) ?? false}
    set {setExtensionValue(ext: ProtobufUnittest_Extensions_debug_description, value: newValue)}
  }
  var hasProtobufUnittest_debugDescription: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_Extensions_debug_description)
  }
  mutating func clearProtobufUnittest_debugDescription() {
    clearExtensionValue(ext: ProtobufUnittest_Extensions_debug_description)
  }
}

let ProtobufUnittest_UnittestSwiftReserved_Extensions: SwiftProtobuf.ExtensionSet = [
  ProtobufUnittest_Extensions_debug_description,
  ProtobufUnittest_SwiftReservedTestExt.Extensions.hash_value
]
