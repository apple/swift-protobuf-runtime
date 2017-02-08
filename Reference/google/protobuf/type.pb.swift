/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: google/protobuf/type.proto
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

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _1: SwiftProtobuf.ProtobufAPIVersion_1 {}
  typealias Version = _1
}

///   The syntax in which a protocol buffer element is defined.
enum Google_Protobuf_Syntax: SwiftProtobuf.Enum {
  typealias RawValue = Int

  ///   Syntax `proto2`.
  case proto2 // = 0

  ///   Syntax `proto3`.
  case proto3 // = 1
  case UNRECOGNIZED(Int)

  init() {
    self = .proto2
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .proto2
    case 1: self = .proto3
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  init?(name: String) {
    switch name {
    case "proto2": self = .proto2
    case "proto3": self = .proto3
    default: return nil
    }
  }

  init?(jsonName: String) {
    switch jsonName {
    case "SYNTAX_PROTO2": self = .proto2
    case "SYNTAX_PROTO3": self = .proto3
    default: return nil
    }
  }

  init?(protoName: String) {
    switch protoName {
    case "SYNTAX_PROTO2": self = .proto2
    case "SYNTAX_PROTO3": self = .proto3
    default: return nil
    }
  }

  var rawValue: Int {
    get {
      switch self {
      case .proto2: return 0
      case .proto3: return 1
      case .UNRECOGNIZED(let i): return i
      }
    }
  }

  var json: String {
    get {
      switch self {
      case .proto2: return "\"SYNTAX_PROTO2\""
      case .proto3: return "\"SYNTAX_PROTO3\""
      case .UNRECOGNIZED(let i): return String(i)
      }
    }
  }

  var hashValue: Int { return rawValue }

  var debugDescription: String {
    get {
      switch self {
      case .proto2: return ".proto2"
      case .proto3: return ".proto3"
      case .UNRECOGNIZED(let v): return ".UNRECOGNIZED(\(v))"
      }
    }
  }

}

///   A protocol buffer message type.
struct Google_Protobuf_Type: SwiftProtobuf.Message, SwiftProtobuf.Proto3Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  public var swiftClassName: String {return "Google_Protobuf_Type"}
  public var protoMessageName: String {return "Type"}
  public var protoPackageName: String {return "google.protobuf"}
  public static let _protobuf_fieldNames: FieldNameMap = [
    1: .same(proto: "name", swift: "name"),
    2: .same(proto: "fields", swift: "fields"),
    3: .same(proto: "oneofs", swift: "oneofs"),
    4: .same(proto: "options", swift: "options"),
    5: .unique(proto: "source_context", json: "sourceContext", swift: "sourceContext"),
    6: .same(proto: "syntax", swift: "syntax"),
  ]

  private class _StorageClass {
    typealias ExtendedMessage = Google_Protobuf_Type
    var _name: String = ""
    var _fields: [Google_Protobuf_Field] = []
    var _oneofs: [String] = []
    var _options: [Google_Protobuf_Option] = []
    var _sourceContext: Google_Protobuf_SourceContext? = nil
    var _syntax: Google_Protobuf_Syntax = Google_Protobuf_Syntax.proto2

    init() {}

