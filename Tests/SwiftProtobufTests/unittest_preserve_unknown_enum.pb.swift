/*
 * DO NOT EDIT.
 *
 * Generated by protoc and protoc-gen-swift.
 * Source: google/protobuf/unittest_preserve_unknown_enum.proto
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


enum Proto3PreserveUnknownEnumUnittest_MyEnum: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case foo // = 0
  case bar // = 1
  case baz // = 2
  case UNRECOGNIZED(Int)

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

  init?(name: String) {
    switch name {
    case "foo": self = .foo
    case "bar": self = .bar
    case "baz": self = .baz
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
      case .UNRECOGNIZED(let i): return i
      }
    }
  }

  var json: String {
    get {
      switch self {
      case .foo: return "\"FOO\""
      case .bar: return "\"BAR\""
      case .baz: return "\"BAZ\""
      case .UNRECOGNIZED(let i): return String(i)
      }
    }
  }

  var hashValue: Int { return rawValue }

  var debugDescription: String {
    get {
      switch self {
      case .foo: return ".foo"
      case .bar: return ".bar"
      case .baz: return ".baz"
      case .UNRECOGNIZED(let v): return ".UNRECOGNIZED(\(v))"
      }
    }
  }

}

enum Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case eFoo // = 0
  case eBar // = 1
  case eBaz // = 2
  case eExtra // = 3
  case UNRECOGNIZED(Int)

  init() {
    self = .eFoo
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .eFoo
    case 1: self = .eBar
    case 2: self = .eBaz
    case 3: self = .eExtra
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  init?(name: String) {
    switch name {
    case "eFoo": self = .eFoo
    case "eBar": self = .eBar
    case "eBaz": self = .eBaz
    case "eExtra": self = .eExtra
    default: return nil
    }
  }

  init?(jsonName: String) {
    switch jsonName {
    case "E_FOO": self = .eFoo
    case "E_BAR": self = .eBar
    case "E_BAZ": self = .eBaz
    case "E_EXTRA": self = .eExtra
    default: return nil
    }
  }

  init?(protoName: String) {
    switch protoName {
    case "E_FOO": self = .eFoo
    case "E_BAR": self = .eBar
    case "E_BAZ": self = .eBaz
    case "E_EXTRA": self = .eExtra
    default: return nil
    }
  }

  var rawValue: Int {
    get {
      switch self {
      case .eFoo: return 0
      case .eBar: return 1
      case .eBaz: return 2
      case .eExtra: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }
  }

  var json: String {
    get {
      switch self {
      case .eFoo: return "\"E_FOO\""
      case .eBar: return "\"E_BAR\""
      case .eBaz: return "\"E_BAZ\""
      case .eExtra: return "\"E_EXTRA\""
      case .UNRECOGNIZED(let i): return String(i)
      }
    }
  }

  var hashValue: Int { return rawValue }

  var debugDescription: String {
    get {
      switch self {
      case .eFoo: return ".eFoo"
      case .eBar: return ".eBar"
      case .eBaz: return ".eBaz"
      case .eExtra: return ".eExtra"
      case .UNRECOGNIZED(let v): return ".UNRECOGNIZED(\(v))"
      }
    }
  }

}

struct Proto3PreserveUnknownEnumUnittest_MyMessage: SwiftProtobuf.Message, SwiftProtobuf.Proto3Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  public var swiftClassName: String {return "Proto3PreserveUnknownEnumUnittest_MyMessage"}
  public var protoMessageName: String {return "MyMessage"}
  public var protoPackageName: String {return "proto3_preserve_unknown_enum_unittest"}
  public static let _protobuf_fieldNames: FieldNameMap = [
    1: .same(proto: "e", swift: "e"),
    2: .unique(proto: "repeated_e", json: "repeatedE", swift: "repeatedE"),
    3: .unique(proto: "repeated_packed_e", json: "repeatedPackedE", swift: "repeatedPackedE"),
    4: .unique(proto: "repeated_packed_unexpected_e", json: "repeatedPackedUnexpectedE", swift: "repeatedPackedUnexpectedE"),
    5: .unique(proto: "oneof_e_1", json: "oneofE1", swift: "oneofE1"),
    6: .unique(proto: "oneof_e_2", json: "oneofE2", swift: "oneofE2"),
  ]


  enum OneOf_O: ExpressibleByNilLiteral, SwiftProtobuf.OneofEnum {
    case oneofE1(Proto3PreserveUnknownEnumUnittest_MyEnum)
    case oneofE2(Proto3PreserveUnknownEnumUnittest_MyEnum)
    case None

    static func ==(lhs: Proto3PreserveUnknownEnumUnittest_MyMessage.OneOf_O, rhs: Proto3PreserveUnknownEnumUnittest_MyMessage.OneOf_O) -> Bool {
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
        var value = Proto3PreserveUnknownEnumUnittest_MyEnum()
        try setter.decodeSingularField(fieldType: Proto3PreserveUnknownEnumUnittest_MyEnum.self, value: &value)
        self = .oneofE1(value)
      case 6:
        var value = Proto3PreserveUnknownEnumUnittest_MyEnum()
        try setter.decodeSingularField(fieldType: Proto3PreserveUnknownEnumUnittest_MyEnum.self, value: &value)
        self = .oneofE2(value)
      default:
        self = .None
      }
    }

    public func traverse(visitor: SwiftProtobuf.Visitor, start: Int, end: Int) throws {
      switch self {
      case .oneofE1(let v):
        if start <= 5 && 5 < end {
          try visitor.visitSingularField(fieldType: Proto3PreserveUnknownEnumUnittest_MyEnum.self, value: v, fieldNumber: 5)
        }
      case .oneofE2(let v):
        if start <= 6 && 6 < end {
          try visitor.visitSingularField(fieldType: Proto3PreserveUnknownEnumUnittest_MyEnum.self, value: v, fieldNumber: 6)
        }
      case .None:
        break
      }
    }
  }

  var e: Proto3PreserveUnknownEnumUnittest_MyEnum = Proto3PreserveUnknownEnumUnittest_MyEnum.foo

  var repeatedE: [Proto3PreserveUnknownEnumUnittest_MyEnum] = []

  var repeatedPackedE: [Proto3PreserveUnknownEnumUnittest_MyEnum] = []

  ///   not packed
  var repeatedPackedUnexpectedE: [Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra] = []

  var oneofE1: Proto3PreserveUnknownEnumUnittest_MyEnum {
    get {
      if case .oneofE1(let v) = o {
        return v
      }
      return Proto3PreserveUnknownEnumUnittest_MyEnum.foo
    }
    set {
      o = .oneofE1(newValue)
    }
  }

  public var o: Proto3PreserveUnknownEnumUnittest_MyMessage.OneOf_O = .None

  var oneofE2: Proto3PreserveUnknownEnumUnittest_MyEnum {
    get {
      if case .oneofE2(let v) = o {
        return v
      }
      return Proto3PreserveUnknownEnumUnittest_MyEnum.foo
    }
    set {
      o = .oneofE2(newValue)
    }
  }

  init() {}

  public mutating func _protoc_generated_decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
    switch protoFieldNumber {
    case 1: try setter.decodeSingularField(fieldType: Proto3PreserveUnknownEnumUnittest_MyEnum.self, value: &e)
    case 2: try setter.decodeRepeatedField(fieldType: Proto3PreserveUnknownEnumUnittest_MyEnum.self, value: &repeatedE)
    case 3: try setter.decodeRepeatedField(fieldType: Proto3PreserveUnknownEnumUnittest_MyEnum.self, value: &repeatedPackedE)
    case 4: try setter.decodeRepeatedField(fieldType: Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra.self, value: &repeatedPackedUnexpectedE)
    case 5, 6: try o.decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
    default: break
    }
  }

  public func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
    if e != Proto3PreserveUnknownEnumUnittest_MyEnum.foo {
      try visitor.visitSingularField(fieldType: Proto3PreserveUnknownEnumUnittest_MyEnum.self, value: e, fieldNumber: 1)
    }
    if !repeatedE.isEmpty {
      try visitor.visitPackedField(fieldType: Proto3PreserveUnknownEnumUnittest_MyEnum.self, value: repeatedE, fieldNumber: 2)
    }
    if !repeatedPackedE.isEmpty {
      try visitor.visitPackedField(fieldType: Proto3PreserveUnknownEnumUnittest_MyEnum.self, value: repeatedPackedE, fieldNumber: 3)
    }
    if !repeatedPackedUnexpectedE.isEmpty {
      try visitor.visitPackedField(fieldType: Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra.self, value: repeatedPackedUnexpectedE, fieldNumber: 4)
    }
    try o.traverse(visitor: visitor, start: 5, end: 7)
  }

  public func _protoc_generated_isEqualTo(other: Proto3PreserveUnknownEnumUnittest_MyMessage) -> Bool {
    if e != other.e {return false}
    if repeatedE != other.repeatedE {return false}
    if repeatedPackedE != other.repeatedPackedE {return false}
    if repeatedPackedUnexpectedE != other.repeatedPackedUnexpectedE {return false}
    if o != other.o {return false}
    return true
  }
}

struct Proto3PreserveUnknownEnumUnittest_MyMessagePlusExtra: SwiftProtobuf.Message, SwiftProtobuf.Proto3Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  public var swiftClassName: String {return "Proto3PreserveUnknownEnumUnittest_MyMessagePlusExtra"}
  public var protoMessageName: String {return "MyMessagePlusExtra"}
  public var protoPackageName: String {return "proto3_preserve_unknown_enum_unittest"}
  public static let _protobuf_fieldNames: FieldNameMap = [
    1: .same(proto: "e", swift: "e"),
    2: .unique(proto: "repeated_e", json: "repeatedE", swift: "repeatedE"),
    3: .unique(proto: "repeated_packed_e", json: "repeatedPackedE", swift: "repeatedPackedE"),
    4: .unique(proto: "repeated_packed_unexpected_e", json: "repeatedPackedUnexpectedE", swift: "repeatedPackedUnexpectedE"),
    5: .unique(proto: "oneof_e_1", json: "oneofE1", swift: "oneofE1"),
    6: .unique(proto: "oneof_e_2", json: "oneofE2", swift: "oneofE2"),
  ]


  enum OneOf_O: ExpressibleByNilLiteral, SwiftProtobuf.OneofEnum {
    case oneofE1(Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra)
    case oneofE2(Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra)
    case None

    static func ==(lhs: Proto3PreserveUnknownEnumUnittest_MyMessagePlusExtra.OneOf_O, rhs: Proto3PreserveUnknownEnumUnittest_MyMessagePlusExtra.OneOf_O) -> Bool {
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
        var value = Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra()
        try setter.decodeSingularField(fieldType: Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra.self, value: &value)
        self = .oneofE1(value)
      case 6:
        var value = Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra()
        try setter.decodeSingularField(fieldType: Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra.self, value: &value)
        self = .oneofE2(value)
      default:
        self = .None
      }
    }

    public func traverse(visitor: SwiftProtobuf.Visitor, start: Int, end: Int) throws {
      switch self {
      case .oneofE1(let v):
        if start <= 5 && 5 < end {
          try visitor.visitSingularField(fieldType: Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra.self, value: v, fieldNumber: 5)
        }
      case .oneofE2(let v):
        if start <= 6 && 6 < end {
          try visitor.visitSingularField(fieldType: Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra.self, value: v, fieldNumber: 6)
        }
      case .None:
        break
      }
    }
  }

  var e: Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra = Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra.eFoo

  var repeatedE: [Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra] = []

  var repeatedPackedE: [Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra] = []

  var repeatedPackedUnexpectedE: [Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra] = []

  var oneofE1: Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra {
    get {
      if case .oneofE1(let v) = o {
        return v
      }
      return Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra.eFoo
    }
    set {
      o = .oneofE1(newValue)
    }
  }

  public var o: Proto3PreserveUnknownEnumUnittest_MyMessagePlusExtra.OneOf_O = .None

  var oneofE2: Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra {
    get {
      if case .oneofE2(let v) = o {
        return v
      }
      return Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra.eFoo
    }
    set {
      o = .oneofE2(newValue)
    }
  }

  init() {}

  public mutating func _protoc_generated_decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
    switch protoFieldNumber {
    case 1: try setter.decodeSingularField(fieldType: Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra.self, value: &e)
    case 2: try setter.decodeRepeatedField(fieldType: Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra.self, value: &repeatedE)
    case 3: try setter.decodeRepeatedField(fieldType: Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra.self, value: &repeatedPackedE)
    case 4: try setter.decodeRepeatedField(fieldType: Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra.self, value: &repeatedPackedUnexpectedE)
    case 5, 6: try o.decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
    default: break
    }
  }

  public func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
    if e != Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra.eFoo {
      try visitor.visitSingularField(fieldType: Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra.self, value: e, fieldNumber: 1)
    }
    if !repeatedE.isEmpty {
      try visitor.visitPackedField(fieldType: Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra.self, value: repeatedE, fieldNumber: 2)
    }
    if !repeatedPackedE.isEmpty {
      try visitor.visitPackedField(fieldType: Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra.self, value: repeatedPackedE, fieldNumber: 3)
    }
    if !repeatedPackedUnexpectedE.isEmpty {
      try visitor.visitPackedField(fieldType: Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra.self, value: repeatedPackedUnexpectedE, fieldNumber: 4)
    }
    try o.traverse(visitor: visitor, start: 5, end: 7)
  }

  public func _protoc_generated_isEqualTo(other: Proto3PreserveUnknownEnumUnittest_MyMessagePlusExtra) -> Bool {
    if e != other.e {return false}
    if repeatedE != other.repeatedE {return false}
    if repeatedPackedE != other.repeatedPackedE {return false}
    if repeatedPackedUnexpectedE != other.repeatedPackedUnexpectedE {return false}
    if o != other.o {return false}
    return true
  }
}
