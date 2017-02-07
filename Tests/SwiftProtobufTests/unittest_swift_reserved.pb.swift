/*
 * DO NOT EDIT.
 *
 * Generated by protoc and protoc-gen-swift.
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


struct ProtobufUnittest_SwiftReservedTest: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  public var swiftClassName: String {return "ProtobufUnittest_SwiftReservedTest"}
  public var protoMessageName: String {return "SwiftReservedTest"}
  public var protoPackageName: String {return "protobuf_unittest"}
  public static let _protobuf_fieldNames = FieldNameMap()

  public var unknown = SwiftProtobuf.UnknownStorage()

  enum Enum: SwiftProtobuf.Enum {
    typealias RawValue = Int
    case double // = 1
    case json_ // = 2
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
      case 2: self = .json_
      case 3: self = .`class`
      case 4: self = .___
      case 5: self = .self_
      case 6: self = .type
      default: return nil
      }
    }

    init?(name: String) {
      switch name {
      case "double": self = .double
      case "json_": self = .json_
      case "class": self = .`class`
      case "___": self = .___
      case "self_": self = .self_
      case "type": self = .type
      default: return nil
      }
    }

    init?(jsonName: String) {
      switch jsonName {
      case "DOUBLE": self = .double
      case "JSON": self = .json_
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
      case "JSON": self = .json_
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
        case .json_: return 2
        case .`class`: return 3
        case .___: return 4
        case .self_: return 5
        case .type: return 6
        }
      }
    }

    var json: String {
      get {
        switch self {
        case .double: return "\"DOUBLE\""
        case .json_: return "\"JSON\""
        case .`class`: return "\"CLASS\""
        case .___: return "\"_\""
        case .self_: return "\"SELF\""
        case .type: return "\"TYPE\""
        }
      }
    }

    var hashValue: Int { return rawValue }

    var debugDescription: String {
      get {
        switch self {
        case .double: return ".double"
        case .json_: return ".json_"
        case .`class`: return ".class"
        case .___: return ".___"
        case .self_: return ".self_"
        case .type: return ".type"
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

    init?(name: String) {
      switch name {
      case "a": self = .a
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

    var json: String {
      get {
        switch self {
        case .a: return "\"a\""
        }
      }
    }

    var hashValue: Int { return rawValue }

    var debugDescription: String {
      get {
        switch self {
        case .a: return ".a"
        }
      }
    }

  }

  struct classMessage: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
    public var swiftClassName: String {return "ProtobufUnittest_SwiftReservedTest.classMessage"}
    public var protoMessageName: String {return "class"}
    public var protoPackageName: String {return "protobuf_unittest"}
    public static let _protobuf_fieldNames = FieldNameMap()

    public var unknown = SwiftProtobuf.UnknownStorage()

    init() {}

    public mutating func _protoc_generated_decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
    }

    public func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
      unknown.traverse(visitor: visitor)
    }

    public func _protoc_generated_isEqualTo(other: ProtobufUnittest_SwiftReservedTest.classMessage) -> Bool {
      if unknown != other.unknown {return false}
      return true
    }
  }

  struct TypeMessage: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
    public var swiftClassName: String {return "ProtobufUnittest_SwiftReservedTest.TypeMessage"}
    public var protoMessageName: String {return "Type"}
    public var protoPackageName: String {return "protobuf_unittest"}
    public static let _protobuf_fieldNames = FieldNameMap()

    public var unknown = SwiftProtobuf.UnknownStorage()

    init() {}

    public mutating func _protoc_generated_decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
    }

    public func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
      unknown.traverse(visitor: visitor)
    }

    public func _protoc_generated_isEqualTo(other: ProtobufUnittest_SwiftReservedTest.TypeMessage) -> Bool {
      if unknown != other.unknown {return false}
      return true
    }
  }

  struct isEqualMessage: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
    public var swiftClassName: String {return "ProtobufUnittest_SwiftReservedTest.isEqualMessage"}
    public var protoMessageName: String {return "isEqual"}
    public var protoPackageName: String {return "protobuf_unittest"}
    public static let _protobuf_fieldNames = FieldNameMap()

    public var unknown = SwiftProtobuf.UnknownStorage()

    init() {}

    public mutating func _protoc_generated_decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
    }

    public func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
      unknown.traverse(visitor: visitor)
    }

    public func _protoc_generated_isEqualTo(other: ProtobufUnittest_SwiftReservedTest.isEqualMessage) -> Bool {
      if unknown != other.unknown {return false}
      return true
    }
  }

  init() {}

  public mutating func _protoc_generated_decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
  }

  public func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
    unknown.traverse(visitor: visitor)
  }

  public func _protoc_generated_isEqualTo(other: ProtobufUnittest_SwiftReservedTest) -> Bool {
    if unknown != other.unknown {return false}
    return true
  }
}
