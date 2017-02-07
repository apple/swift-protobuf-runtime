/*
 * DO NOT EDIT.
 *
 * Generated by protoc and protoc-gen-swift.
 * Source: google/protobuf/compiler/plugin.proto
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

//  Author: kenton@google.com (Kenton Varda)
// 
//  WARNING:  The plugin interface is currently EXPERIMENTAL and is subject to
//    change.
// 
//  protoc (aka the Protocol Compiler) can be extended via plugins.  A plugin is
//  just a program that reads a CodeGeneratorRequest from stdin and writes a
//  CodeGeneratorResponse to stdout.
// 
//  Plugins written using C++ can use google/protobuf/compiler/plugin.h instead
//  of dealing with the raw protocol defined here.
// 
//  A plugin executable needs only to be placed somewhere in the path.  The
//  plugin should be named "protoc-gen-$NAME", and will then be used when the
//  flag "--${NAME}_out" is passed to protoc.

import Foundation
import SwiftProtobuf


///   The version number of protocol compiler.
public struct Google_Protobuf_Compiler_Version: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  public var swiftClassName: String {return "Google_Protobuf_Compiler_Version"}
  public var protoMessageName: String {return "Version"}
  public var protoPackageName: String {return "google.protobuf.compiler"}
  public static let _protobuf_fieldNames: FieldNameMap = [
    1: .same(proto: "major", swift: "major"),
    2: .same(proto: "minor", swift: "minor"),
    3: .same(proto: "patch", swift: "patch"),
    4: .same(proto: "suffix", swift: "suffix"),
  ]

  public var unknown = SwiftProtobuf.UnknownStorage()

  private var _major: Int32? = nil
  public var major: Int32 {
    get {return _major ?? 0}
    set {_major = newValue}
  }
  public var hasMajor: Bool {
    return _major != nil
  }
  public mutating func clearMajor() {
    return _major = nil
  }

  private var _minor: Int32? = nil
  public var minor: Int32 {
    get {return _minor ?? 0}
    set {_minor = newValue}
  }
  public var hasMinor: Bool {
    return _minor != nil
  }
  public mutating func clearMinor() {
    return _minor = nil
  }

  private var _patch: Int32? = nil
  public var patch: Int32 {
    get {return _patch ?? 0}
    set {_patch = newValue}
  }
  public var hasPatch: Bool {
    return _patch != nil
  }
  public mutating func clearPatch() {
    return _patch = nil
  }

  ///   A suffix for alpha, beta or rc release, e.g., "alpha-1", "rc2". It should
  ///   be empty for mainline stable releases.
  private var _suffix: String? = nil
  public var suffix: String {
    get {return _suffix ?? ""}
    set {_suffix = newValue}
  }
  public var hasSuffix: Bool {
    return _suffix != nil
  }
  public mutating func clearSuffix() {
    return _suffix = nil
  }

  public init() {}

  public mutating func _protoc_generated_decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
    switch protoFieldNumber {
    case 1: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufInt32.self, value: &_major)
    case 2: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufInt32.self, value: &_minor)
    case 3: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufInt32.self, value: &_patch)
    case 4: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: &_suffix)
    default: break
    }
  }

  public func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
    if let v = _major {
      try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufInt32.self, value: v, fieldNumber: 1)
    }
    if let v = _minor {
      try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufInt32.self, value: v, fieldNumber: 2)
    }
    if let v = _patch {
      try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufInt32.self, value: v, fieldNumber: 3)
    }
    if let v = _suffix {
      try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: v, fieldNumber: 4)
    }
    unknown.traverse(visitor: visitor)
  }

  public func _protoc_generated_isEqualTo(other: Google_Protobuf_Compiler_Version) -> Bool {
    if _major != other._major {return false}
    if _minor != other._minor {return false}
    if _patch != other._patch {return false}
    if _suffix != other._suffix {return false}
    if unknown != other.unknown {return false}
    return true
  }
}

///   An encoded CodeGeneratorRequest is written to the plugin's stdin.
public struct Google_Protobuf_Compiler_CodeGeneratorRequest: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  public var swiftClassName: String {return "Google_Protobuf_Compiler_CodeGeneratorRequest"}
  public var protoMessageName: String {return "CodeGeneratorRequest"}
  public var protoPackageName: String {return "google.protobuf.compiler"}
  public static let _protobuf_fieldNames: FieldNameMap = [
    1: .unique(proto: "file_to_generate", json: "fileToGenerate", swift: "fileToGenerate"),
    2: .same(proto: "parameter", swift: "parameter"),
    15: .unique(proto: "proto_file", json: "protoFile", swift: "protoFile"),
    3: .unique(proto: "compiler_version", json: "compilerVersion", swift: "compilerVersion"),
  ]

  private class _StorageClass {
    typealias ExtendedMessage = Google_Protobuf_Compiler_CodeGeneratorRequest
    var unknown = SwiftProtobuf.UnknownStorage()
    var _fileToGenerate: [String] = []
    var _parameter: String? = nil
    var _protoFile: [Google_Protobuf_FileDescriptorProto] = []
    var _compilerVersion: Google_Protobuf_Compiler_Version? = nil

    init() {}

    func decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
      switch protoFieldNumber {
      case 1: try setter.decodeRepeatedField(fieldType: SwiftProtobuf.ProtobufString.self, value: &_fileToGenerate)
      case 2: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: &_parameter)
      case 15: try setter.decodeRepeatedMessageField(fieldType: Google_Protobuf_FileDescriptorProto.self, value: &_protoFile)
      case 3: try setter.decodeSingularMessageField(fieldType: Google_Protobuf_Compiler_Version.self, value: &_compilerVersion)
      default: break
      }
    }

    func traverse(visitor: SwiftProtobuf.Visitor) throws {
      if !_fileToGenerate.isEmpty {
        try visitor.visitRepeatedField(fieldType: SwiftProtobuf.ProtobufString.self, value: _fileToGenerate, fieldNumber: 1)
      }
      if let v = _parameter {
        try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: v, fieldNumber: 2)
      }
      if let v = _compilerVersion {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
      if !_protoFile.isEmpty {
        try visitor.visitRepeatedMessageField(value: _protoFile, fieldNumber: 15)
      }
      unknown.traverse(visitor: visitor)
    }

    func isEqualTo(other: _StorageClass) -> Bool {
      if _fileToGenerate != other._fileToGenerate {return false}
      if _parameter != other._parameter {return false}
      if _protoFile != other._protoFile {return false}
      if _compilerVersion != other._compilerVersion {return false}
      if unknown != other.unknown {return false}
      return true
    }

    func copy() -> _StorageClass {
      let clone = _StorageClass()
      clone.unknown = unknown
      clone._fileToGenerate = _fileToGenerate
      clone._parameter = _parameter
      clone._protoFile = _protoFile
      clone._compilerVersion = _compilerVersion
      return clone
    }
  }

  private var _storage = _StorageClass()

  public var unknown: SwiftProtobuf.UnknownStorage {
    get {return _storage.unknown}
    set {_storage.unknown = newValue}
  }

  ///   The .proto files that were explicitly listed on the command-line.  The
  ///   code generator should generate code only for these files.  Each file's
  ///   descriptor will be included in proto_file, below.
  public var fileToGenerate: [String] {
    get {return _storage._fileToGenerate}
    set {_uniqueStorage()._fileToGenerate = newValue}
  }

  ///   The generator parameter passed on the command-line.
  public var parameter: String {
    get {return _storage._parameter ?? ""}
    set {_uniqueStorage()._parameter = newValue}
  }
  public var hasParameter: Bool {
    return _storage._parameter != nil
  }
  public mutating func clearParameter() {
    return _storage._parameter = nil
  }

  ///   FileDescriptorProtos for all files in files_to_generate and everything
  ///   they import.  The files will appear in topological order, so each file
  ///   appears before any file that imports it.
  ///  
  ///   protoc guarantees that all proto_files will be written after
  ///   the fields above, even though this is not technically guaranteed by the
  ///   protobuf wire format.  This theoretically could allow a plugin to stream
  ///   in the FileDescriptorProtos and handle them one by one rather than read
  ///   the entire set into memory at once.  However, as of this writing, this
  ///   is not similarly optimized on protoc's end -- it will store all fields in
  ///   memory at once before sending them to the plugin.
  public var protoFile: [Google_Protobuf_FileDescriptorProto] {
    get {return _storage._protoFile}
    set {_uniqueStorage()._protoFile = newValue}
  }

  ///   The version number of protocol compiler.
  public var compilerVersion: Google_Protobuf_Compiler_Version {
    get {return _storage._compilerVersion ?? Google_Protobuf_Compiler_Version()}
    set {_uniqueStorage()._compilerVersion = newValue}
  }
  public var hasCompilerVersion: Bool {
    return _storage._compilerVersion != nil
  }
  public mutating func clearCompilerVersion() {
    return _storage._compilerVersion = nil
  }

  public init() {}

  public mutating func _protoc_generated_decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
    try _uniqueStorage().decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
  }

  public func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
    try _storage.traverse(visitor: visitor)
  }

  public func _protoc_generated_isEqualTo(other: Google_Protobuf_Compiler_CodeGeneratorRequest) -> Bool {
    return _storage === other._storage || _storage.isEqualTo(other: other._storage)
  }

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _storage.copy()
    }
    return _storage
  }
}

///   The plugin writes an encoded CodeGeneratorResponse to stdout.
public struct Google_Protobuf_Compiler_CodeGeneratorResponse: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  public var swiftClassName: String {return "Google_Protobuf_Compiler_CodeGeneratorResponse"}
  public var protoMessageName: String {return "CodeGeneratorResponse"}
  public var protoPackageName: String {return "google.protobuf.compiler"}
  public static let _protobuf_fieldNames: FieldNameMap = [
    1: .same(proto: "error", swift: "error"),
    15: .same(proto: "file", swift: "file"),
  ]

  public var unknown = SwiftProtobuf.UnknownStorage()

  ///   Represents a single generated file.
  public struct File: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
    public var swiftClassName: String {return "Google_Protobuf_Compiler_CodeGeneratorResponse.File"}
    public var protoMessageName: String {return "File"}
    public var protoPackageName: String {return "google.protobuf.compiler"}
    public static let _protobuf_fieldNames: FieldNameMap = [
      1: .same(proto: "name", swift: "name"),
      2: .unique(proto: "insertion_point", json: "insertionPoint", swift: "insertionPoint"),
      15: .same(proto: "content", swift: "content"),
    ]

    public var unknown = SwiftProtobuf.UnknownStorage()

    ///   The file name, relative to the output directory.  The name must not
    ///   contain "." or ".." components and must be relative, not be absolute (so,
    ///   the file cannot lie outside the output directory).  "/" must be used as
    ///   the path separator, not "\".
    ///  
    ///   If the name is omitted, the content will be appended to the previous
    ///   file.  This allows the generator to break large files into small chunks,
    ///   and allows the generated text to be streamed back to protoc so that large
    ///   files need not reside completely in memory at one time.  Note that as of
    ///   this writing protoc does not optimize for this -- it will read the entire
    ///   CodeGeneratorResponse before writing files to disk.
    private var _name: String? = nil
    public var name: String {
      get {return _name ?? ""}
      set {_name = newValue}
    }
    public var hasName: Bool {
      return _name != nil
    }
    public mutating func clearName() {
      return _name = nil
    }

    ///   If non-empty, indicates that the named file should already exist, and the
    ///   content here is to be inserted into that file at a defined insertion
    ///   point.  This feature allows a code generator to extend the output
    ///   produced by another code generator.  The original generator may provide
    ///   insertion points by placing special annotations in the file that look
    ///   like:
    ///     @@protoc_insertion_point(NAME)
    ///   The annotation can have arbitrary text before and after it on the line,
    ///   which allows it to be placed in a comment.  NAME should be replaced with
    ///   an identifier naming the point -- this is what other generators will use
    ///   as the insertion_point.  Code inserted at this point will be placed
    ///   immediately above the line containing the insertion point (thus multiple
    ///   insertions to the same point will come out in the order they were added).
    ///   The double-@ is intended to make it unlikely that the generated code
    ///   could contain things that look like insertion points by accident.
    ///  
    ///   For example, the C++ code generator places the following line in the
    ///   .pb.h files that it generates:
    ///     // @@protoc_insertion_point(namespace_scope)
    ///   This line appears within the scope of the file's package namespace, but
    ///   outside of any particular class.  Another plugin can then specify the
    ///   insertion_point "namespace_scope" to generate additional classes or
    ///   other declarations that should be placed in this scope.
    ///  
    ///   Note that if the line containing the insertion point begins with
    ///   whitespace, the same whitespace will be added to every line of the
    ///   inserted text.  This is useful for languages like Python, where
    ///   indentation matters.  In these languages, the insertion point comment
    ///   should be indented the same amount as any inserted code will need to be
    ///   in order to work correctly in that context.
    ///  
    ///   The code generator that generates the initial file and the one which
    ///   inserts into it must both run as part of a single invocation of protoc.
    ///   Code generators are executed in the order in which they appear on the
    ///   command line.
    ///  
    ///   If |insertion_point| is present, |name| must also be present.
    private var _insertionPoint: String? = nil
    public var insertionPoint: String {
      get {return _insertionPoint ?? ""}
      set {_insertionPoint = newValue}
    }
    public var hasInsertionPoint: Bool {
      return _insertionPoint != nil
    }
    public mutating func clearInsertionPoint() {
      return _insertionPoint = nil
    }

    ///   The file contents.
    private var _content: String? = nil
    public var content: String {
      get {return _content ?? ""}
      set {_content = newValue}
    }
    public var hasContent: Bool {
      return _content != nil
    }
    public mutating func clearContent() {
      return _content = nil
    }

    public init() {}

    public mutating func _protoc_generated_decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
      switch protoFieldNumber {
      case 1: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: &_name)
      case 2: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: &_insertionPoint)
      case 15: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: &_content)
      default: break
      }
    }

    public func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
      if let v = _name {
        try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: v, fieldNumber: 1)
      }
      if let v = _insertionPoint {
        try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: v, fieldNumber: 2)
      }
      if let v = _content {
        try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: v, fieldNumber: 15)
      }
      unknown.traverse(visitor: visitor)
    }

    public func _protoc_generated_isEqualTo(other: Google_Protobuf_Compiler_CodeGeneratorResponse.File) -> Bool {
      if _name != other._name {return false}
      if _insertionPoint != other._insertionPoint {return false}
      if _content != other._content {return false}
      if unknown != other.unknown {return false}
      return true
    }
  }

  ///   Error message.  If non-empty, code generation failed.  The plugin process
  ///   should exit with status code zero even if it reports an error in this way.
  ///  
  ///   This should be used to indicate errors in .proto files which prevent the
  ///   code generator from generating correct code.  Errors which indicate a
  ///   problem in protoc itself -- such as the input CodeGeneratorRequest being
  ///   unparseable -- should be reported by writing a message to stderr and
  ///   exiting with a non-zero status code.
  private var _error: String? = nil
  public var error: String {
    get {return _error ?? ""}
    set {_error = newValue}
  }
  public var hasError: Bool {
    return _error != nil
  }
  public mutating func clearError() {
    return _error = nil
  }

  public var file: [Google_Protobuf_Compiler_CodeGeneratorResponse.File] = []

  public init() {}

  public mutating func _protoc_generated_decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
    switch protoFieldNumber {
    case 1: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: &_error)
    case 15: try setter.decodeRepeatedMessageField(fieldType: Google_Protobuf_Compiler_CodeGeneratorResponse.File.self, value: &file)
    default: break
    }
  }

  public func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
    if let v = _error {
      try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: v, fieldNumber: 1)
    }
    if !file.isEmpty {
      try visitor.visitRepeatedMessageField(value: file, fieldNumber: 15)
    }
    unknown.traverse(visitor: visitor)
  }

  public func _protoc_generated_isEqualTo(other: Google_Protobuf_Compiler_CodeGeneratorResponse) -> Bool {
    if _error != other._error {return false}
    if file != other.file {return false}
    if unknown != other.unknown {return false}
    return true
  }
}
