/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: google/protobuf/unittest_arena.proto
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

struct Proto2ArenaUnittest_NestedMessage: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  var protoMessageName: String {return "NestedMessage"}
  var protoPackageName: String {return "proto2_arena_unittest"}
  static let _protobuf_fieldNames: FieldNameMap = [
    1: .same(proto: "d"),
  ]

  var unknownFields = SwiftProtobuf.UnknownStorage()

  private var _d: Int32? = nil
  var d: Int32 {
    get {return _d ?? 0}
    set {_d = newValue}
  }
  var hasD: Bool {
    return _d != nil
  }
  mutating func clearD() {
    return _d = nil
  }

  mutating func _protoc_generated_decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      try decodeField(decoder: &decoder, fieldNumber: fieldNumber)
    }
  }

  mutating func _protoc_generated_decodeField<D: SwiftProtobuf.Decoder>(decoder: inout D, fieldNumber: Int) throws {
    switch fieldNumber {
    case 1: try decoder.decodeSingularInt32Field(value: &_d)
    default: break
    }
  }

  func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
    if let v = _d {
      try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufInt32.self, value: v, fieldNumber: 1)
    }
    unknownFields.traverse(visitor: visitor)
  }

  func _protoc_generated_isEqualTo(other: Proto2ArenaUnittest_NestedMessage) -> Bool {
    if _d != other._d {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

struct Proto2ArenaUnittest_ArenaMessage: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  var protoMessageName: String {return "ArenaMessage"}
  var protoPackageName: String {return "proto2_arena_unittest"}
  static let _protobuf_fieldNames: FieldNameMap = [
    1: .unique(proto: "repeated_nested_message", json: "repeatedNestedMessage"),
    2: .unique(proto: "repeated_import_no_arena_message", json: "repeatedImportNoArenaMessage"),
  ]

  var unknownFields = SwiftProtobuf.UnknownStorage()

  var repeatedNestedMessage: [Proto2ArenaUnittest_NestedMessage] = []

  var repeatedImportNoArenaMessage: [Proto2ArenaUnittest_ImportNoArenaNestedMessage] = []

  mutating func _protoc_generated_decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      try decodeField(decoder: &decoder, fieldNumber: fieldNumber)
    }
  }

  mutating func _protoc_generated_decodeField<D: SwiftProtobuf.Decoder>(decoder: inout D, fieldNumber: Int) throws {
    switch fieldNumber {
    case 1: try decoder.decodeRepeatedMessageField(value: &repeatedNestedMessage)
    case 2: try decoder.decodeRepeatedMessageField(value: &repeatedImportNoArenaMessage)
    default: break
    }
  }

  func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
    if !repeatedNestedMessage.isEmpty {
      try visitor.visitRepeatedMessageField(value: repeatedNestedMessage, fieldNumber: 1)
    }
    if !repeatedImportNoArenaMessage.isEmpty {
      try visitor.visitRepeatedMessageField(value: repeatedImportNoArenaMessage, fieldNumber: 2)
    }
    unknownFields.traverse(visitor: visitor)
  }

  func _protoc_generated_isEqualTo(other: Proto2ArenaUnittest_ArenaMessage) -> Bool {
    if repeatedNestedMessage != other.repeatedNestedMessage {return false}
    if repeatedImportNoArenaMessage != other.repeatedImportNoArenaMessage {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
