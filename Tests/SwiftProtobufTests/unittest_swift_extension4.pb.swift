/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: unittest_swift_extension4.proto
 *
 */

//  Protos/unittest_swift_extension4.proto - test proto
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
// / Test naming of extensions that differ only in proto package. This is a
// / clone of unittest_swift_extension[23].proto, but with a different proto
// / package, different extension numbers, and a Swift prefix option.
// /
//  -----------------------------------------------------------------------------

import Foundation
import SwiftProtobuf


struct Ext4MyMessage: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  public var swiftClassName: String {return "Ext4MyMessage"}
  public var protoMessageName: String {return "MyMessage"}
  public var protoPackageName: String {return "protobuf_unittest.extend4"}
  public static let _protobuf_fieldNames = FieldNameMap()

  public var unknown = SwiftProtobuf.UnknownStorage()

  struct C: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
    public var swiftClassName: String {return "Ext4MyMessage.C"}
    public var protoMessageName: String {return "C"}
    public var protoPackageName: String {return "protobuf_unittest.extend4"}
    public static let _protobuf_fieldNames: FieldNameMap = [
      1410: .same(proto: "c", swift: "c"),
    ]

    public var unknown = SwiftProtobuf.UnknownStorage()

    private var _c: Int64? = nil
    var c: Int64 {
      get {return _c ?? 0}
      set {_c = newValue}
    }
    public var hasC: Bool {
      return _c != nil
    }
    public mutating func clearC() {
      return _c = nil
    }

    init() {}

    public mutating func _protoc_generated_decodeField(setter: inout SwiftProtobuf.FieldDecoder, protoFieldNumber: Int) throws {
      switch protoFieldNumber {
      case 1410: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufInt64.self, value: &_c)
      default: break
      }
    }

    public func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
      if let v = _c {
        try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufInt64.self, value: v, fieldNumber: 1410)
      }
      unknown.traverse(visitor: visitor)
    }

    public func _protoc_generated_isEqualTo(other: Ext4MyMessage.C) -> Bool {
      if _c != other._c {return false}
      if unknown != other.unknown {return false}
      return true
    }
  }

  struct Extensions {

    static let b = SwiftProtobuf.MessageExtension<OptionalExtensionField<SwiftProtobuf.ProtobufString>, ProtobufUnittest_Extend_Foo.Bar.Baz>(protoFieldNumber: 410, fieldNames: .same(proto: "[protobuf_unittest.extend4.MyMessage.b]", swift: "Ext4MyMessage_b"), defaultValue: "")

    static let c = SwiftProtobuf.MessageExtension<OptionalGroupExtensionField<Ext4MyMessage.C>, ProtobufUnittest_Extend_Foo.Bar.Baz>(protoFieldNumber: 411, fieldNames: .same(proto: "[protobuf_unittest.extend4.MyMessage.C]", swift: "Ext4MyMessage_c"), defaultValue: Ext4MyMessage.C())
  }

  init() {}

  public mutating func _protoc_generated_decodeField(setter: inout SwiftProtobuf.FieldDecoder, protoFieldNumber: Int) throws {
  }

  public func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
    unknown.traverse(visitor: visitor)
  }

  public func _protoc_generated_isEqualTo(other: Ext4MyMessage) -> Bool {
    if unknown != other.unknown {return false}
    return true
  }
}