    func decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
      switch protoFieldNumber {
      case 1: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: &_name)
      case 2: try setter.decodeRepeatedMessageField(fieldType: Google_Protobuf_Field.self, value: &_fields)
      case 3: try setter.decodeRepeatedField(fieldType: SwiftProtobuf.ProtobufString.self, value: &_oneofs)
      case 4: try setter.decodeRepeatedMessageField(fieldType: Google_Protobuf_Option.self, value: &_options)
      case 5: try setter.decodeSingularMessageField(fieldType: Google_Protobuf_SourceContext.self, value: &_sourceContext)
      case 6: try setter.decodeSingularField(fieldType: Google_Protobuf_Syntax.self, value: &_syntax)
      default: break
      }
    }

    func traverse(visitor: SwiftProtobuf.Visitor) throws {
      if _name != "" {
        try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: _name, fieldNumber: 1)
      }
      if !_fields.isEmpty {
        try visitor.visitRepeatedMessageField(value: _fields, fieldNumber: 2)
      }
      if !_oneofs.isEmpty {
        try visitor.visitRepeatedField(fieldType: SwiftProtobuf.ProtobufString.self, value: _oneofs, fieldNumber: 3)
      }
      if !_options.isEmpty {
        try visitor.visitRepeatedMessageField(value: _options, fieldNumber: 4)
      }
      if let v = _sourceContext {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
      if _syntax != Google_Protobuf_Syntax.proto2 {
        try visitor.visitSingularField(fieldType: Google_Protobuf_Syntax.self, value: _syntax, fieldNumber: 6)
      }
    }

    func isEqualTo(other: _StorageClass) -> Bool {
      if _name != other._name {return false}
      if _fields != other._fields {return false}
      if _oneofs != other._oneofs {return false}
      if _options != other._options {return false}
      if _sourceContext != other._sourceContext {return false}
      if _syntax != other._syntax {return false}
      return true
    }

    func copy() -> _StorageClass {
      let clone = _StorageClass()
      clone._name = _name
      clone._fields = _fields
      clone._oneofs = _oneofs
      clone._options = _options
      clone._sourceContext = _sourceContext
      clone._syntax = _syntax
      return clone
    }
  }

  private var _storage = _StorageClass()


  ///   The fully qualified message name.
  var name: String {
    get {return _storage._name}
    set {_uniqueStorage()._name = newValue}
  }

  ///   The list of fields.
  var fields: [Google_Protobuf_Field] {
    get {return _storage._fields}
    set {_uniqueStorage()._fields = newValue}
  }

  ///   The list of types appearing in `oneof` definitions in this type.
  var oneofs: [String] {
    get {return _storage._oneofs}
    set {_uniqueStorage()._oneofs = newValue}
  }

  ///   The protocol buffer options.
  var options: [Google_Protobuf_Option] {
    get {return _storage._options}
    set {_uniqueStorage()._options = newValue}
  }

  ///   The source context.
  var sourceContext: Google_Protobuf_SourceContext {
    get {return _storage._sourceContext ?? Google_Protobuf_SourceContext()}
    set {_uniqueStorage()._sourceContext = newValue}
  }
  public var hasSourceContext: Bool {
    return _storage._sourceContext != nil
  }
  public mutating func clearSourceContext() {
    return _storage._sourceContext = nil
  }

  ///   The source syntax.
  var syntax: Google_Protobuf_Syntax {
    get {return _storage._syntax}
    set {_uniqueStorage()._syntax = newValue}
  }

  init() {}

  public mutating func _protoc_generated_decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
    try _uniqueStorage().decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
  }

  public func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
    try _storage.traverse(visitor: visitor)
  }

  public func _protoc_generated_isEqualTo(other: Google_Protobuf_Type) -> Bool {
    return _storage === other._storage || _storage.isEqualTo(other: other._storage)
  }

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _storage.copy()
    }
    return _storage
  }
}

