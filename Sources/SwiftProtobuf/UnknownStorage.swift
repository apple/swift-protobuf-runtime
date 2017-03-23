// Sources/SwiftProtobuf/UnknownStorage.swift - Handling unknown fields
//
// Copyright (c) 2014 - 2016 Apple Inc. and the project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See LICENSE.txt for license information:
// https://github.com/apple/swift-protobuf/blob/master/LICENSE.txt
//
// -----------------------------------------------------------------------------
///
/// Proto2 binary coding requires storing and recoding of unknown fields.
/// This simple support class handles that requirement.  A property of this type
/// is compiled into every proto2 message.
///
// -----------------------------------------------------------------------------

import Foundation

/// Contains any unknown fields in a decoded message (that is, fields that were
/// sent on the wire but were not recognized by the generated message
/// implementation).
public struct UnknownStorage: Equatable {
  /// The raw protocol buffer binary-encoded bytes that represent the unknown
  /// fields of a decoded message.
  public private(set) var data = Data()

  public static func ==(lhs: UnknownStorage, rhs: UnknownStorage) -> Bool {
    return lhs.data == rhs.data
  }

  public init() {}

  internal mutating func append(protobufData: Data) {
    data.append(protobufData)
  }

  public func traverse<V: Visitor>(visitor: inout V) throws {
    try visitor.visitUnknown(bytes: data)
  }
}