struct Ext4C: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  public var swiftClassName: String {return "Ext4C"}
  public var protoMessageName: String {return "C"}
  public var protoPackageName: String {return "protobuf_unittest.extend4"}
  public static let _protobuf_fieldNames: FieldNameMap = [
    1420: .same(proto: "c", swift: "c"),
  ]

  public var unknown = SwiftProtobuf.UnknownStorage()

  private var _c: Int64? = nil
  var c: Int64 {
    get {return _c ?? 0}
    set {_c = newValue}
  }
  public var hasC: Bool {
    return _c != nil
  }
  public mutating func clearC() {
    return _c = nil
  }

  init() {}

  public mutating func _protoc_generated_decodeField(setter: inout SwiftProtobuf.FieldDecoder, protoFieldNumber: Int) throws {
    switch protoFieldNumber {
    case 1420: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufInt64.self, value: &_c)
    default: break
    }
  }

  public func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
    if let v = _c {
      try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufInt64.self, value: v, fieldNumber: 1420)
    }
    unknown.traverse(visitor: visitor)
  }

  public func _protoc_generated_isEqualTo(other: Ext4C) -> Bool {
    if _c != other._c {return false}
    if unknown != other.unknown {return false}
    return true
  }
}

let Ext4Extensions_b = SwiftProtobuf.MessageExtension<OptionalExtensionField<SwiftProtobuf.ProtobufString>, ProtobufUnittest_Extend_Foo.Bar.Baz>(protoFieldNumber: 420, fieldNames: .same(proto: "[protobuf_unittest.extend4.b]", swift: "Ext4b"), defaultValue: "")

let Ext4Extensions_c = SwiftProtobuf.MessageExtension<OptionalGroupExtensionField<Ext4C>, ProtobufUnittest_Extend_Foo.Bar.Baz>(protoFieldNumber: 421, fieldNames: .same(proto: "[protobuf_unittest.extend4.C]", swift: "Ext4c"), defaultValue: Ext4C())

extension ProtobufUnittest_Extend_Foo.Bar.Baz {
  var Ext4MyMessage_b: String {
    get {return getExtensionValue(ext: Ext4MyMessage.Extensions.b) ?? ""}
    set {setExtensionValue(ext: Ext4MyMessage.Extensions.b, value: newValue)}
  }
  var hasExt4MyMessage_b: Bool {
    return hasExtensionValue(ext: Ext4MyMessage.Extensions.b)
  }
  mutating func clearExt4MyMessage_b() {
    clearExtensionValue(ext: Ext4MyMessage.Extensions.b)
  }
}

extension ProtobufUnittest_Extend_Foo.Bar.Baz {
  var Ext4MyMessage_c: Ext4MyMessage.C {
    get {return getExtensionValue(ext: Ext4MyMessage.Extensions.c) ?? Ext4MyMessage.C()}
    set {setExtensionValue(ext: Ext4MyMessage.Extensions.c, value: newValue)}
  }
  var hasExt4MyMessage_c: Bool {
    return hasExtensionValue(ext: Ext4MyMessage.Extensions.c)
  }
  mutating func clearExt4MyMessage_c() {
    clearExtensionValue(ext: Ext4MyMessage.Extensions.c)
  }
}

extension ProtobufUnittest_Extend_Foo.Bar.Baz {
  var Ext4b: String {
    get {return getExtensionValue(ext: Ext4Extensions_b) ?? ""}
    set {setExtensionValue(ext: Ext4Extensions_b, value: newValue)}
  }
  var hasExt4b: Bool {
    return hasExtensionValue(ext: Ext4Extensions_b)
  }
  mutating func clearExt4b() {
    clearExtensionValue(ext: Ext4Extensions_b)
  }
}

extension ProtobufUnittest_Extend_Foo.Bar.Baz {
  var Ext4c: Ext4C {
    get {return getExtensionValue(ext: Ext4Extensions_c) ?? Ext4C()}
    set {setExtensionValue(ext: Ext4Extensions_c, value: newValue)}
  }
  var hasExt4c: Bool {
    return hasExtensionValue(ext: Ext4Extensions_c)
  }
  mutating func clearExt4c() {
    clearExtensionValue(ext: Ext4Extensions_c)
  }
}

let Ext4UnittestSwiftExtension4_Extensions: SwiftProtobuf.ExtensionSet = [
  Ext4Extensions_b,
  Ext4Extensions_c,
  Ext4MyMessage.Extensions.b,
  Ext4MyMessage.Extensions.c
]