///   A single field of a message type.
struct Google_Protobuf_Field: SwiftProtobuf.Message, SwiftProtobuf.Proto3Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  public var swiftClassName: String {return "Google_Protobuf_Field"}
  public var protoMessageName: String {return "Field"}
  public var protoPackageName: String {return "google.protobuf"}
  public static let _protobuf_fieldNames: FieldNameMap = [
    1: .same(proto: "kind", swift: "kind"),
    2: .same(proto: "cardinality", swift: "cardinality"),
    3: .same(proto: "number", swift: "number"),
    4: .same(proto: "name", swift: "name"),
    6: .unique(proto: "type_url", json: "typeUrl", swift: "typeURL"),
    7: .unique(proto: "oneof_index", json: "oneofIndex", swift: "oneofIndex"),
    8: .same(proto: "packed", swift: "packed"),
    9: .same(proto: "options", swift: "options"),
    10: .unique(proto: "json_name", json: "jsonName", swift: "jsonName"),
    11: .unique(proto: "default_value", json: "defaultValue", swift: "defaultValue"),
  ]


  ///   Basic field types.
  enum Kind: SwiftProtobuf.Enum {
    typealias RawValue = Int

    ///   Field type unknown.
    case typeUnknown // = 0

    ///   Field type double.
    case typeDouble // = 1

    ///   Field type float.
    case typeFloat // = 2

    ///   Field type int64.
    case typeInt64 // = 3

    ///   Field type uint64.
    case typeUint64 // = 4

    ///   Field type int32.
    case typeInt32 // = 5

    ///   Field type fixed64.
    case typeFixed64 // = 6

    ///   Field type fixed32.
    case typeFixed32 // = 7

    ///   Field type bool.
    case typeBool // = 8

    ///   Field type string.
    case typeString // = 9

    ///   Field type group. Proto2 syntax only, and deprecated.
    case typeGroup // = 10

    ///   Field type message.
    case typeMessage // = 11

    ///   Field type bytes.
    case typeBytes // = 12

    ///   Field type uint32.
    case typeUint32 // = 13

    ///   Field type enum.
    case typeEnum // = 14

    ///   Field type sfixed32.
    case typeSfixed32 // = 15

    ///   Field type sfixed64.
    case typeSfixed64 // = 16

    ///   Field type sint32.
    case typeSint32 // = 17

    ///   Field type sint64.
    case typeSint64 // = 18
    case UNRECOGNIZED(Int)

    init() {
      self = .typeUnknown
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .typeUnknown
      case 1: self = .typeDouble
      case 2: self = .typeFloat
      case 3: self = .typeInt64
      case 4: self = .typeUint64
      case 5: self = .typeInt32
      case 6: self = .typeFixed64
      case 7: self = .typeFixed32
      case 8: self = .typeBool
      case 9: self = .typeString
      case 10: self = .typeGroup
      case 11: self = .typeMessage
      case 12: self = .typeBytes
      case 13: self = .typeUint32
      case 14: self = .typeEnum
      case 15: self = .typeSfixed32
      case 16: self = .typeSfixed64
      case 17: self = .typeSint32
      case 18: self = .typeSint64
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    init?(name: String) {
      switch name {
      case "typeUnknown": self = .typeUnknown
      case "typeDouble": self = .typeDouble
      case "typeFloat": self = .typeFloat
      case "typeInt64": self = .typeInt64
      case "typeUint64": self = .typeUint64
      case "typeInt32": self = .typeInt32
      case "typeFixed64": self = .typeFixed64
      case "typeFixed32": self = .typeFixed32
      case "typeBool": self = .typeBool
      case "typeString": self = .typeString
      case "typeGroup": self = .typeGroup
      case "typeMessage": self = .typeMessage
      case "typeBytes": self = .typeBytes
      case "typeUint32": self = .typeUint32
      case "typeEnum": self = .typeEnum
      case "typeSfixed32": self = .typeSfixed32
      case "typeSfixed64": self = .typeSfixed64
      case "typeSint32": self = .typeSint32
      case "typeSint64": self = .typeSint64
      default: return nil
      }
    }

    init?(jsonName: String) {
      switch jsonName {
      case "TYPE_UNKNOWN": self = .typeUnknown
      case "TYPE_DOUBLE": self = .typeDouble
      case "TYPE_FLOAT": self = .typeFloat
      case "TYPE_INT64": self = .typeInt64
      case "TYPE_UINT64": self = .typeUint64
      case "TYPE_INT32": self = .typeInt32
      case "TYPE_FIXED64": self = .typeFixed64
      case "TYPE_FIXED32": self = .typeFixed32
      case "TYPE_BOOL": self = .typeBool
      case "TYPE_STRING": self = .typeString
      case "TYPE_GROUP": self = .typeGroup
      case "TYPE_MESSAGE": self = .typeMessage
      case "TYPE_BYTES": self = .typeBytes
      case "TYPE_UINT32": self = .typeUint32
      case "TYPE_ENUM": self = .typeEnum
      case "TYPE_SFIXED32": self = .typeSfixed32
      case "TYPE_SFIXED64": self = .typeSfixed64
      case "TYPE_SINT32": self = .typeSint32
      case "TYPE_SINT64": self = .typeSint64
      default: return nil
      }
    }

    init?(protoName: String) {
      switch protoName {
      case "TYPE_UNKNOWN": self = .typeUnknown
      case "TYPE_DOUBLE": self = .typeDouble
      case "TYPE_FLOAT": self = .typeFloat
      case "TYPE_INT64": self = .typeInt64
      case "TYPE_UINT64": self = .typeUint64
      case "TYPE_INT32": self = .typeInt32
      case "TYPE_FIXED64": self = .typeFixed64
      case "TYPE_FIXED32": self = .typeFixed32
      case "TYPE_BOOL": self = .typeBool
      case "TYPE_STRING": self = .typeString
      case "TYPE_GROUP": self = .typeGroup
      case "TYPE_MESSAGE": self = .typeMessage
      case "TYPE_BYTES": self = .typeBytes
      case "TYPE_UINT32": self = .typeUint32
      case "TYPE_ENUM": self = .typeEnum
      case "TYPE_SFIXED32": self = .typeSfixed32
      case "TYPE_SFIXED64": self = .typeSfixed64
      case "TYPE_SINT32": self = .typeSint32
      case "TYPE_SINT64": self = .typeSint64
      default: return nil
      }
    }

    var rawValue: Int {
      get {
        switch self {
        case .typeUnknown: return 0
        case .typeDouble: return 1
        case .typeFloat: return 2
        case .typeInt64: return 3
        case .typeUint64: return 4
        case .typeInt32: return 5
        case .typeFixed64: return 6
        case .typeFixed32: return 7
        case .typeBool: return 8
        case .typeString: return 9
        case .typeGroup: return 10
        case .typeMessage: return 11
        case .typeBytes: return 12
        case .typeUint32: return 13
        case .typeEnum: return 14
        case .typeSfixed32: return 15
        case .typeSfixed64: return 16
        case .typeSint32: return 17
        case .typeSint64: return 18
        case .UNRECOGNIZED(let i): return i
        }
      }
    }

    var json: String {
      get {
        switch self {
        case .typeUnknown: return "\"TYPE_UNKNOWN\""
        case .typeDouble: return "\"TYPE_DOUBLE\""
        case .typeFloat: return "\"TYPE_FLOAT\""
        case .typeInt64: return "\"TYPE_INT64\""
        case .typeUint64: return "\"TYPE_UINT64\""
        case .typeInt32: return "\"TYPE_INT32\""
        case .typeFixed64: return "\"TYPE_FIXED64\""
        case .typeFixed32: return "\"TYPE_FIXED32\""
        case .typeBool: return "\"TYPE_BOOL\""
        case .typeString: return "\"TYPE_STRING\""
        case .typeGroup: return "\"TYPE_GROUP\""
        case .typeMessage: return "\"TYPE_MESSAGE\""
        case .typeBytes: return "\"TYPE_BYTES\""
        case .typeUint32: return "\"TYPE_UINT32\""
        case .typeEnum: return "\"TYPE_ENUM\""
        case .typeSfixed32: return "\"TYPE_SFIXED32\""
        case .typeSfixed64: return "\"TYPE_SFIXED64\""
        case .typeSint32: return "\"TYPE_SINT32\""
        case .typeSint64: return "\"TYPE_SINT64\""
        case .UNRECOGNIZED(let i): return String(i)
        }
      }
    }

    var hashValue: Int { return rawValue }

    var debugDescription: String {
      get {
        switch self {
        case .typeUnknown: return ".typeUnknown"
        case .typeDouble: return ".typeDouble"
        case .typeFloat: return ".typeFloat"
        case .typeInt64: return ".typeInt64"
        case .typeUint64: return ".typeUint64"
        case .typeInt32: return ".typeInt32"
        case .typeFixed64: return ".typeFixed64"
        case .typeFixed32: return ".typeFixed32"
        case .typeBool: return ".typeBool"
        case .typeString: return ".typeString"
        case .typeGroup: return ".typeGroup"
        case .typeMessage: return ".typeMessage"
        case .typeBytes: return ".typeBytes"
        case .typeUint32: return ".typeUint32"
        case .typeEnum: return ".typeEnum"
        case .typeSfixed32: return ".typeSfixed32"
        case .typeSfixed64: return ".typeSfixed64"
        case .typeSint32: return ".typeSint32"
        case .typeSint64: return ".typeSint64"
        case .UNRECOGNIZED(let v): return ".UNRECOGNIZED(\(v))"
        }
      }
    }

  }

  ///   Whether a field is optional, required, or repeated.
  enum Cardinality: SwiftProtobuf.Enum {
    typealias RawValue = Int

    ///   For fields with unknown cardinality.
    case unknown // = 0

    ///   For optional fields.
    case `optional` // = 1

    ///   For required fields. Proto2 syntax only.
    case `required` // = 2

    ///   For repeated fields.
    case repeated // = 3
    case UNRECOGNIZED(Int)

    init() {
      self = .unknown
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unknown
      case 1: self = .`optional`
      case 2: self = .`required`
      case 3: self = .repeated
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    init?(name: String) {
      switch name {
      case "unknown": self = .unknown
      case "optional": self = .`optional`
      case "required": self = .`required`
      case "repeated": self = .repeated
      default: return nil
      }
    }

    init?(jsonName: String) {
      switch jsonName {
      case "CARDINALITY_UNKNOWN": self = .unknown
      case "CARDINALITY_OPTIONAL": self = .`optional`
      case "CARDINALITY_REQUIRED": self = .`required`
      case "CARDINALITY_REPEATED": self = .repeated
      default: return nil
      }
    }

    init?(protoName: String) {
      switch protoName {
      case "CARDINALITY_UNKNOWN": self = .unknown
      case "CARDINALITY_OPTIONAL": self = .`optional`
      case "CARDINALITY_REQUIRED": self = .`required`
      case "CARDINALITY_REPEATED": self = .repeated
      default: return nil
      }
    }

    var rawValue: Int {
      get {
        switch self {
        case .unknown: return 0
        case .`optional`: return 1
        case .`required`: return 2
        case .repeated: return 3
        case .UNRECOGNIZED(let i): return i
        }
      }
    }

    var json: String {
      get {
        switch self {
        case .unknown: return "\"CARDINALITY_UNKNOWN\""
        case .`optional`: return "\"CARDINALITY_OPTIONAL\""
        case .`required`: return "\"CARDINALITY_REQUIRED\""
        case .repeated: return "\"CARDINALITY_REPEATED\""
        case .UNRECOGNIZED(let i): return String(i)
        }
      }
    }

    var hashValue: Int { return rawValue }

    var debugDescription: String {
      get {
        switch self {
        case .unknown: return ".unknown"
        case .`optional`: return ".optional"
        case .`required`: return ".required"
        case .repeated: return ".repeated"
        case .UNRECOGNIZED(let v): return ".UNRECOGNIZED(\(v))"
        }
      }
    }

  }

  ///   The field type.
  var kind: Google_Protobuf_Field.Kind = Google_Protobuf_Field.Kind.typeUnknown

  ///   The field cardinality.
  var cardinality: Google_Protobuf_Field.Cardinality = Google_Protobuf_Field.Cardinality.unknown

  ///   The field number.
  var number: Int32 = 0

  ///   The field name.
  var name: String = ""

  ///   The field type URL, without the scheme, for message or enumeration
  ///   types. Example: `"type.googleapis.com/google.protobuf.Timestamp"`.
  var typeURL: String = ""

  ///   The index of the field type in `Type.oneofs`, for message or enumeration
  ///   types. The first type has index 1; zero means the type is not in the list.
  var oneofIndex: Int32 = 0

  ///   Whether to use alternative packed wire representation.
  var packed: Bool = false

  ///   The protocol buffer options.
  var options: [Google_Protobuf_Option] = []

  ///   The field JSON name.
  var jsonName: String = ""

  ///   The string value of the default value of this field. Proto2 syntax only.
  var defaultValue: String = ""

  init() {}

  public mutating func _protoc_generated_decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
    switch protoFieldNumber {
    case 1: try setter.decodeSingularField(fieldType: Google_Protobuf_Field.Kind.self, value: &kind)
    case 2: try setter.decodeSingularField(fieldType: Google_Protobuf_Field.Cardinality.self, value: &cardinality)
    case 3: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufInt32.self, value: &number)
    case 4: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: &name)
    case 6: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: &typeURL)
    case 7: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufInt32.self, value: &oneofIndex)
    case 8: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufBool.self, value: &packed)
    case 9: try setter.decodeRepeatedMessageField(fieldType: Google_Protobuf_Option.self, value: &options)
    case 10: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: &jsonName)
    case 11: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: &defaultValue)
    default: break
    }
  }

  public func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
    if kind != Google_Protobuf_Field.Kind.typeUnknown {
      try visitor.visitSingularField(fieldType: Google_Protobuf_Field.Kind.self, value: kind, fieldNumber: 1)
    }
    if cardinality != Google_Protobuf_Field.Cardinality.unknown {
      try visitor.visitSingularField(fieldType: Google_Protobuf_Field.Cardinality.self, value: cardinality, fieldNumber: 2)
    }
    if number != 0 {
      try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufInt32.self, value: number, fieldNumber: 3)
    }
    if name != "" {
      try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: name, fieldNumber: 4)
    }
    if typeURL != "" {
      try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: typeURL, fieldNumber: 6)
    }
    if oneofIndex != 0 {
      try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufInt32.self, value: oneofIndex, fieldNumber: 7)
    }
    if packed != false {
      try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufBool.self, value: packed, fieldNumber: 8)
    }
    if !options.isEmpty {
      try visitor.visitRepeatedMessageField(value: options, fieldNumber: 9)
    }
    if jsonName != "" {
      try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: jsonName, fieldNumber: 10)
    }
    if defaultValue != "" {
      try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: defaultValue, fieldNumber: 11)
    }
  }

  public func _protoc_generated_isEqualTo(other: Google_Protobuf_Field) -> Bool {
    if kind != other.kind {return false}
    if cardinality != other.cardinality {return false}
    if number != other.number {return false}
    if name != other.name {return false}
    if typeURL != other.typeURL {return false}
    if oneofIndex != other.oneofIndex {return false}
    if packed != other.packed {return false}
    if options != other.options {return false}
    if jsonName != other.jsonName {return false}
    if defaultValue != other.defaultValue {return false}
    return true
  }
}

