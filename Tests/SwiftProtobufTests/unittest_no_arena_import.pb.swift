/*
 * DO NOT EDIT.
 *
 * Generated by protoc and protoc-gen-swift.
 * Source: google/protobuf/unittest_no_arena_import.proto
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


struct Proto2ArenaUnittest_ImportNoArenaNestedMessage: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  public var swiftClassName: String {return "Proto2ArenaUnittest_ImportNoArenaNestedMessage"}
  public var protoMessageName: String {return "ImportNoArenaNestedMessage"}
  public var protoPackageName: String {return "proto2_arena_unittest"}
  public static let _protobuf_fieldNames: FieldNameMap = [
    1: .same(proto: "d", swift: "d"),
  ]

  public var unknown = SwiftProtobuf.UnknownStorage()

  private var _d: Int32? = nil
  var d: Int32 {
    get {return _d ?? 0}
    set {_d = newValue}
  }
  public var hasD: Bool {
    return _d != nil
  }
  public mutating func clearD() {
    return _d = nil
  }

  init() {}

  public mutating func _protoc_generated_decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
    switch protoFieldNumber {
    case 1: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufInt32.self, value: &_d)
    default: break
    }
  }

  public func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
    if let v = _d {
      try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufInt32.self, value: v, fieldNumber: 1)
    }
    unknown.traverse(visitor: visitor)
  }

  public func _protoc_generated_isEqualTo(other: Proto2ArenaUnittest_ImportNoArenaNestedMessage) -> Bool {
    if _d != other._d {return false}
    if unknown != other.unknown {return false}
    return true
  }
}
