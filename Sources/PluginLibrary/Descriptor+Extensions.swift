// Sources/PluginLibrary/Descriptor+Extensions.swift - Additions to Descriptor
//
// Copyright (c) 2014 - 2017 Apple Inc. and the project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See LICENSE.txt for license information:
// https://github.com/apple/swift-protobuf/blob/master/LICENSE.txt
//
// -----------------------------------------------------------------------------

import Foundation
import SwiftProtobuf

extension FileDescriptor: ProvidesSourceCodeLocation {
  // True if this file should perserve unknown enums within the enum.
  public var hasUnknownEnumPreservingSemantics: Bool {
    return syntax == .proto3
  }

  public var sourceCodeInfoLocation: Google_Protobuf_SourceCodeInfo.Location? {
    // google/protobuf's descriptor.cc says it should be an empty path.
    return sourceCodeInfoLocation(path: [])
  }
}

extension Descriptor: ProvidesLocationPath, ProvidesSourceCodeLocation {
  public func getLocationPath(path: inout [Int32]) {
    if let containingType = containingType {
      containingType.getLocationPath(path: &path)
      path.append(Google_Protobuf_DescriptorProto.FieldNumbers.nestedType)
    } else {
      path.append(Google_Protobuf_FileDescriptorProto.FieldNumbers.messageType)
    }
    path.append(Int32(index))
  }
}

extension EnumDescriptor: ProvidesLocationPath, ProvidesSourceCodeLocation {
  // True if this enum should perserve unknown enums within the enum.
  public var hasUnknownEnumPreservingSemantics: Bool {
    return file.hasUnknownEnumPreservingSemantics
  }

  public func getLocationPath(path: inout [Int32]) {
    if let containingType = containingType {
      containingType.getLocationPath(path: &path)
      path.append(Google_Protobuf_DescriptorProto.FieldNumbers.enumType)
    } else {
      path.append(Google_Protobuf_FileDescriptorProto.FieldNumbers.enumType)
    }
    path.append(Int32(index))
  }
}

extension EnumValueDescriptor: ProvidesLocationPath, ProvidesSourceCodeLocation {
  public weak var file: FileDescriptor! { return enumType.file }

  public func getLocationPath(path: inout [Int32]) {
    enumType.getLocationPath(path: &path)
    path.append(Google_Protobuf_EnumDescriptorProto.FieldNumbers.value)
    path.append(Int32(index))
  }
}

extension OneofDescriptor: ProvidesLocationPath, ProvidesSourceCodeLocation {
  public weak var file: FileDescriptor! { return containingType.file }

  public func getLocationPath(path: inout [Int32]) {
    containingType.getLocationPath(path: &path)
    path.append(Google_Protobuf_DescriptorProto.FieldNumbers.oneofDecl)
    path.append(Int32(index))
  }
}

extension FieldDescriptor: ProvidesLocationPath, ProvidesSourceCodeLocation {
  public func getLocationPath(path: inout [Int32]) {
    if isExtension {
      if let extensionScope = extensionScope {
        extensionScope.getLocationPath(path: &path)
        path.append(Google_Protobuf_DescriptorProto.FieldNumbers.extension)
      } else {
        path.append(Google_Protobuf_FileDescriptorProto.FieldNumbers.extension)
      }
    } else {
      containingType.getLocationPath(path: &path)
      path.append(Google_Protobuf_DescriptorProto.FieldNumbers.field)
    }
    path.append(Int32(index))
  }
}

extension ServiceDescriptor: ProvidesLocationPath, ProvidesSourceCodeLocation {
  public func getLocationPath(path: inout [Int32]) {
    path.append(Google_Protobuf_FileDescriptorProto.FieldNumbers.service)
    path.append(Int32(index))
  }
}

extension MethodDescriptor: ProvidesLocationPath, ProvidesSourceCodeLocation {
  public weak var file: FileDescriptor! { return service.file }

  public func getLocationPath(path: inout [Int32]) {
    service.getLocationPath(path: &path)
    path.append(Google_Protobuf_ServiceDescriptorProto.FieldNumbers.method)
    path.append(Int32(index))
  }
}