///   Enum type definition.
struct Google_Protobuf_Enum: SwiftProtobuf.Message, SwiftProtobuf.Proto3Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  public var swiftClassName: String {return "Google_Protobuf_Enum"}
  public var protoMessageName: String {return "Enum"}
  public var protoPackageName: String {return "google.protobuf"}
  public static let _protobuf_fieldNames: FieldNameMap = [
    1: .same(proto: "name", swift: "name"),
    2: .same(proto: "enumvalue", swift: "enumvalue"),
    3: .same(proto: "options", swift: "options"),
    4: .unique(proto: "source_context", json: "sourceContext", swift: "sourceContext"),
    5: .same(proto: "syntax", swift: "syntax"),
  ]

  private class _StorageClass {
    typealias ExtendedMessage = Google_Protobuf_Enum
    var _name: String = ""
    var _enumvalue: [Google_Protobuf_EnumValue] = []
    var _options: [Google_Protobuf_Option] = []
    var _sourceContext: Google_Protobuf_SourceContext? = nil
    var _syntax: Google_Protobuf_Syntax = Google_Protobuf_Syntax.proto2

    init() {}

    func decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
      switch protoFieldNumber {
      case 1: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: &_name)
      case 2: try setter.decodeRepeatedMessageField(fieldType: Google_Protobuf_EnumValue.self, value: &_enumvalue)
      case 3: try setter.decodeRepeatedMessageField(fieldType: Google_Protobuf_Option.self, value: &_options)
      case 4: try setter.decodeSingularMessageField(fieldType: Google_Protobuf_SourceContext.self, value: &_sourceContext)
      case 5: try setter.decodeSingularField(fieldType: Google_Protobuf_Syntax.self, value: &_syntax)
      default: break
      }
    }

    func traverse(visitor: SwiftProtobuf.Visitor) throws {
      if _name != "" {
        try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: _name, fieldNumber: 1)
      }
      if !_enumvalue.isEmpty {
        try visitor.visitRepeatedMessageField(value: _enumvalue, fieldNumber: 2)
      }
      if !_options.isEmpty {
        try visitor.visitRepeatedMessageField(value: _options, fieldNumber: 3)
      }
      if let v = _sourceContext {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
      if _syntax != Google_Protobuf_Syntax.proto2 {
        try visitor.visitSingularField(fieldType: Google_Protobuf_Syntax.self, value: _syntax, fieldNumber: 5)
      }
    }

    func isEqualTo(other: _StorageClass) -> Bool {
      if _name != other._name {return false}
      if _enumvalue != other._enumvalue {return false}
      if _options != other._options {return false}
      if _sourceContext != other._sourceContext {return false}
      if _syntax != other._syntax {return false}
      return true
    }

    func copy() -> _StorageClass {
      let clone = _StorageClass()
      clone._name = _name
      clone._enumvalue = _enumvalue
      clone._options = _options
      clone._sourceContext = _sourceContext
      clone._syntax = _syntax
      return clone
    }
  }

  private var _storage = _StorageClass()


  ///   Enum type name.
  var name: String {
    get {return _storage._name}
    set {_uniqueStorage()._name = newValue}
  }

  ///   Enum value definitions.
  var enumvalue: [Google_Protobuf_EnumValue] {
    get {return _storage._enumvalue}
    set {_uniqueStorage()._enumvalue = newValue}
  }

  ///   Protocol buffer options.
  var options: [Google_Protobuf_Option] {
    get {return _storage._options}
    set {_uniqueStorage()._options = newValue}
  }

  ///   The source context.
  var sourceContext: Google_Protobuf_SourceContext {
    get {return _storage._sourceContext ?? Google_Protobuf_SourceContext()}
    set {_uniqueStorage()._sourceContext = newValue}
  }
  public var hasSourceContext: Bool {
    return _storage._sourceContext != nil
  }
  public mutating func clearSourceContext() {
    return _storage._sourceContext = nil
  }

  ///   The source syntax.
  var syntax: Google_Protobuf_Syntax {
    get {return _storage._syntax}
    set {_uniqueStorage()._syntax = newValue}
  }

  init() {}

  public mutating func _protoc_generated_decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
    try _uniqueStorage().decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
  }

  public func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
    try _storage.traverse(visitor: visitor)
  }

  public func _protoc_generated_isEqualTo(other: Google_Protobuf_Enum) -> Bool {
    return _storage === other._storage || _storage.isEqualTo(other: other._storage)
  }

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _storage.copy()
    }
    return _storage
  }
}

