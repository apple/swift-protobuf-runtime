/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: test/test_names.proto
 *
 */

import Foundation
import SwiftProtobuf


public struct Swift_Protobuf_Test_NamesTest: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Swift_Protobuf_Test_NamesTest"}
  public var protoMessageName: String {return "NamesTest"}
  public var protoPackageName: String {return "swift.protobuf.test"}
  public var jsonFieldNames: [String: Int] {return [
    "httpRequest": 1,
    "url": 3,
    "aBC": 6,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "http_request": 1,
    "url": 3,
    "a_b_c": 6,
  ]}

  public var httpRequest: Int32 = 0

  public var url: Int32 = 0

  public var aBC: Int32 = 0

  public init() {}

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 1: handled = try setter.decodeSingularField(fieldType: ProtobufInt32.self, value: &httpRequest)
    case 3: handled = try setter.decodeSingularField(fieldType: ProtobufInt32.self, value: &url)
    case 6: handled = try setter.decodeSingularField(fieldType: ProtobufInt32.self, value: &aBC)
    default:
      handled = false
    }
    return handled
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if httpRequest != 0 {
      try visitor.visitSingularField(fieldType: ProtobufInt32.self, value: httpRequest, protoFieldNumber: 1, protoFieldName: "http_request", jsonFieldName: "httpRequest", swiftFieldName: "httpRequest")
    }
    if url != 0 {
      try visitor.visitSingularField(fieldType: ProtobufInt32.self, value: url, protoFieldNumber: 3, protoFieldName: "url", jsonFieldName: "url", swiftFieldName: "url")
    }
    if aBC != 0 {
      try visitor.visitSingularField(fieldType: ProtobufInt32.self, value: aBC, protoFieldNumber: 6, protoFieldName: "a_b_c", jsonFieldName: "aBC", swiftFieldName: "aBC")
    }
  }

  public func _protoc_generated_isEqualTo(other: Swift_Protobuf_Test_NamesTest) -> Bool {
    if httpRequest != other.httpRequest {return false}
    if url != other.url {return false}
    if aBC != other.aBC {return false}
    return true
  }
}

public struct Swift_Protobuf_Test_NamesTest2: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Swift_Protobuf_Test_NamesTest2"}
  public var protoMessageName: String {return "NamesTest2"}
  public var protoPackageName: String {return "swift.protobuf.test"}
  public var jsonFieldNames: [String: Int] {return [
    "HTTPRequest": 2,
    "URL": 4,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "HTTPRequest": 2,
    "URL": 4,
  ]}

  public var httprequest: Int32 = 0

  public var url: Int32 = 0

  public init() {}

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 2: handled = try setter.decodeSingularField(fieldType: ProtobufInt32.self, value: &httprequest)
    case 4: handled = try setter.decodeSingularField(fieldType: ProtobufInt32.self, value: &url)
    default:
      handled = false
    }
    return handled
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if httprequest != 0 {
      try visitor.visitSingularField(fieldType: ProtobufInt32.self, value: httprequest, protoFieldNumber: 2, protoFieldName: "HTTPRequest", jsonFieldName: "HTTPRequest", swiftFieldName: "httprequest")
    }
    if url != 0 {
      try visitor.visitSingularField(fieldType: ProtobufInt32.self, value: url, protoFieldNumber: 4, protoFieldName: "URL", jsonFieldName: "URL", swiftFieldName: "url")
    }
  }

  public func _protoc_generated_isEqualTo(other: Swift_Protobuf_Test_NamesTest2) -> Bool {
    if httprequest != other.httprequest {return false}
    if url != other.url {return false}
    return true
  }
}

public struct Swift_Protobuf_Test_NamesTest3: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Swift_Protobuf_Test_NamesTest3"}
  public var protoMessageName: String {return "NamesTest3"}
  public var protoPackageName: String {return "swift.protobuf.test"}
  public var jsonFieldNames: [String: Int] {return [
    "Url": 5,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "Url": 5,
  ]}

  public var url: Int32 = 0

  public init() {}

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 5: handled = try setter.decodeSingularField(fieldType: ProtobufInt32.self, value: &url)
    default:
      handled = false
    }
    return handled
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if url != 0 {
      try visitor.visitSingularField(fieldType: ProtobufInt32.self, value: url, protoFieldNumber: 5, protoFieldName: "Url", jsonFieldName: "Url", swiftFieldName: "url")
    }
  }

  public func _protoc_generated_isEqualTo(other: Swift_Protobuf_Test_NamesTest3) -> Bool {
    if url != other.url {return false}
    return true
  }
}
