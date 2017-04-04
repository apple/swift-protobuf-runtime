/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: unittest_swift_enum_optional_default.proto
 *
 */

//  Protos/unittest_swift_enum_optional_default.proto - test proto
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
// / Test handling of enum fields with specified defaults
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

fileprivate let _protobuf_package = "protobuf_unittest.extend"

struct ProtobufUnittest_Extend_EnumOptionalDefault: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".EnumOptionalDefault"

  var unknownFields = SwiftProtobuf.UnknownStorage()

  struct NestedMessage: SwiftProtobuf.Message {
    static let protoMessageName: String = ProtobufUnittest_Extend_EnumOptionalDefault.protoMessageName + ".NestedMessage"

    fileprivate class _StorageClass {
      var _message: ProtobufUnittest_Extend_EnumOptionalDefault.NestedMessage? = nil
      var _optionalEnum: ProtobufUnittest_Extend_EnumOptionalDefault.NestedMessage.Enum? = nil

      init() {}

      init(copying source: _StorageClass) {
        _message = source._message
        _optionalEnum = source._optionalEnum
      }
    }

    fileprivate var _storage = _StorageClass()

    fileprivate mutating func _uniqueStorage() -> _StorageClass {
      if !isKnownUniquelyReferenced(&_storage) {
        _storage = _StorageClass(copying: _storage)
      }
      return _storage
    }

    ///   The circular reference here forces the generator to
    ///   implement heap-backed storage.
    var message: ProtobufUnittest_Extend_EnumOptionalDefault.NestedMessage {
      get {return _storage._message ?? ProtobufUnittest_Extend_EnumOptionalDefault.NestedMessage()}
      set {_uniqueStorage()._message = newValue}
    }
    var hasMessage: Bool {
      return _storage._message != nil
    }
    mutating func clearMessage() {
      return _storage._message = nil
    }

    var optionalEnum: ProtobufUnittest_Extend_EnumOptionalDefault.NestedMessage.Enum {
      get {return _storage._optionalEnum ?? ProtobufUnittest_Extend_EnumOptionalDefault.NestedMessage.Enum.foo}
      set {_uniqueStorage()._optionalEnum = newValue}
    }
    var hasOptionalEnum: Bool {
      return _storage._optionalEnum != nil
    }
    mutating func clearOptionalEnum() {
      return _storage._optionalEnum = nil
    }

    var unknownFields = SwiftProtobuf.UnknownStorage()

    enum Enum: SwiftProtobuf.Enum, SwiftProtobuf._ProtoNameProviding {
      typealias RawValue = Int
      case foo // = 0

      static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        0: .same(proto: "FOO"),
      ]

      init() {
        self = .foo
      }

      init?(rawValue: Int) {
        switch rawValue {
        case 0: self = .foo
        default: return nil
        }
      }

      var rawValue: Int {
        switch self {
        case .foo: return 0
        }
      }

    }

    init() {}

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
      _ = _uniqueStorage()
      try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
        while let fieldNumber = try decoder.nextFieldNumber() {
          switch fieldNumber {
          case 1: try decoder.decodeSingularMessageField(value: &_storage._message)
          case 17: try decoder.decodeSingularEnumField(value: &_storage._optionalEnum)
          default: break
          }
        }
      }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
      try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
        if let v = _storage._message {
          try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
        }
        if let v = _storage._optionalEnum {
          try visitor.visitSingularEnumField(value: v, fieldNumber: 17)
        }
      }
      try unknownFields.traverse(visitor: &visitor)
    }
  }

  struct NestedMessage2: SwiftProtobuf.Message {
    static let protoMessageName: String = ProtobufUnittest_Extend_EnumOptionalDefault.protoMessageName + ".NestedMessage2"

    fileprivate var _optionalEnum: ProtobufUnittest_Extend_EnumOptionalDefault.NestedMessage2.Enum? = nil
    var optionalEnum: ProtobufUnittest_Extend_EnumOptionalDefault.NestedMessage2.Enum {
      get {return _optionalEnum ?? ProtobufUnittest_Extend_EnumOptionalDefault.NestedMessage2.Enum.foo}
      set {_optionalEnum = newValue}
    }
    var hasOptionalEnum: Bool {
      return _optionalEnum != nil
    }
    mutating func clearOptionalEnum() {
      return _optionalEnum = nil
    }

    var unknownFields = SwiftProtobuf.UnknownStorage()

    enum Enum: SwiftProtobuf.Enum, SwiftProtobuf._ProtoNameProviding {
      typealias RawValue = Int
      case foo // = 0

      static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        0: .same(proto: "FOO"),
      ]

      init() {
        self = .foo
      }

      init?(rawValue: Int) {
        switch rawValue {
        case 0: self = .foo
        default: return nil
        }
      }

      var rawValue: Int {
        switch self {
        case .foo: return 0
        }
      }

    }

    init() {}

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 17: try decoder.decodeSingularEnumField(value: &_optionalEnum)
        default: break
        }
      }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
      if let v = _optionalEnum {
        try visitor.visitSingularEnumField(value: v, fieldNumber: 17)
      }
      try unknownFields.traverse(visitor: &visitor)
    }
  }

  init() {}

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }
}

extension ProtobufUnittest_Extend_EnumOptionalDefault: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  func _protobuf_generated_isEqualTo(other: ProtobufUnittest_Extend_EnumOptionalDefault) -> Bool {
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension ProtobufUnittest_Extend_EnumOptionalDefault.NestedMessage: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "message"),
    17: .standard(proto: "optional_enum"),
  ]

  func _protobuf_generated_isEqualTo(other: ProtobufUnittest_Extend_EnumOptionalDefault.NestedMessage) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) in
        if _storage._message != other_storage._message {return false}
        if _storage._optionalEnum != other_storage._optionalEnum {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension ProtobufUnittest_Extend_EnumOptionalDefault.NestedMessage2: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    17: .standard(proto: "optional_enum"),
  ]

  func _protobuf_generated_isEqualTo(other: ProtobufUnittest_Extend_EnumOptionalDefault.NestedMessage2) -> Bool {
    if _optionalEnum != other._optionalEnum {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