///   Enum value definition.
struct Google_Protobuf_EnumValue: SwiftProtobuf.Message, SwiftProtobuf.Proto3Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  public var swiftClassName: String {return "Google_Protobuf_EnumValue"}
  public var protoMessageName: String {return "EnumValue"}
  public var protoPackageName: String {return "google.protobuf"}
  public static let _protobuf_fieldNames: FieldNameMap = [
    1: .same(proto: "name", swift: "name"),
    2: .same(proto: "number", swift: "number"),
    3: .same(proto: "options", swift: "options"),
  ]


  ///   Enum value name.
  var name: String = ""

  ///   Enum value number.
  var number: Int32 = 0

  ///   Protocol buffer options.
  var options: [Google_Protobuf_Option] = []

  init() {}

  public mutating func _protoc_generated_decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
    switch protoFieldNumber {
    case 1: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: &name)
    case 2: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufInt32.self, value: &number)
    case 3: try setter.decodeRepeatedMessageField(fieldType: Google_Protobuf_Option.self, value: &options)
    default: break
    }
  }

  public func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
    if name != "" {
      try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: name, fieldNumber: 1)
    }
    if number != 0 {
      try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufInt32.self, value: number, fieldNumber: 2)
    }
    if !options.isEmpty {
      try visitor.visitRepeatedMessageField(value: options, fieldNumber: 3)
    }
  }

  public func _protoc_generated_isEqualTo(other: Google_Protobuf_EnumValue) -> Bool {
    if name != other.name {return false}
    if number != other.number {return false}
    if options != other.options {return false}
    return true
  }
}

