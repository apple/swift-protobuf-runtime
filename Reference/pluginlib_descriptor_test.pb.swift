// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: pluginlib_descriptor_test.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

// Protos/pluginlib_descriptor_test.proto - test proto
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2017 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See http://swift.org/LICENSE.txt for license information
// See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
// -----------------------------------------------------------------------------
///
/// Test proto for Tests/SwiftProtobufPluginLibraryTests/Test_Descriptor.swift
///
// -----------------------------------------------------------------------------

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

enum SDTTopLevelEnum: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case valueZero // = 0
  case valueOne // = 1
  case valueTwo // = 2

  init() {
    self = .valueZero
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .valueZero
    case 1: self = .valueOne
    case 2: self = .valueTwo
    default: return nil
    }
  }

  var rawValue: Int {
    switch self {
    case .valueZero: return 0
    case .valueOne: return 1
    case .valueTwo: return 2
    }
  }

}

#if swift(>=4.2)

extension SDTTopLevelEnum: CaseIterable {
  // Support synthesized by the compiler.
}

#endif  // swift(>=4.2)

struct SDTTopLevelMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var field1: String {
    get {return _storage._field1 ?? String()}
    set {_uniqueStorage()._field1 = newValue}
  }
  /// Returns true if `field1` has been explicitly set.
  var hasField1: Bool {return _storage._field1 != nil}
  /// Clears the value of `field1`. Subsequent reads from it will return its default value.
  mutating func clearField1() {_storage._field1 = nil}

  var field2: Int32 {
    get {return _storage._field2 ?? 0}
    set {_uniqueStorage()._field2 = newValue}
  }
  /// Returns true if `field2` has been explicitly set.
  var hasField2: Bool {return _storage._field2 != nil}
  /// Clears the value of `field2`. Subsequent reads from it will return its default value.
  mutating func clearField2() {_storage._field2 = nil}

  var o: OneOf_O? {
    get {return _storage._o}
    set {_uniqueStorage()._o = newValue}
  }

  var field3: SDTTopLevelEnum {
    get {
      if case .field3(let v)? = _storage._o {return v}
      return .valueZero
    }
    set {_uniqueStorage()._o = .field3(newValue)}
  }

  var field4: SDTTopLevelMessage.SubEnum {
    get {
      if case .field4(let v)? = _storage._o {return v}
      return .subValue0
    }
    set {_uniqueStorage()._o = .field4(newValue)}
  }

  var field5: SDTTopLevelMessage.SubMessage {
    get {
      if case .field5(let v)? = _storage._o {return v}
      return SDTTopLevelMessage.SubMessage()
    }
    set {_uniqueStorage()._o = .field5(newValue)}
  }

  var field6: SDTTopLevelMessage2 {
    get {
      if case .field6(let v)? = _storage._o {return v}
      return SDTTopLevelMessage2()
    }
    set {_uniqueStorage()._o = .field6(newValue)}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum OneOf_O: Equatable {
    case field3(SDTTopLevelEnum)
    case field4(SDTTopLevelMessage.SubEnum)
    case field5(SDTTopLevelMessage.SubMessage)
    case field6(SDTTopLevelMessage2)

  #if !swift(>=4.1)
    static func ==(lhs: SDTTopLevelMessage.OneOf_O, rhs: SDTTopLevelMessage.OneOf_O) -> Bool {
      switch (lhs, rhs) {
      case (.field3(let l), .field3(let r)): return l == r
      case (.field4(let l), .field4(let r)): return l == r
      case (.field5(let l), .field5(let r)): return l == r
      case (.field6(let l), .field6(let r)): return l == r
      default: return false
      }
    }
  #endif
  }

  enum SubEnum: SwiftProtobuf.Enum {
    typealias RawValue = Int
    case subValue0 // = 0
    case subValue1 // = 1
    case subValue2 // = 2

    init() {
      self = .subValue0
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .subValue0
      case 1: self = .subValue1
      case 2: self = .subValue2
      default: return nil
      }
    }

    var rawValue: Int {
      switch self {
      case .subValue0: return 0
      case .subValue1: return 1
      case .subValue2: return 2
      }
    }

  }

  struct SubMessage {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var field1: Int32 {
      get {return _storage._field1 ?? 0}
      set {_uniqueStorage()._field1 = newValue}
    }
    /// Returns true if `field1` has been explicitly set.
    var hasField1: Bool {return _storage._field1 != nil}
    /// Clears the value of `field1`. Subsequent reads from it will return its default value.
    mutating func clearField1() {_storage._field1 = nil}

    var field2: String {
      get {return _storage._field2 ?? String()}
      set {_uniqueStorage()._field2 = newValue}
    }
    /// Returns true if `field2` has been explicitly set.
    var hasField2: Bool {return _storage._field2 != nil}
    /// Clears the value of `field2`. Subsequent reads from it will return its default value.
    mutating func clearField2() {_storage._field2 = nil}

    var field3: SDTTopLevelMessage.SubMessage {
      get {return _storage._field3 ?? SDTTopLevelMessage.SubMessage()}
      set {_uniqueStorage()._field3 = newValue}
    }
    /// Returns true if `field3` has been explicitly set.
    var hasField3: Bool {return _storage._field3 != nil}
    /// Clears the value of `field3`. Subsequent reads from it will return its default value.
    mutating func clearField3() {_storage._field3 = nil}

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}

    fileprivate var _storage = _StorageClass.defaultInstance
  }

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

