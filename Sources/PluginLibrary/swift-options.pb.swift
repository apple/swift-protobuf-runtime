/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: swift-options.proto
 *
 */

import Foundation
import SwiftProtobuf


let Google_Protobuf_FileOptions_appleSwiftPrefix = ProtobufGenericMessageExtension<ProtobufOptionalField<ProtobufString>, Google_Protobuf_FileOptions>(protoFieldNumber: 50138, fieldNames: .unique(proto: "apple_swift_prefix", json: "appleSwiftPrefix", swift: "appleSwiftPrefix"), defaultValue: "")

extension Google_Protobuf_FileOptions {
  public var appleSwiftPrefix: String {
    get {return getExtensionValue(ext: Google_Protobuf_FileOptions_appleSwiftPrefix) ?? ""}
    set {setExtensionValue(ext: Google_Protobuf_FileOptions_appleSwiftPrefix, value: newValue)}
  }
  public var hasAppleSwiftPrefix: Bool {
    return hasExtensionValue(ext: Google_Protobuf_FileOptions_appleSwiftPrefix)
  }
  public mutating func clearAppleSwiftPrefix() {
    clearExtensionValue(ext: Google_Protobuf_FileOptions_appleSwiftPrefix)
  }
}

public let SwiftOptions_Extensions: ProtobufExtensionSet = [
  Google_Protobuf_FileOptions_appleSwiftPrefix
]