///   A protocol buffer option, which can be attached to a message, field,
///   enumeration, etc.
struct Google_Protobuf_Option: SwiftProtobuf.Message, SwiftProtobuf.Proto3Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  public var swiftClassName: String {return "Google_Protobuf_Option"}
  public var protoMessageName: String {return "Option"}
  public var protoPackageName: String {return "google.protobuf"}
  public static let _protobuf_fieldNames: FieldNameMap = [
    1: .same(proto: "name", swift: "name"),
    2: .same(proto: "value", swift: "value"),
  ]

  private class _StorageClass {
    typealias ExtendedMessage = Google_Protobuf_Option
    var _name: String = ""
    var _value: Google_Protobuf_Any? = nil

    init() {}

    func decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
      switch protoFieldNumber {
      case 1: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: &_name)
      case 2: try setter.decodeSingularMessageField(fieldType: Google_Protobuf_Any.self, value: &_value)
      default: break
      }
    }

    func traverse(visitor: SwiftProtobuf.Visitor) throws {
      if _name != "" {
        try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: _name, fieldNumber: 1)
      }
      if let v = _value {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
    }

    func isEqualTo(other: _StorageClass) -> Bool {
      if _name != other._name {return false}
      if _value != other._value {return false}
      return true
    }

    func copy() -> _StorageClass {
      let clone = _StorageClass()
      clone._name = _name
      clone._value = _value
      return clone
    }
  }

  private var _storage = _StorageClass()


  ///   The option's name. For protobuf built-in options (options defined in
  ///   descriptor.proto), this is the short name. For example, `"map_entry"`.
  ///   For custom options, it should be the fully-qualified name. For example,
  ///   `"google.api.http"`.
  var name: String {
    get {return _storage._name}
    set {_uniqueStorage()._name = newValue}
  }

  ///   The option's value packed in an Any message. If the value is a primitive,
  ///   the corresponding wrapper type defined in google/protobuf/wrappers.proto
  ///   should be used. If the value is an enum, it should be stored as an int32
  ///   value using the google.protobuf.Int32Value type.
  var value: Google_Protobuf_Any {
    get {return _storage._value ?? Google_Protobuf_Any()}
    set {_uniqueStorage()._value = newValue}
  }
  public var hasValue: Bool {
    return _storage._value != nil
  }
  public mutating func clearValue() {
    return _storage._value = nil
  }

  init() {}

  public mutating func _protoc_generated_decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
    try _uniqueStorage().decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
  }

  public func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
    try _storage.traverse(visitor: visitor)
  }

  public func _protoc_generated_isEqualTo(other: Google_Protobuf_Option) -> Bool {
    return _storage === other._storage || _storage.isEqualTo(other: other._storage)
  }

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _storage.copy()
    }
    return _storage
  }
}