#if swift(>=4.2)

extension SDTTopLevelMessage.SubEnum: CaseIterable {
  // Support synthesized by the compiler.
}

#endif  // swift(>=4.2)

struct SDTTopLevelMessage2 {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var left: SDTTopLevelMessage {
    get {return _storage._left ?? SDTTopLevelMessage()}
    set {_uniqueStorage()._left = newValue}
  }
  /// Returns true if `left` has been explicitly set.
  var hasLeft: Bool {return _storage._left != nil}
  /// Clears the value of `left`. Subsequent reads from it will return its default value.
  mutating func clearLeft() {_storage._left = nil}

  var right: SDTTopLevelMessage2 {
    get {return _storage._right ?? SDTTopLevelMessage2()}
    set {_uniqueStorage()._right = newValue}
  }
  /// Returns true if `right` has been explicitly set.
  var hasRight: Bool {return _storage._right != nil}
  /// Clears the value of `right`. Subsequent reads from it will return its default value.
  mutating func clearRight() {_storage._right = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

struct SDTExternalRefs {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var desc: Google_Protobuf_DescriptorProto {
    get {return _storage._desc ?? Google_Protobuf_DescriptorProto()}
    set {_uniqueStorage()._desc = newValue}
  }
  /// Returns true if `desc` has been explicitly set.
  var hasDesc: Bool {return _storage._desc != nil}
  /// Clears the value of `desc`. Subsequent reads from it will return its default value.
  mutating func clearDesc() {_storage._desc = nil}

  var ver: Google_Protobuf_Compiler_Version {
    get {return _storage._ver ?? Google_Protobuf_Compiler_Version()}
    set {_uniqueStorage()._ver = newValue}
  }
  /// Returns true if `ver` has been explicitly set.
  var hasVer: Bool {return _storage._ver != nil}
  /// Clears the value of `ver`. Subsequent reads from it will return its default value.
  mutating func clearVer() {_storage._ver = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

struct SDTScoperForExt {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Extension support defined in pluginlib_descriptor_test.proto.

extension Google_Protobuf_FieldOptions {

  var SDTextStr: String {
    get {return getExtensionValue(ext: SDTExtensions_ext_str) ?? String()}
    set {setExtensionValue(ext: SDTExtensions_ext_str, value: newValue)}
  }
  /// Returns true if extension `SDTExtensions_ext_str`
  /// has been explicitly set.
  var hasSDTextStr: Bool {
    return hasExtensionValue(ext: SDTExtensions_ext_str)
  }
  /// Clears the value of extension `SDTExtensions_ext_str`.
  /// Subsequent reads from it will return its default value.
  mutating func clearSDTextStr() {
    clearExtensionValue(ext: SDTExtensions_ext_str)
  }
}

extension Google_Protobuf_MessageOptions {

  var SDTScoperForExt_extEnum: SDTTopLevelEnum {
    get {return getExtensionValue(ext: SDTScoperForExt.Extensions.ext_enum) ?? .valueZero}
    set {setExtensionValue(ext: SDTScoperForExt.Extensions.ext_enum, value: newValue)}
  }
  /// Returns true if extension `SDTScoperForExt.Extensions.ext_enum`
  /// has been explicitly set.
  var hasSDTScoperForExt_extEnum: Bool {
    return hasExtensionValue(ext: SDTScoperForExt.Extensions.ext_enum)
  }
  /// Clears the value of extension `SDTScoperForExt.Extensions.ext_enum`.
  /// Subsequent reads from it will return its default value.
  mutating func clearSDTScoperForExt_extEnum() {
    clearExtensionValue(ext: SDTScoperForExt.Extensions.ext_enum)
  }

  var SDTScoperForExt_extMsg: SDTTopLevelMessage2 {
    get {return getExtensionValue(ext: SDTScoperForExt.Extensions.ext_msg) ?? SDTTopLevelMessage2()}
    set {setExtensionValue(ext: SDTScoperForExt.Extensions.ext_msg, value: newValue)}
  }
  /// Returns true if extension `SDTScoperForExt.Extensions.ext_msg`
  /// has been explicitly set.
  var hasSDTScoperForExt_extMsg: Bool {
    return hasExtensionValue(ext: SDTScoperForExt.Extensions.ext_msg)
  }
  /// Clears the value of extension `SDTScoperForExt.Extensions.ext_msg`.
  /// Subsequent reads from it will return its default value.
  mutating func clearSDTScoperForExt_extMsg() {
    clearExtensionValue(ext: SDTScoperForExt.Extensions.ext_msg)
  }

}

/// A `SwiftProtobuf.SimpleExtensionMap` that includes all of the extensions defined by
/// this .proto file. It can be used any place an `SwiftProtobuf.ExtensionMap` is needed
/// in parsing, or it can be combined with other `SwiftProtobuf.SimpleExtensionMap`s to create
/// a larger `SwiftProtobuf.SimpleExtensionMap`.
let SDTPluginlibDescriptorTest_Extensions: SwiftProtobuf.SimpleExtensionMap = [
  SDTExtensions_ext_str,
  SDTScoperForExt.Extensions.ext_enum,
  SDTScoperForExt.Extensions.ext_msg
]

let SDTExtensions_ext_str = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalExtensionField<SwiftProtobuf.ProtobufString>, Google_Protobuf_FieldOptions>(
  _protobuf_fieldNumber: 90000,
  fieldName: "swift_descriptor_test.ext_str"
)

extension SDTScoperForExt {
  enum Extensions {
    static let ext_enum = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalEnumExtensionField<SDTTopLevelEnum>, Google_Protobuf_MessageOptions>(
      _protobuf_fieldNumber: 99001,
      fieldName: "swift_descriptor_test.ScoperForExt.ext_enum"
    )

    static let ext_msg = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalMessageExtensionField<SDTTopLevelMessage2>, Google_Protobuf_MessageOptions>(
      _protobuf_fieldNumber: 99002,
      fieldName: "swift_descriptor_test.ScoperForExt.ext_msg"
    )
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "swift_descriptor_test"

extension SDTTopLevelEnum: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "VALUE_ZERO"),
    1: .same(proto: "VALUE_ONE"),
    2: .same(proto: "VALUE_TWO"),
  ]
}

extension SDTTopLevelMessage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".TopLevelMessage"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "field1"),
    2: .same(proto: "field2"),
    3: .same(proto: "field3"),
    4: .same(proto: "field4"),
    5: .same(proto: "field5"),
    6: .same(proto: "field6"),
  ]

  fileprivate class _StorageClass {
    var _field1: String? = nil
    var _field2: Int32? = nil
    var _o: SDTTopLevelMessage.OneOf_O?

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _field1 = source._field1
      _field2 = source._field2
      _o = source._o
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularStringField(value: &_storage._field1)
        case 2: try decoder.decodeSingularInt32Field(value: &_storage._field2)
        case 3:
          if _storage._o != nil {try decoder.handleConflictingOneOf()}
          var v: SDTTopLevelEnum?
          try decoder.decodeSingularEnumField(value: &v)
          if let v = v {_storage._o = .field3(v)}
        case 4:
          if _storage._o != nil {try decoder.handleConflictingOneOf()}
          var v: SDTTopLevelMessage.SubEnum?
          try decoder.decodeSingularEnumField(value: &v)
          if let v = v {_storage._o = .field4(v)}
        case 5:
          var v: SDTTopLevelMessage.SubMessage?
          if let current = _storage._o {
            try decoder.handleConflictingOneOf()
            if case .field5(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._o = .field5(v)}
        case 6:
          var v: SDTTopLevelMessage2?
          if let current = _storage._o {
            try decoder.handleConflictingOneOf()
            if case .field6(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._o = .field6(v)}
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._field1 {
        try visitor.visitSingularStringField(value: v, fieldNumber: 1)
      }
      if let v = _storage._field2 {
        try visitor.visitSingularInt32Field(value: v, fieldNumber: 2)
      }
      switch _storage._o {
      case .field3(let v)?:
        try visitor.visitSingularEnumField(value: v, fieldNumber: 3)
      case .field4(let v)?:
        try visitor.visitSingularEnumField(value: v, fieldNumber: 4)
      case .field5(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      case .field6(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
      case nil: break
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: SDTTopLevelMessage, rhs: SDTTopLevelMessage) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._field1 != rhs_storage._field1 {return false}
        if _storage._field2 != rhs_storage._field2 {return false}
        if _storage._o != rhs_storage._o {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension SDTTopLevelMessage.SubEnum: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "SUB_VALUE_0"),
    1: .same(proto: "SUB_VALUE_1"),
    2: .same(proto: "SUB_VALUE_2"),
  ]
}

extension SDTTopLevelMessage.SubMessage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = SDTTopLevelMessage.protoMessageName + ".SubMessage"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "field1"),
    2: .same(proto: "field2"),
    3: .same(proto: "field3"),
  ]

  fileprivate class _StorageClass {
    var _field1: Int32? = nil
    var _field2: String? = nil
    var _field3: SDTTopLevelMessage.SubMessage? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _field1 = source._field1
      _field2 = source._field2
      _field3 = source._field3
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularInt32Field(value: &_storage._field1)
        case 2: try decoder.decodeSingularStringField(value: &_storage._field2)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._field3)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._field1 {
        try visitor.visitSingularInt32Field(value: v, fieldNumber: 1)
      }
      if let v = _storage._field2 {
        try visitor.visitSingularStringField(value: v, fieldNumber: 2)
      }
      if let v = _storage._field3 {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: SDTTopLevelMessage.SubMessage, rhs: SDTTopLevelMessage.SubMessage) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._field1 != rhs_storage._field1 {return false}
        if _storage._field2 != rhs_storage._field2 {return false}
        if _storage._field3 != rhs_storage._field3 {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension SDTTopLevelMessage2: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".TopLevelMessage2"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "left"),
    2: .same(proto: "right"),
  ]

  fileprivate class _StorageClass {
    var _left: SDTTopLevelMessage? = nil
    var _right: SDTTopLevelMessage2? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _left = source._left
      _right = source._right
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._left)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._right)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._left {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._right {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: SDTTopLevelMessage2, rhs: SDTTopLevelMessage2) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._left != rhs_storage._left {return false}
        if _storage._right != rhs_storage._right {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension SDTExternalRefs: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ExternalRefs"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "desc"),
    2: .same(proto: "ver"),
  ]

  fileprivate class _StorageClass {
    var _desc: Google_Protobuf_DescriptorProto? = nil
    var _ver: Google_Protobuf_Compiler_Version? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _desc = source._desc
      _ver = source._ver
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public var isInitialized: Bool {
    return withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._desc, !v.isInitialized {return false}
      return true
    }
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._desc)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._ver)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._desc {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._ver {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: SDTExternalRefs, rhs: SDTExternalRefs) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._desc != rhs_storage._desc {return false}
        if _storage._ver != rhs_storage._ver {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension SDTScoperForExt: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ScoperForExt"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: SDTScoperForExt, rhs: SDTScoperForExt) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
