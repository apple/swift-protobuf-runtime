/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: google/protobuf/unittest_preserve_unknown_enum2.proto
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

enum Proto2PreserveUnknownEnumUnittest_MyEnum: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case foo // = 0
  case bar // = 1
  case baz // = 2

  init() {
    self = .foo
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .foo
    case 1: self = .bar
    case 2: self = .baz
    default: return nil
    }
  }

  init?(jsonName: String) {
    switch jsonName {
    case "FOO": self = .foo
    case "BAR": self = .bar
    case "BAZ": self = .baz
    default: return nil
    }
  }

  init?(protoName: String) {
    switch protoName {
    case "FOO": self = .foo
    case "BAR": self = .bar
    case "BAZ": self = .baz
    default: return nil
    }
  }

  var rawValue: Int {
    get {
      switch self {
      case .foo: return 0
      case .bar: return 1
      case .baz: return 2
      }
    }
  }

  var _protobuf_jsonName: String? {
    get {
      switch self {
      case .foo: return "FOO"
      case .bar: return "BAR"
      case .baz: return "BAZ"
      }
    }
  }

  var hashValue: Int { return rawValue }

}

struct Proto2PreserveUnknownEnumUnittest_MyMessage: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  public var protoMessageName: String {return "MyMessage"}
  public var protoPackageName: String {return "proto2_preserve_unknown_enum_unittest"}
  public static let _protobuf_fieldNames: FieldNameMap = [
    1: .same(proto: "e"),
    2: .unique(proto: "repeated_e", json: "repeatedE"),
    3: .unique(proto: "repeated_packed_e", json: "repeatedPackedE"),
    4: .unique(proto: "repeated_packed_unexpected_e", json: "repeatedPackedUnexpectedE"),
    5: .unique(proto: "oneof_e_1", json: "oneofE1"),
    6: .unique(proto: "oneof_e_2", json: "oneofE2"),
  ]

  public var unknown = SwiftProtobuf.UnknownStorage()

  enum OneOf_O: ExpressibleByNilLiteral, SwiftProtobuf.OneofEnum {
    case oneofE1(Proto2PreserveUnknownEnumUnittest_MyEnum)
    case oneofE2(Proto2PreserveUnknownEnumUnittest_MyEnum)
    case None

    static func ==(lhs: Proto2PreserveUnknownEnumUnittest_MyMessage.OneOf_O, rhs: Proto2PreserveUnknownEnumUnittest_MyMessage.OneOf_O) -> Bool {
      switch (lhs, rhs) {
      case (.oneofE1(let l), .oneofE1(let r)): return l == r
      case (.oneofE2(let l), .oneofE2(let r)): return l == r
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
      case 5:
        var value: Proto2PreserveUnknownEnumUnittest_MyEnum?
        try setter.decodeSingularField(fieldType: Proto2PreserveUnknownEnumUnittest_MyEnum.self, value: &value)
        if let value = value {
          self = .oneofE1(value)
        }
      case 6:
        var value: Proto2PreserveUnknownEnumUnittest_MyEnum?
        try setter.decodeSingularField(fieldType: Proto2PreserveUnknownEnumUnittest_MyEnum.self, value: &value)
        if let value = value {
          self = .oneofE2(value)
        }
      default:
        self = .None
      }
    }

    public func traverse(visitor: SwiftProtobuf.Visitor, start: Int, end: Int) throws {
      switch self {
      case .oneofE1(let v):
        if start <= 5 && 5 < end {
          try visitor.visitSingularField(fieldType: Proto2PreserveUnknownEnumUnittest_MyEnum.self, value: v, fieldNumber: 5)
        }
      case .oneofE2(let v):
        if start <= 6 && 6 < end {
          try visitor.visitSingularField(fieldType: Proto2PreserveUnknownEnumUnittest_MyEnum.self, value: v, fieldNumber: 6)
        }
      case .None:
        break
      }
    }
  }

  private var _e: Proto2PreserveUnknownEnumUnittest_MyEnum? = nil
  var e: Proto2PreserveUnknownEnumUnittest_MyEnum {
    get {return _e ?? Proto2PreserveUnknownEnumUnittest_MyEnum.foo}
    set {_e = newValue}
  }
  public var hasE: Bool {
    return _e != nil
  }
  public mutating func clearE() {
    return _e = nil
  }

  var repeatedE: [Proto2PreserveUnknownEnumUnittest_MyEnum] = []

  var repeatedPackedE: [Proto2PreserveUnknownEnumUnittest_MyEnum] = []

  ///   not packed
  var repeatedPackedUnexpectedE: [Proto2PreserveUnknownEnumUnittest_MyEnum] = []

  var oneofE1: Proto2PreserveUnknownEnumUnittest_MyEnum {
    get {
      if case .oneofE1(let v) = o {
        return v
      }
      return Proto2PreserveUnknownEnumUnittest_MyEnum.foo
    }
    set {
      o = .oneofE1(newValue)
    }
  }

  public var o: Proto2PreserveUnknownEnumUnittest_MyMessage.OneOf_O = .None

  var oneofE2: Proto2PreserveUnknownEnumUnittest_MyEnum {
    get {
      if case .oneofE2(let v) = o {
        return v
      }
      return Proto2PreserveUnknownEnumUnittest_MyEnum.foo
    }
    set {
      o = .oneofE2(newValue)
    }
  }

  init() {}

  public mutating func _protoc_generated_decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
    switch protoFieldNumber {
    case 1: try setter.decodeSingularField(fieldType: Proto2PreserveUnknownEnumUnittest_MyEnum.self, value: &_e)
    case 2: try setter.decodeRepeatedField(fieldType: Proto2PreserveUnknownEnumUnittest_MyEnum.self, value: &repeatedE)
    case 3: try setter.decodeRepeatedField(fieldType: Proto2PreserveUnknownEnumUnittest_MyEnum.self, value: &repeatedPackedE)
    case 4: try setter.decodeRepeatedField(fieldType: Proto2PreserveUnknownEnumUnittest_MyEnum.self, value: &repeatedPackedUnexpectedE)
    case 5, 6: try o.decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
    default: break
    }
  }

  public func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
    if let v = _e {
      try visitor.visitSingularField(fieldType: Proto2PreserveUnknownEnumUnittest_MyEnum.self, value: v, fieldNumber: 1)
    }
    if !repeatedE.isEmpty {
      try visitor.visitRepeatedField(fieldType: Proto2PreserveUnknownEnumUnittest_MyEnum.self, value: repeatedE, fieldNumber: 2)
    }
    if !repeatedPackedE.isEmpty {
      try visitor.visitPackedField(fieldType: Proto2PreserveUnknownEnumUnittest_MyEnum.self, value: repeatedPackedE, fieldNumber: 3)
    }
    if !repeatedPackedUnexpectedE.isEmpty {
      try visitor.visitRepeatedField(fieldType: Proto2PreserveUnknownEnumUnittest_MyEnum.self, value: repeatedPackedUnexpectedE, fieldNumber: 4)
    }
    try o.traverse(visitor: visitor, start: 5, end: 7)
    unknown.traverse(visitor: visitor)
  }

  public func _protoc_generated_isEqualTo(other: Proto2PreserveUnknownEnumUnittest_MyMessage) -> Bool {
    if _e != other._e {return false}
    if repeatedE != other.repeatedE {return false}
    if repeatedPackedE != other.repeatedPackedE {return false}
    if repeatedPackedUnexpectedE != other.repeatedPackedUnexpectedE {return false}
    if o != other.o {return false}
    if unknown != other.unknown {return false}
    return true
  }
}
