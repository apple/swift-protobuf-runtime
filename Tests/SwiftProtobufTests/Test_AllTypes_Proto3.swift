// Tests/SwiftProtobufTests/Test_AllTypes_Proto3.swift - Proto3 coding/decoding
//
// Copyright (c) 2014 - 2016 Apple Inc. and the project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See LICENSE.txt for license information:
// https://github.com/apple/swift-protobuf/blob/master/LICENSE.txt
//
// -----------------------------------------------------------------------------
///
/// Verify the binary coding/decoding for all field types in proto3.  This
/// attempts to exercise both valid and invalid input, including error and
/// boundary cases.  It also incidentally tests the type and names of generated
/// accessors.
///
// -----------------------------------------------------------------------------

import Foundation
import XCTest

class Test_AllTypes_Proto3: XCTestCase, PBTestHelpers {
    typealias MessageTestType = Proto3TestAllTypes

    // Custom decodeSucceeds that also does a round-trip through the Empty
    // message to make sure unknown fields are consistently preserved by proto2.
    func assertDecodeSucceeds(_ bytes: [UInt8], file: XCTestFileArgType = #file, line: UInt = #line, check: (MessageTestType) -> Bool) {
        baseAssertDecodeSucceeds(bytes, file: file, line: line, check: check)
        do {
            // Make sure unknown fields are preserved by empty message decode/encode
            let empty = try ProtobufUnittest_TestEmptyMessage(protobufBytes: bytes)
            do {
                let newBytes = try empty.serializeProtobufBytes()
                XCTAssertEqual(bytes, newBytes, "Empty decode/recode did not match", file: file, line: line)
            } catch let e {
                XCTFail("Reserializing empty threw an error \(e)", file: file, line: line)
            }
        } catch {
            XCTFail("Empty decoding threw an error", file: file, line: line)
        }
    }

    func assertDebugDescription(_ expected: String, file: XCTestFileArgType = #file, line: UInt = #line, configure: (inout MessageTestType) -> ()) {
        var m = MessageTestType()
        configure(&m)
        let actual = m.debugDescription
        XCTAssertEqual(actual, expected, file: file, line: line)
    }

    //
    // Singular types
    //
    func testEncoding_singleInt32() {
        assertEncode([8, 1]) {(o: inout MessageTestType) in o.singleInt32 = 1}
        assertEncode([8, 255, 255, 255, 255, 7]) {(o: inout MessageTestType) in o.singleInt32 = Int32.max}
        assertEncode([8, 128, 128, 128, 128, 248, 255, 255, 255, 255, 1]) {(o: inout MessageTestType) in o.singleInt32 = Int32.min}
        assertDecodeSucceeds([8, 1]) {(o: MessageTestType) in
            let t: Int32 = o.singleInt32
            return t == 1
        }
        assertDebugDescription("SwiftProtobufTests.Proto3TestAllTypes:\nsingle_int32: 1\n") {(o: inout MessageTestType) in o.singleInt32 = 1}
        assertDebugDescription("SwiftProtobufTests.Proto3TestAllTypes:\nsingle_int32: -2147483648\nsingle_uint32: 4294967295\n") {(o: inout MessageTestType) in
            o.singleInt32 = Int32.min
            o.singleUint32 = UInt32.max
        }
        assertDebugDescription("SwiftProtobufTests.Proto3TestAllTypes:\n") {(o: inout MessageTestType) in
            o.singleInt32 = 1
            o.singleInt32 = 0
        }

        // Technically, this overflows Int32, but we truncate and accept it.
        assertDecodeSucceeds([8, 255, 255, 255, 255, 255, 255, 1]) {$0.singleInt32 == -1}

        assertDecodeFails([8])

        assertDecodeFails([9, 57]) // Cannot use wire type 1
        assertDecodeFails([10, 58]) // Cannot use wire type 2
        assertDecodeFails([11, 59]) // Cannot use wire type 3
        assertDecodeFails([12, 60]) // Cannot use wire type 4
        assertDecodeFails([13, 61]) // Cannot use wire type 5
        assertDecodeFails([14, 62]) // Cannot use wire type 6
        assertDecodeFails([15, 63]) // Cannot use wire type 7
        assertDecodeFails([8, 188])
        assertDecodeFails([8])

        let empty = MessageTestType()
        var a = empty
        a.singleInt32 = 0
        XCTAssertEqual(a, empty)
        var b = empty
        b.singleInt32 = 1
        XCTAssertNotEqual(a, b)
        b.singleInt32 = 0
        XCTAssertEqual(a, b)
    }

    func testEncoding_singleInt64() {
        assertEncode([16, 1]) {(o: inout MessageTestType) in o.singleInt64 = 1}
        assertEncode([16, 255, 255, 255, 255, 255, 255, 255, 255, 127]) {(o: inout MessageTestType) in o.singleInt64 = Int64.max}
        assertEncode([16, 128, 128, 128, 128, 128, 128, 128, 128, 128, 1]) {(o: inout MessageTestType) in o.singleInt64 = Int64.min}
        assertDecodeSucceeds([16, 184, 156, 195, 145, 203, 1]) {(o: MessageTestType) in
            let t: Int64 = o.singleInt64 // Verify in-memory type
            return t == 54529150520
        }
        assertDebugDescription("SwiftProtobufTests.Proto3TestAllTypes:\nsingle_int64: 1\n") {(o: inout MessageTestType) in o.singleInt64 = 1}
        assertDecodeFails([16])
        assertDecodeFails([16, 184, 156, 195, 145, 203])
        assertDecodeFails([17, 81])
        assertDecodeFails([18, 82])
        assertDecodeFails([19, 83])
        assertDecodeFails([20, 84])
        assertDecodeFails([21, 85])
        assertDecodeFails([22, 86])
        assertDecodeFails([23, 87])

        let empty = MessageTestType()
        var a = empty
        a.singleInt64 = 0
        XCTAssertEqual(a, empty)
        var b = empty
        b.singleInt64 = 1
        XCTAssertNotEqual(a, b)
        b.singleInt64 = 0
        XCTAssertEqual(a, b)
    }

    func testEncoding_singleUint32() {
        assertEncode([24, 255, 255, 255, 255, 15]) {(o: inout MessageTestType) in o.singleUint32 = UInt32.max}
        assertDecodeSucceeds([24, 149, 88]) {(o: MessageTestType) in
            let t: UInt32 = o.singleUint32
            return t == 11285
        }
        assertDebugDescription("SwiftProtobufTests.Proto3TestAllTypes:\nsingle_uint32: 1\n") {(o: inout MessageTestType) in o.singleUint32 = 1}
        assertDecodeFails([24])
        assertDecodeFails([24, 149])
        assertDecodeFails([25, 105])
        assertDecodeFails([26, 106])
        assertDecodeFails([27, 107])
        assertDecodeFails([28, 108])
        assertDecodeFails([29, 109])
        assertDecodeFails([30, 110])
        assertDecodeFails([31, 111])

        let empty = MessageTestType()
        var a = empty
        a.singleUint32 = 0
        XCTAssertEqual(a, empty)
        XCTAssertEqual(try a.serializeProtobufBytes(), [])
        var b = empty
        b.singleUint32 = 1
        XCTAssertNotEqual(a, b)
        b.singleUint32 = 0
        XCTAssertEqual(a, b)
    }

    func testEncoding_singleUint64() throws {
        assertEncode([32, 255, 255, 255, 255, 255, 255, 255, 255, 255, 1]) {(o: inout MessageTestType) in o.singleUint64 = UInt64.max}
        assertDecodeSucceeds([32, 149, 7]) {(o: MessageTestType) in
            let t: UInt64 = o.singleUint64
            return t == 917
        }
        assertDebugDescription("SwiftProtobufTests.Proto3TestAllTypes:\nsingle_uint64: 1\n") {(o: inout MessageTestType) in o.singleUint64 = 1}
        assertDecodeFails([32])
        assertDecodeFails([32, 149])
        assertDecodeFails([32, 149, 190, 193, 230, 186, 233, 166, 219])
        assertDecodeFails([33])
        assertDecodeFails([33, 0])
        assertDecodeFails([33, 8, 0])
        assertDecodeFails([34])
        assertDecodeFails([34, 0])
        assertDecodeFails([34, 8, 0])
        assertDecodeFails([35])
        assertDecodeFails([35, 0])
        assertDecodeFails([35, 8, 0])
        assertDecodeFails([36])
        assertDecodeFails([36, 0])
        assertDecodeFails([36, 8, 0])
        assertDecodeFails([37])
        assertDecodeFails([37, 0])
        assertDecodeFails([37, 8, 0])
        assertDecodeFails([38])
        assertDecodeFails([38, 0])
        assertDecodeFails([38, 8, 0])
        assertDecodeFails([39])
        assertDecodeFails([39, 0])
        assertDecodeFails([39, 8, 0])

        let empty = MessageTestType()
        var a = empty
        a.singleUint64 = 0
        XCTAssertEqual(a, empty)
        XCTAssertEqual(try a.serializeProtobufBytes(), [])
        var b = empty
        b.singleUint64 = 1
        XCTAssertNotEqual(a, b)
        b.singleUint64 = 0
        XCTAssertEqual(a, b)
    }

    func testEncoding_singleSint32() {
        assertEncode([40, 254, 255, 255, 255, 15]) {(o: inout MessageTestType) in o.singleSint32 = Int32.max}
        assertEncode([40, 255, 255, 255, 255, 15]) {(o: inout MessageTestType) in o.singleSint32 = Int32.min}
        assertDecodeSucceeds([40, 0x81, 0x82, 0x80, 0x00]) {(o: MessageTestType) in
            let t: Int32 = o.singleSint32 // Verify in-memory type
            return t == -129
        }
        assertDecodeSucceeds([40, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x00]) {$0.singleSint32 == 0}
        assertDebugDescription("SwiftProtobufTests.Proto3TestAllTypes:\nsingle_sint32: 1\n") {(o: inout MessageTestType) in o.singleSint32 = 1}

        // Truncate on overflow
        assertDecodeSucceeds([40, 0xff, 0xff, 0xff, 0xff, 0xff, 0x7f]) {$0.singleSint32 == -2147483648}
        assertDecodeSucceeds([40, 0xfe, 0xff, 0xff, 0xff, 0xff, 0x7f]) {$0.singleSint32 == 2147483647}

        assertDecodeFails([40])
        assertDecodeFails([40, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00])
        assertDecodeFails([41])
        assertDecodeFails([41, 0])
        assertDecodeFails([42])
        assertDecodeFails([42, 0])
        assertDecodeFails([43])
        assertDecodeFails([43, 0])
        assertDecodeFails([44])
        assertDecodeFails([44, 0])
        assertDecodeFails([45])
        assertDecodeFails([45, 0])
        assertDecodeFails([46])
        assertDecodeFails([46, 0])
        assertDecodeFails([47])
        assertDecodeFails([47, 0])

        let empty = MessageTestType()
        var a = empty
        a.singleSint32 = 0
        XCTAssertEqual(a, empty)
        var b = empty
        b.singleSint32 = 1
        XCTAssertNotEqual(a, b)
        b.singleSint32 = 0
        XCTAssertEqual(a, b)
    }

    func testEncoding_singleSint64() {
        assertEncode([48, 254, 255, 255, 255, 255, 255, 255, 255, 255, 1]) {(o: inout MessageTestType) in o.singleSint64 = Int64.max}
        assertEncode([48, 255, 255, 255, 255, 255, 255, 255, 255, 255, 1]) {(o: inout MessageTestType) in o.singleSint64 = Int64.min}
        assertDecodeSucceeds([48, 139, 94]) {(o: MessageTestType) in
            let t: Int64 = o.singleSint64
            return t == -6022
        }
        assertDebugDescription("SwiftProtobufTests.Proto3TestAllTypes:\nsingle_sint64: 1\n") {(o: inout MessageTestType) in o.singleSint64 = 1}
        assertDecodeFails([48])
        assertDecodeFails([48, 139])
        assertDecodeFails([49])
        assertDecodeFails([49, 0])
        assertDecodeFails([50])
        assertDecodeFails([50, 0])
        assertDecodeFails([51])
        assertDecodeFails([51, 0])
        assertDecodeFails([52])
        assertDecodeFails([52, 0])
        assertDecodeFails([53])
        assertDecodeFails([53, 0])
        assertDecodeFails([54])
        assertDecodeFails([54, 0])
        assertDecodeFails([55])
        assertDecodeFails([55, 0])

        let empty = MessageTestType()
        var a = empty
        a.singleSint64 = 0
        XCTAssertEqual(a, empty)
        var b = empty
        b.singleSint64 = 1
        XCTAssertNotEqual(a, b)
        b.singleSint64 = 0
        XCTAssertEqual(a, b)
    }

    func testEncoding_singleFixed32() throws {
        assertEncode([61, 255, 255, 255, 255]) {(o: inout MessageTestType) in o.singleFixed32 = UInt32.max}
        assertDecodeSucceeds([61, 8, 12, 108, 1]) {(o: MessageTestType) in
            let t: UInt32 = o.singleFixed32
            return t == 23858184
        }
        assertDebugDescription("SwiftProtobufTests.Proto3TestAllTypes:\nsingle_fixed32: 1\n") {(o: inout MessageTestType) in o.singleFixed32 = 1}
        assertDecodeFails([61])
        assertDecodeFails([61, 255])
        assertDecodeFails([61, 255, 255])
        assertDecodeFails([61, 255, 255, 255])
        assertDecodeFails([56])
        assertDecodeFails([56, 0])
        assertDecodeFails([56, 0, 0, 0, 0])
        assertDecodeFails([57])
        assertDecodeFails([57, 0])
        assertDecodeFails([57, 0, 0, 0, 0])
        assertDecodeFails([58])
        assertDecodeFails([58, 0])
        assertDecodeFails([58, 0, 0, 0, 0])
        assertDecodeFails([59])
        assertDecodeFails([59, 0])
        assertDecodeFails([59, 0, 0, 0, 0])
        assertDecodeFails([60])
        assertDecodeFails([60, 0])
        assertDecodeFails([60, 0, 0, 0, 0])
        assertDecodeFails([62])
        assertDecodeFails([62, 0])
        assertDecodeFails([62, 0, 0, 0, 0])
        assertDecodeFails([63])
        assertDecodeFails([63, 0])
        assertDecodeFails([63, 0, 0, 0, 0])

        let empty = MessageTestType()
        var a = empty
        a.singleFixed32 = 0
        XCTAssertEqual(a, empty)
        XCTAssertEqual(try a.serializeProtobufBytes(), [])
        var b = empty
        b.singleFixed32 = 1
        XCTAssertNotEqual(a, b)
        b.singleFixed32 = 0
        XCTAssertEqual(a, b)
    }

    func testEncoding_singleFixed64() throws {
        assertEncode([65, 255, 255, 255, 255, 255, 255, 255, 255]) {(o: inout MessageTestType) in o.singleFixed64 = UInt64.max}
        assertDecodeSucceeds([65, 255, 255, 255, 255, 255, 255, 255, 255]) {(o: MessageTestType) in
            let t: UInt64 = o.singleFixed64 // Verify in-memory type
            return t == 18446744073709551615
        }
        assertDebugDescription("SwiftProtobufTests.Proto3TestAllTypes:\nsingle_fixed64: 1\n") {(o: inout MessageTestType) in o.singleFixed64 = 1}
        assertDecodeFails([65])
        assertDecodeFails([65, 255])
        assertDecodeFails([65, 255, 255])
        assertDecodeFails([65, 255, 255, 255])
        assertDecodeFails([65, 255, 255, 255, 255])
        assertDecodeFails([65, 255, 255, 255, 255, 255])
        assertDecodeFails([65, 255, 255, 255, 255, 255, 255])
        assertDecodeFails([65, 255, 255, 255, 255, 255, 255, 255])
        assertDecodeFails([64])
        assertDecodeFails([64, 0])
        assertDecodeFails([64, 0, 0, 0, 0, 0, 0, 0, 0])
        assertDecodeFails([66])
        assertDecodeFails([66, 0])
        assertDecodeFails([66, 0, 0, 0, 0, 0, 0, 0, 0])
        assertDecodeFails([67])
        assertDecodeFails([67, 0])
        assertDecodeFails([67, 0, 0, 0, 0, 0, 0, 0, 0])
        assertDecodeFails([68])
        assertDecodeFails([68, 0])
        assertDecodeFails([68, 0, 0, 0, 0, 0, 0, 0, 0])
        assertDecodeFails([69])
        assertDecodeFails([69, 0])
        assertDecodeFails([69, 0, 0, 0, 0, 0, 0, 0, 0])
        assertDecodeFails([69])
        assertDecodeFails([69, 0])
        assertDecodeFails([70, 0, 0, 0, 0, 0, 0, 0, 0])
        assertDecodeFails([71])
        assertDecodeFails([71, 0])
        assertDecodeFails([71, 0, 0, 0, 0, 0, 0, 0, 0])

        let empty = MessageTestType()
        var a = empty
        a.singleFixed64 = 0
        XCTAssertEqual(a, empty)
        XCTAssertEqual(try a.serializeProtobufBytes(), [])
        var b = empty
        b.singleFixed64 = 1
        XCTAssertNotEqual(a, b)
        b.singleFixed64 = 0
        XCTAssertEqual(a, b)
    }

    func testEncoding_singleSfixed32() throws {
        assertEncode([77, 255, 255, 255, 127]) {(o: inout MessageTestType) in o.singleSfixed32 = Int32.max}
        assertEncode([77, 0, 0, 0, 128]) {(o: inout MessageTestType) in o.singleSfixed32 = Int32.min}
        assertDecodeSucceeds([77, 0, 0, 0, 0]) {(o: MessageTestType) in
            let t: Int32 = o.singleSfixed32 // Verify in-memory type
            return t == 0
        }
        assertDecodeSucceeds([77, 255, 255, 255, 255]) {$0.singleSfixed32 == -1}
        assertDebugDescription("SwiftProtobufTests.Proto3TestAllTypes:\nsingle_sfixed32: 1\n") {(o: inout MessageTestType) in o.singleSfixed32 = 1}
        assertDecodeFails([77])
        assertDecodeFails([77])
        assertDecodeFails([77, 0])
        assertDecodeFails([77, 0, 0])
        assertDecodeFails([77, 0, 0, 0])
        assertDecodeFails([72])
        assertDecodeFails([72, 0])
        assertDecodeFails([72, 0, 0, 0, 0])
        assertDecodeFails([73])
        assertDecodeFails([73, 0])
        assertDecodeFails([73, 0, 0, 0, 0])
        assertDecodeFails([74])
        assertDecodeFails([74, 0])
        assertDecodeFails([74, 0, 0, 0, 0])
        assertDecodeFails([75])
        assertDecodeFails([75, 0])
        assertDecodeFails([75, 0, 0, 0, 0])
        assertDecodeFails([76])
        assertDecodeFails([76, 0])
        assertDecodeFails([76, 0, 0, 0, 0])
        assertDecodeFails([78])
        assertDecodeFails([78, 0])
        assertDecodeFails([78, 0, 0, 0, 0])
        assertDecodeFails([79])
        assertDecodeFails([79, 0])
        assertDecodeFails([79, 0, 0, 0, 0])

        let empty = MessageTestType()
        var a = empty
        a.singleSfixed32 = 0
        XCTAssertEqual(a, empty)
        var b = empty
        b.singleSfixed32 = 1
        XCTAssertNotEqual(a, b)
        b.singleSfixed32 = 0
        XCTAssertEqual(a, b)
    }

    func testEncoding_singleSfixed64() throws {
        assertEncode([81, 255, 255, 255, 255, 255, 255, 255, 127]) {(o: inout MessageTestType) in o.singleSfixed64 = Int64.max}
        assertEncode([81, 0, 0, 0, 0, 0, 0, 0, 128]) {(o: inout MessageTestType) in o.singleSfixed64 = Int64.min}
        assertDecodeSucceeds([81, 0, 0, 0, 0, 0, 0, 0, 128]) {(o: MessageTestType) in
            let t: Int64 = o.singleSfixed64 // Verify in-memory type
            return t == -9223372036854775808
        }
        assertDebugDescription("SwiftProtobufTests.Proto3TestAllTypes:\nsingle_sfixed64: 1\n") {(o: inout MessageTestType) in o.singleSfixed64 = 1}
        assertDecodeFails([81])
        assertDecodeFails([81, 0])
        assertDecodeFails([81, 0, 0])
        assertDecodeFails([81, 0, 0, 0])
        assertDecodeFails([81, 0, 0, 0, 0])
        assertDecodeFails([81, 0, 0, 0, 0, 0, 0, 0])
        assertDecodeFails([80])
        assertDecodeFails([80, 0])
        assertDecodeFails([80, 0, 0, 0, 0, 0, 0, 0, 0])
        assertDecodeFails([82])
        assertDecodeFails([82, 0])
        assertDecodeFails([82, 0, 0, 0, 0, 0, 0, 0, 0])
        assertDecodeFails([83])
        assertDecodeFails([83, 0])
        assertDecodeFails([83, 0, 0, 0, 0, 0, 0, 0, 0])
        assertDecodeFails([84])
        assertDecodeFails([84, 0])
        assertDecodeFails([84, 0, 0, 0, 0, 0, 0, 0, 0])
        assertDecodeFails([85])
        assertDecodeFails([85, 0])
        assertDecodeFails([85, 0, 0, 0, 0, 0, 0, 0, 0])
        assertDecodeFails([86])
        assertDecodeFails([86, 0])
        assertDecodeFails([86, 0, 0, 0, 0, 0, 0, 0, 0])
        assertDecodeFails([87])
        assertDecodeFails([87, 0])
        assertDecodeFails([87, 0, 0, 0, 0, 0, 0, 0, 0])

        let empty = MessageTestType()
        var a = empty
        a.singleSfixed64 = 0
        XCTAssertEqual(a, empty)
        var b = empty
        b.singleSfixed64 = 1
        XCTAssertNotEqual(a, b)
        b.singleSfixed64 = 0
        XCTAssertEqual(a, b)
    }

    func testEncoding_singleFloat() throws {
        assertEncode([93, 0, 0, 0, 63]) {(o: inout MessageTestType) in o.singleFloat = 0.5}
        assertEncode([93, 0, 0, 0, 64]) {(o: inout MessageTestType) in o.singleFloat = 2.0}
        assertDecodeSucceeds([93, 0, 0, 0, 0]) {(o: MessageTestType) in
            let t: Float = o.singleFloat
            return t == 0
        }
        assertDebugDescription("SwiftProtobufTests.Proto3TestAllTypes:\nsingle_float: 1\n") {(o: inout MessageTestType) in o.singleFloat = 1.0}
        assertDecodeFails([93, 0, 0, 0])
        assertDecodeFails([93, 0, 0])
        assertDecodeFails([93, 0])
        assertDecodeFails([93])
        assertDecodeFails([88]) // Float cannot use wire type 0
        assertDecodeFails([88, 0, 0, 0, 0]) // Float cannot use wire type 0
        assertDecodeFails([89]) // Float cannot use wire type 1
        assertDecodeFails([89, 0, 0, 0, 0]) // Float cannot use wire type 1
        assertDecodeFails([90]) // Float cannot use wire type 2
        assertDecodeFails([90, 0, 0, 0, 0]) // Float cannot use wire type 2
        assertDecodeFails([91]) // Float cannot use wire type 3
        assertDecodeFails([91, 0, 0, 0, 0]) // Float cannot use wire type 3
        assertDecodeFails([92]) // Float cannot use wire type 4
        assertDecodeFails([92, 0, 0, 0, 0]) // Float cannot use wire type 4
        assertDecodeFails([94]) // Float cannot use wire type 6
        assertDecodeFails([94, 0, 0, 0, 0]) // Float cannot use wire type 6
        assertDecodeFails([95]) // Float cannot use wire type 7
        assertDecodeFails([95, 0, 0, 0, 0]) // Float cannot use wire type 7

        let empty = MessageTestType()
        var a = empty
        a.singleFloat = 0
        XCTAssertEqual(a, empty)
        XCTAssertEqual(try a.serializeProtobufBytes(), [])
        var b = empty
        b.singleFloat = 1
        XCTAssertNotEqual(a, b)
        b.singleFloat = 0
        XCTAssertEqual(a, b)
    }

    func testEncoding_singleDouble() throws {
        assertEncode([97, 0, 0, 0, 0, 0, 0, 224, 63]) {(o: inout MessageTestType) in o.singleDouble = 0.5}
        assertEncode([97, 0, 0, 0, 0, 0, 0, 0, 64]) {(o: inout MessageTestType) in o.singleDouble = 2.0}
        assertDecodeSucceeds([97, 0, 0, 0, 0, 0, 0, 224, 63]) {(o: MessageTestType) in
            let t: Double = o.singleDouble
            return t == 0.5
        }
        assertDebugDescription("SwiftProtobufTests.Proto3TestAllTypes:\nsingle_double: 1\n") {(o: inout MessageTestType) in o.singleDouble = 1.0}
        assertDecodeFails([97, 0, 0, 0, 0, 0, 0, 224])
        assertDecodeFails([97])
        assertDecodeFails([96])
        assertDecodeFails([96, 0])
        assertDecodeFails([96, 10, 10, 10, 10, 10, 10, 10, 10])
        assertDecodeFails([98])
        assertDecodeFails([98, 0])
        assertDecodeFails([98, 10, 10, 10, 10, 10, 10, 10, 10])
        assertDecodeFails([99])
        assertDecodeFails([99, 0])
        assertDecodeFails([99, 10, 10, 10, 10, 10, 10, 10, 10])
        assertDecodeFails([100])
        assertDecodeFails([100, 0])
        assertDecodeFails([100, 10, 10, 10, 10, 10, 10, 10, 10])
        assertDecodeFails([101])
        assertDecodeFails([101, 0])
        assertDecodeFails([101, 10, 10, 10, 10, 10, 10, 10, 10])
        assertDecodeFails([101])
        assertDecodeFails([102, 0])
        assertDecodeFails([102, 10, 10, 10, 10, 10, 10, 10, 10])
        assertDecodeFails([103])
        assertDecodeFails([103, 0])
        assertDecodeFails([103, 10, 10, 10, 10, 10, 10, 10, 10])

        let empty = MessageTestType()
        var a = empty
        a.singleDouble = 0
        XCTAssertEqual(a, empty)
        XCTAssertEqual(try a.serializeProtobufBytes(), [])
        var b = empty
        b.singleDouble = 1
        XCTAssertNotEqual(a, b)
        b.singleDouble = 0
        XCTAssertEqual(a, b)
    }

    func testEncoding_singleBool() throws {
        assertEncode([104, 1]) {(o: inout MessageTestType) in o.singleBool = true}
        assertDecodeSucceeds([104, 1]) {(o: MessageTestType) in
            let t: Bool = o.singleBool // Verify non-optional
            return t == true
        }
        assertDebugDescription("SwiftProtobufTests.Proto3TestAllTypes:\nsingle_bool: true\n") {(o: inout MessageTestType) in o.singleBool = true}
        assertDebugDescription("SwiftProtobufTests.Proto3TestAllTypes:\n") {(o: inout MessageTestType) in o.singleBool = false}
        assertDecodeFails([104])
        assertDecodeFails([104, 255])
        assertDecodeFails([105])
        assertDecodeFails([105, 0])
        assertDecodeFails([106])
        assertDecodeFails([106, 0])
        assertDecodeFails([107])
        assertDecodeFails([107, 0])
        assertDecodeFails([108])
        assertDecodeFails([108, 0])
        assertDecodeFails([109])
        assertDecodeFails([109, 0])
        assertDecodeFails([110])
        assertDecodeFails([110, 0])
        assertDecodeFails([111])
        assertDecodeFails([111, 0])

        let empty = MessageTestType()
        var a = empty
        a.singleBool = false
        XCTAssertEqual(a, empty)
        XCTAssertEqual(try a.serializeProtobufBytes(), [])
        var b = empty
        b.singleBool = true
        XCTAssertNotEqual(a, b)
        b.singleBool = false
        XCTAssertEqual(a, b)
    }

    func testEncoding_singleString() throws {
        assertEncode([114, 1, 65]) {(o: inout MessageTestType) in o.singleString = "A"}
        assertEncode([114, 4, 0xf0, 0x9f, 0x98, 0x84]) {(o: inout MessageTestType) in o.singleString = "😄"}
        assertDecodeSucceeds([114, 5, 72, 101, 108, 108, 111]) {(o: MessageTestType) in
            let t: String = o.singleString // Verify non-optional
            return t == "Hello"
        }
        assertDebugDescription("SwiftProtobufTests.Proto3TestAllTypes:\nsingle_string: \"abc\"\n") {(o: inout MessageTestType) in o.singleString = "abc"}
        assertDebugDescription("SwiftProtobufTests.Proto3TestAllTypes:\nsingle_string: \"\\b\\t\"\n") {(o: inout MessageTestType) in o.singleString = "\u{08}\u{09}"}
        assertDecodeFails([114])
        assertDecodeFails([114, 1])
        assertDecodeFails([114, 2, 65])
        assertDecodeFails([114, 1, 193]) // Invalid UTF-8
        assertDecodeFails([112])
        assertDecodeFails([112, 0])
        assertDecodeFails([113])
        assertDecodeFails([113, 0])
        assertDecodeFails([115])
        assertDecodeFails([115, 0])
        assertDecodeFails([116])
        assertDecodeFails([116, 0])
        assertDecodeFails([117])
        assertDecodeFails([117, 0])
        assertDecodeFails([118])
        assertDecodeFails([118, 0])
        assertDecodeFails([119])
        assertDecodeFails([119, 0])

        let empty = MessageTestType()
        var a = empty
        a.singleString = ""
        XCTAssertEqual(a, empty)
        XCTAssertEqual(try a.serializeProtobufBytes(), [])
        var b = empty
        b.singleString = "a"
        XCTAssertNotEqual(a, b)
        b.singleString = ""
        XCTAssertEqual(a, b)
    }

    func testEncoding_singleBytes() {
        assertEncode([122, 1, 1]) {(o: inout MessageTestType) in o.singleBytes = Data(bytes: [1])}
        assertEncode([122, 2, 1, 2]) {(o: inout MessageTestType) in o.singleBytes = Data(bytes: [1, 2])}
        assertDecodeSucceeds([122, 4, 0, 1, 2, 255]) {(o: MessageTestType) in
            let t = o.singleBytes // Verify non-optional
            return t == Data(bytes: [0, 1, 2, 255])
        }
        assertDebugDescription("SwiftProtobufTests.Proto3TestAllTypes:\nsingle_bytes: \"\\001\\002\\003\"\n") {(o: inout MessageTestType) in o.singleBytes = Data(bytes: [1, 2, 3])}
        assertDecodeFails([122])
        assertDecodeFails([122, 1])
        assertDecodeFails([122, 2, 0])
        assertDecodeFails([122, 3, 0, 0])
        assertDecodeFails([120])
        assertDecodeFails([120, 0])
        assertDecodeFails([121])
        assertDecodeFails([121, 0])
        assertDecodeFails([123])
        assertDecodeFails([123, 0])
        assertDecodeFails([124])
        assertDecodeFails([124, 0])
        assertDecodeFails([125])
        assertDecodeFails([125, 0])
        assertDecodeFails([126])
        assertDecodeFails([126, 0])
        assertDecodeFails([127])
        assertDecodeFails([127, 0])

        let empty = MessageTestType()
        var a = empty
        a.singleBytes = Data()
        XCTAssertEqual(a, empty)
        XCTAssertEqual(try a.serializeProtobufBytes(), [])
        var b = empty
        b.singleBytes = Data(bytes: [1])
        XCTAssertNotEqual(a, b)
        b.singleBytes = Data()
        XCTAssertEqual(a, b)
    }

    func testEncoding_singleNestedMessage() {
        assertEncode([146, 1, 2, 8, 1]) {(o: inout MessageTestType) in
            o.singleNestedMessage.bb = 1
        }
        assertDecodeSucceeds([146, 1, 4, 8, 1, 8, 3]) {$0.singleNestedMessage.bb == 3}
        assertDecodeSucceeds([146, 1, 2, 8, 1, 146, 1, 2, 8, 4]) {$0.singleNestedMessage.bb == 4}
        assertDebugDescription("SwiftProtobufTests.Proto3TestAllTypes:\nsingle_nested_message {\n  bb: 1\n}\n") {(o: inout MessageTestType) in
            var nested = MessageTestType.NestedMessage()
            nested.bb = 1
            o.singleNestedMessage = nested
        }

        assertDecodeFails([146, 1, 2, 8, 128])
        assertDecodeFails([146, 1, 1, 128])
    }

    func testEncoding_singleForeignMessage() {
        assertEncode([154, 1, 2, 8, 1]) {(o: inout MessageTestType) in
            o.singleForeignMessage.c = 1
        }
        assertDecodeSucceeds([154, 1, 4, 8, 1, 8, 3]) {$0.singleForeignMessage.c == 3}
        assertDecodeSucceeds([154, 1, 2, 8, 1, 154, 1, 2, 8, 4]) {$0.singleForeignMessage.c == 4}
        assertDebugDescription("SwiftProtobufTests.Proto3TestAllTypes:\nsingle_foreign_message {\n  c: 1\n}\n") {(o: inout MessageTestType) in
            var foreign = Proto3ForeignMessage()
            foreign.c = 1
            o.singleForeignMessage = foreign
        }

        assertDecodeFails([152, 1, 0]) // Wire type 0
        assertDecodeFails([153, 1]) // Wire type 1
        assertDecodeFails([153, 1, 0])
        assertDecodeFails([153, 1, 0, 0, 0, 0, 0, 0, 0, 0])
        assertDecodeFails([155, 1]) // Wire type 3
        assertDecodeFails([155, 1, 0])
        assertDecodeFails([155, 1, 156, 1])
        assertDecodeFails([156, 1]) // Wire type 4
        assertDecodeFails([156, 1, 0])
        assertDecodeFails([157, 1]) // Wire type 5
        assertDecodeFails([157, 1, 0])
        assertDecodeFails([157, 1, 0, 0, 0, 0])
        assertDecodeFails([158, 1]) // Wire type 6
        assertDecodeFails([158, 1, 0])
        assertDecodeFails([159, 1]) // Wire type 7
        assertDecodeFails([159, 1, 0])
        assertDecodeFails([154, 1, 4, 8, 1]) // Truncated
    }

    func testEncoding_singleImportMessage() {
        assertEncode([162, 1, 2, 8, 1]) {(o: inout MessageTestType) in
            o.singleImportMessage.d = 1
        }
        assertDecodeSucceeds([162, 1, 4, 8, 1, 8, 3]) {$0.singleImportMessage.d == 3}
        assertDecodeSucceeds([162, 1, 2, 8, 1, 162, 1, 2, 8, 4]) {$0.singleImportMessage.d == 4}
    }

    func testEncoding_singleNestedEnum() {
        assertEncode([168, 1, 2]) {(o: inout MessageTestType) in
            o.singleNestedEnum = .bar
        }
        assertDecodeSucceeds([168, 1, 2]) {$0.singleNestedEnum == .bar}
        assertDecodeFails([168, 1])
        assertDecodeSucceeds([168, 1, 128, 1]) {$0.singleNestedEnum == .UNRECOGNIZED(128)}
        assertDecodeSucceeds([168, 1, 255, 255, 255, 255, 255, 255, 255, 255, 255, 1]) {$0.singleNestedEnum == .UNRECOGNIZED(-1)}
        assertDebugDescription("SwiftProtobufTests.Proto3TestAllTypes:\nsingle_nested_enum: BAR\n") {(o: inout MessageTestType) in
            o.singleNestedEnum = .bar
        }
    }

    func testEncoding_singleForeignEnum() {
        assertEncode([176, 1, 5]) {(o: inout MessageTestType) in
            o.singleForeignEnum = .foreignBar
        }
        assertDebugDescription("SwiftProtobufTests.Proto3TestAllTypes:\nsingle_foreign_enum: FOREIGN_BAR\n") {(o: inout MessageTestType) in
            o.singleForeignEnum = .foreignBar
        }
    }

    func testEncoding_singleImportEnum() {
        assertEncode([184, 1, 8]) {(o: inout MessageTestType) in
            o.singleImportEnum = .importBar
        }
        assertDebugDescription("SwiftProtobufTests.Proto3TestAllTypes:\nsingle_import_enum: IMPORT_BAR\n") {(o: inout MessageTestType) in
            o.singleImportEnum = .importBar
        }
    }

    func testEncoding_singlePublicImportMessage() {
        assertEncode([210, 1, 2, 8, 12]) {(o: inout MessageTestType) in
            var sub = Proto3PublicImportMessage()
            sub.e = 12
            o.singlePublicImportMessage = sub
        }
        assertDebugDescription("SwiftProtobufTests.Proto3TestAllTypes:\nsingle_public_import_message {\n  e: 9999\n}\n") {(o: inout MessageTestType) in
            var sub = Proto3PublicImportMessage()
            sub.e = 9999
            o.singlePublicImportMessage = sub
        }
    }

    //
    // Repeated types
    //
    func testEncoding_repeatedInt32() {
        assertEncode([250, 1, 15, 255, 255, 255, 255, 7, 128, 128, 128, 128, 248, 255, 255, 255, 255, 1]) {(o: inout MessageTestType) in o.repeatedInt32 = [Int32.max, Int32.min]}
        assertDecodeSucceeds([248, 1, 8, 248, 1, 247, 255, 255, 255, 15]) {$0.repeatedInt32 == [8, -9]}
        assertDecodeFails([248, 1, 8, 248, 1, 247, 255, 255, 255, 255, 255, 255, 255, 255])
        assertDecodeFails([248, 1, 8, 248, 1])
        assertDecodeFails([248, 1])
        assertDecodeFails([249, 1, 73])
        // 250, 1 should actually work because that's packed
        assertDecodeSucceeds([250, 1, 4, 8, 9, 10, 11]) {$0.repeatedInt32 == [8, 9, 10, 11]}
        assertDecodeFails([251, 1, 75])
        assertDecodeFails([252, 1, 76])
        assertDecodeFails([253, 1, 77])
        assertDecodeFails([254, 1, 78])
        assertDecodeFails([255, 1, 79])
        assertDebugDescription("SwiftProtobufTests.Proto3TestAllTypes:\nrepeated_int32: [1]\n") {(o: inout MessageTestType) in
            o.repeatedInt32 = [1]
        }
        assertDebugDescription("SwiftProtobufTests.Proto3TestAllTypes:\n") {(o: inout MessageTestType) in
            o.repeatedInt32 = []
        }
        assertDebugDescription("SwiftProtobufTests.Proto3TestAllTypes:\nrepeated_int32: [1, 2]\n") {(o: inout MessageTestType) in
            o.repeatedInt32 = [1, 2]
        }
    }


    func testEncoding_repeatedInt64() {
        assertEncode([130, 2, 19, 255, 255, 255, 255, 255, 255, 255, 255, 127, 128, 128, 128, 128, 128, 128, 128, 128, 128, 1]) {(o: inout MessageTestType) in o.repeatedInt64 = [Int64.max, Int64.min]}
        assertDecodeSucceeds([128, 2, 255, 255, 153, 166, 234, 175, 227, 1, 128, 2, 185, 156, 196, 237, 158, 222, 230, 255, 255, 1]) {$0.repeatedInt64 == [999999999999999, -111111111111111]}
        assertDecodeSucceeds([130, 2, 1, 1]) {$0.repeatedInt64 == [1]} // Accepts packed coding
        assertDecodeFails([128, 2, 255, 255, 153, 166, 234, 175, 227, 1, 128, 2, 185, 156, 196, 237, 158, 222, 230, 255, 255])
        assertDecodeFails([128, 2, 1, 128, 2])
        assertDecodeFails([128, 2, 128])
        assertDecodeFails([128, 2])
        assertDecodeFails([129, 2, 97])
        assertDecodeFails([131, 2, 99])
        assertDecodeFails([132, 2, 100])
        assertDecodeFails([133, 2, 101])
        assertDecodeFails([134, 2, 102])
        assertDecodeFails([135, 2, 103])
    }

    func testEncoding_repeatedUint32() {
        assertEncode([138, 2, 6, 255, 255, 255, 255, 15, 0]) {(o: inout MessageTestType) in o.repeatedUint32 = [UInt32.max, UInt32.min]}
        assertDecodeSucceeds([136, 2, 210, 9, 136, 2, 213, 27]) {(o:MessageTestType) in
            o.repeatedUint32 == [1234, 3541]}
        assertDecodeSucceeds([136, 2, 255, 255, 255, 255, 15, 136, 2, 213, 27]) {(o:MessageTestType) in
            o.repeatedUint32 == [4294967295, 3541]}
        assertDecodeSucceeds([138, 2, 2, 1, 2]) {(o:MessageTestType) in
            o.repeatedUint32 == [1, 2]}

        // Truncate on 32-bit overflow
        assertDecodeSucceeds([136, 2, 255, 255, 255, 255, 31]) {(o:MessageTestType) in
            o.repeatedUint32 == [4294967295]}
        assertDecodeSucceeds([136, 2, 255, 255, 255, 255, 255, 255, 255, 1]) {(o:MessageTestType) in
            o.repeatedUint32 == [4294967295]}

        assertDecodeFails([136, 2])
        assertDecodeFails([136, 2, 210])
        assertDecodeFails([136, 2, 210, 9, 120, 213])
        assertDecodeFails([137, 2, 121])
        assertDecodeFails([139, 2, 123])
        assertDecodeFails([140, 2, 124])
        assertDecodeFails([141, 2, 125])
        assertDecodeFails([142, 2, 126])
        assertDecodeFails([143, 2, 127])
    }

    func testEncoding_repeatedUint64() {
        assertEncode([146, 2, 11, 255, 255, 255, 255, 255, 255, 255, 255, 255, 1, 0]) {(o: inout MessageTestType) in o.repeatedUint64 = [UInt64.max, UInt64.min]}
        assertDecodeSucceeds([144, 2, 149, 8]) {$0.repeatedUint64 == [1045 ]}
        assertDecodeSucceeds([146, 2, 2, 0, 1]) {$0.repeatedUint64 == [0, 1]}
        assertDecodeFails([144])
        assertDecodeFails([144, 2])
        assertDecodeFails([144, 2, 149])
        assertDecodeFails([144, 2, 149, 154, 239, 255, 255, 255, 255, 255, 255, 255])
        assertDecodeFails([145, 2])
        assertDecodeFails([145, 2, 0])
        assertDecodeFails([147, 2])
        assertDecodeFails([147, 2, 0])
        assertDecodeFails([148, 2])
        assertDecodeFails([148, 2, 0])
        assertDecodeFails([149, 2])
        assertDecodeFails([149, 2, 0])
        assertDecodeFails([150, 2])
        assertDecodeFails([150, 2, 0])
        assertDecodeFails([151, 2])
        assertDecodeFails([151, 2, 0])
    }

    func testEncoding_repeatedSint32() {
        assertEncode([154, 2, 10, 254, 255, 255, 255, 15, 255, 255, 255, 255, 15]) {(o: inout MessageTestType) in o.repeatedSint32 = [Int32.max, Int32.min]}
        assertDecodeSucceeds([152, 2, 170, 180, 222, 117, 152, 2, 225, 162, 243, 173, 1]) {$0.repeatedSint32 == [123456789, -182347953]}
        assertDecodeSucceeds([154, 2, 1, 0]) {$0.repeatedSint32 == [0]}
        assertDecodeSucceeds([154, 2, 1, 1, 152, 2, 2]) {$0.repeatedSint32 == [-1, 1]}
        // 32-bit overflow truncates
        assertDecodeSucceeds([152, 2, 170, 180, 222, 117, 152, 2, 225, 162, 243, 173, 255, 255, 1]) {$0.repeatedSint32 == [123456789, -2061396145]}


        assertDecodeFails([152, 2, 170, 180, 222, 117, 152])
        assertDecodeFails([152, 2, 170, 180, 222, 117, 152, 2])
        assertDecodeFails([152, 2, 170, 180, 222, 117, 152, 2, 225])
        assertDecodeFails([152, 2, 170, 180, 222, 117, 152, 2, 225, 162, 243, 173, 255, 255, 255, 255, 255, 255, 1])
        assertDecodeFails([153, 2])
        assertDecodeFails([153, 2, 0])
        assertDecodeFails([155, 2])
        assertDecodeFails([155, 2, 0])
        assertDecodeFails([156, 2])
        assertDecodeFails([156, 2, 0])
        assertDecodeFails([157, 2])
        assertDecodeFails([157, 2, 0])
        assertDecodeFails([158, 2])
        assertDecodeFails([158, 2, 0])
        assertDecodeFails([159, 2])
        assertDecodeFails([159, 2, 0])
    }

    func testEncoding_repeatedSint64() {
        assertEncode([162, 2, 20, 254, 255, 255, 255, 255, 255, 255, 255, 255, 1, 255, 255, 255, 255, 255, 255, 255, 255, 255, 1]) {(o: inout MessageTestType) in o.repeatedSint64 = [Int64.max, Int64.min]}
        assertDecodeSucceeds([160, 2, 170, 180, 222, 117, 160, 2, 225, 162, 243, 173, 255, 89]) {$0.repeatedSint64 == [123456789,-1546102139057]}
        assertDecodeSucceeds([162, 2, 1, 1]) {$0.repeatedSint64 == [-1]}
        assertDecodeFails([160, 2, 170, 180, 222, 117, 160])
        assertDecodeFails([160, 2, 170, 180, 222, 117, 160, 2])
        assertDecodeFails([160, 2, 170, 180, 222, 117, 160, 2, 225])
        assertDecodeFails([160, 2, 170, 180, 222, 117, 160, 2, 225, 162, 243, 173, 255, 255, 255, 255, 255, 255, 1])
        assertDecodeFails([161, 2])
        assertDecodeFails([161, 2, 0])
        assertDecodeFails([163, 2])
        assertDecodeFails([163, 2, 0])
        assertDecodeFails([164, 2])
        assertDecodeFails([164, 2, 0])
        assertDecodeFails([165, 2])
        assertDecodeFails([165, 2, 0])
        assertDecodeFails([166, 2])
        assertDecodeFails([166, 2, 0])
        assertDecodeFails([167, 2])
        assertDecodeFails([167, 2, 0])
    }

    func testEncoding_repeatedFixed32() {
        assertEncode([170, 2, 8, 255, 255, 255, 255, 0, 0, 0, 0]) {(o: inout MessageTestType) in o.repeatedFixed32 = [UInt32.max, UInt32.min]}
        assertDecodeSucceeds([173, 2, 255, 255, 255, 127, 173, 2, 127, 127, 127, 127]) {$0.repeatedFixed32 == [2147483647, 2139062143]}
        assertDecodeSucceeds([170, 2, 4, 1, 0, 0, 0, 173, 2, 255, 255, 255, 127]) {$0.repeatedFixed32 == [1, 2147483647]}
        assertDecodeFails([173])
        assertDecodeFails([173, 2])
        assertDecodeFails([173, 2, 255])
        assertDecodeFails([173, 2, 255, 255])
        assertDecodeFails([173, 2, 255, 255, 255])
        assertDecodeFails([173, 2, 255, 255, 255, 127, 221])
        assertDecodeFails([173, 2, 255, 255, 255, 127, 173, 2])
        assertDecodeFails([173, 2, 255, 255, 255, 127, 173, 2, 255])
        assertDecodeFails([173, 2, 255, 255, 255, 127, 173, 2, 255, 255])
        assertDecodeFails([173, 2, 255, 255, 255, 127, 173, 2, 255, 255, 255])
        assertDecodeFails([168, 2])
        assertDecodeFails([168, 2, 0])
        assertDecodeFails([168, 2, 0, 0, 0, 0])
        assertDecodeFails([169, 2])
        assertDecodeFails([169, 2, 0])
        assertDecodeFails([169, 2, 0, 0, 0, 0])
        assertDecodeFails([171, 2])
        assertDecodeFails([171, 2, 0])
        assertDecodeFails([171, 2, 0, 0, 0, 0])
        assertDecodeFails([172, 2])
        assertDecodeFails([172, 2, 0])
        assertDecodeFails([172, 2, 0, 0, 0, 0])
        assertDecodeFails([174, 2])
        assertDecodeFails([174, 2, 0])
        assertDecodeFails([174, 2, 0, 0, 0, 0])
        assertDecodeFails([175, 2])
        assertDecodeFails([175, 2, 0])
        assertDecodeFails([175, 2, 0, 0, 0, 0])
    }

    func testEncoding_repeatedFixed64() {
        assertEncode([178, 2, 16, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0, 0, 0, 0, 0, 0, 0]) {(o: inout MessageTestType) in o.repeatedFixed64 = [UInt64.max, UInt64.min]}
        assertDecodeSucceeds([177, 2, 255, 255, 255, 127, 0, 0, 0, 0, 177, 2, 255, 255, 255, 255, 0, 0, 0, 0, 177, 2, 255, 255, 255, 255, 255, 255, 255, 255]) {$0.repeatedFixed64 == [2147483647, 4294967295, 18446744073709551615]}
        assertDecodeSucceeds([178, 2, 8, 1, 0, 0, 0, 0, 0, 0, 0]) {$0.repeatedFixed64 == [1]}
        assertDecodeSucceeds([177, 2, 2, 0, 0, 0, 0, 0, 0, 0, 178, 2, 8, 1, 0, 0, 0, 0, 0, 0, 0]) {$0.repeatedFixed64 == [2, 1]}
        assertDecodeFails([177])
        assertDecodeFails([177, 2])
        assertDecodeFails([177, 2, 255])
        assertDecodeFails([177, 2, 255, 255])
        assertDecodeFails([177, 2, 255, 255, 255])
        assertDecodeFails([177, 2, 255, 255, 255, 127])
        assertDecodeFails([177, 2, 255, 255, 255, 127, 0, 0, 0])
        assertDecodeFails([176, 2])
        assertDecodeFails([176, 2, 0])
        assertDecodeFails([176, 2, 0, 0, 0, 0, 0, 0, 0, 0])
        assertDecodeFails([179, 2])
        assertDecodeFails([179, 2, 0])
        assertDecodeFails([179, 2, 0, 0, 0, 0, 0, 0, 0, 0])
        assertDecodeFails([180, 2])
        assertDecodeFails([180, 2, 0])
        assertDecodeFails([180, 2, 0, 0, 0, 0, 0, 0, 0, 0])
        assertDecodeFails([181, 2])
        assertDecodeFails([181, 2, 0])
        assertDecodeFails([181, 2, 0, 0, 0, 0, 0, 0, 0, 0])
        assertDecodeFails([182, 2])
        assertDecodeFails([182, 2, 0])
        assertDecodeFails([182, 2, 0, 0, 0, 0, 0, 0, 0, 0])
        assertDecodeFails([183, 2])
        assertDecodeFails([183, 2, 0])
        assertDecodeFails([183, 2, 0, 0, 0, 0, 0, 0, 0, 0])
    }

    func testEncoding_repeatedSfixed32() {
        assertEncode([186, 2, 8, 255, 255, 255, 127, 0, 0, 0, 128]) {(o: inout MessageTestType) in o.repeatedSfixed32 = [Int32.max, Int32.min]}
        assertDecodeSucceeds([189, 2, 0, 0, 0, 0]) {$0.repeatedSfixed32 == [0]}
        assertDecodeSucceeds([186, 2, 4, 1, 0, 0, 0, 189, 2, 3, 0, 0, 0]) {$0.repeatedSfixed32 == [1, 3]}
        assertDecodeFails([189])
        assertDecodeFails([189, 2])
        assertDecodeFails([189, 2, 0])
        assertDecodeFails([189, 2, 0, 0])
        assertDecodeFails([189, 2, 0, 0, 0])
        assertDecodeFails([184, 2])
        assertDecodeFails([184, 2, 0])
        assertDecodeFails([184, 2, 0, 0, 0, 0])
        assertDecodeFails([185, 2])
        assertDecodeFails([185, 2, 0])
        assertDecodeFails([185, 2, 0, 0, 0, 0])
        assertDecodeFails([187, 2])
        assertDecodeFails([187, 2, 0])
        assertDecodeFails([187, 2, 0, 0, 0, 0])
        assertDecodeFails([188, 2])
        assertDecodeFails([188, 2, 0])
        assertDecodeFails([188, 2, 0, 0, 0, 0])
        assertDecodeFails([190, 2])
        assertDecodeFails([190, 2, 0])
        assertDecodeFails([190, 2, 0, 0, 0, 0])
        assertDecodeFails([191, 2])
        assertDecodeFails([191, 2, 0])
        assertDecodeFails([191, 2, 0, 0, 0, 0])
    }

    func testEncoding_repeatedSfixed64() {
        assertEncode([194, 2, 16, 255, 255, 255, 255, 255, 255, 255, 127, 0, 0, 0, 0, 0, 0, 0, 128]) {(o: inout MessageTestType) in o.repeatedSfixed64 = [Int64.max, Int64.min]}
        assertDecodeSucceeds([193, 2, 0, 0, 0, 0, 0, 0, 0, 128, 193, 2, 255, 255, 255, 255, 255, 255, 255, 255, 193, 2, 1, 0, 0, 0, 0, 0, 0, 0, 193, 2, 255, 255, 255, 255, 255, 255, 255, 127]) {$0.repeatedSfixed64 == [-9223372036854775808, -1, 1, 9223372036854775807]}
        assertDecodeSucceeds([194, 2, 8, 0, 0, 0, 0, 0, 0, 0, 0, 193, 2, 1, 0, 0, 0, 0, 0, 0, 0]) {$0.repeatedSfixed64 == [0, 1]}
        assertDecodeFails([193])
        assertDecodeFails([193, 2])
        assertDecodeFails([193, 2, 0])
        assertDecodeFails([193, 2, 0, 0])
        assertDecodeFails([193, 2, 0, 0, 0])
        assertDecodeFails([193, 2, 0, 0, 0, 0])
        assertDecodeFails([193, 2, 0, 0, 0, 0, 0])
        assertDecodeFails([193, 2, 0, 0, 0, 0, 0, 0])
        assertDecodeFails([193, 2, 0, 0, 0, 0, 0, 0, 0])
        assertDecodeFails([192, 2])
        assertDecodeFails([192, 2, 0])
        assertDecodeFails([192, 2, 0, 0, 0, 0, 0, 0, 0, 0])
        assertDecodeFails([195, 2])
        assertDecodeFails([195, 2, 0])
        assertDecodeFails([195, 2, 0, 0, 0, 0, 0, 0, 0, 0])
        assertDecodeFails([196, 2])
        assertDecodeFails([196, 2, 0])
        assertDecodeFails([196, 2, 0, 0, 0, 0, 0, 0, 0, 0])
        assertDecodeFails([197, 2])
        assertDecodeFails([197, 2, 0])
        assertDecodeFails([197, 2, 0, 0, 0, 0, 0, 0, 0, 0])
        assertDecodeFails([198, 2])
        assertDecodeFails([198, 2, 0])
        assertDecodeFails([198, 2, 0, 0, 0, 0, 0, 0, 0, 0])
        assertDecodeFails([199, 2])
        assertDecodeFails([199, 2, 0])
        assertDecodeFails([199, 2, 0, 0, 0, 0, 0, 0, 0, 0])
    }

    func testEncoding_repeatedFloat() {
        assertEncode([202, 2, 8, 0, 0, 0, 63, 0, 0, 0, 0]) {(o: inout MessageTestType) in o.repeatedFloat = [0.5, 0.0]}
        assertDecodeSucceeds([205, 2, 0, 0, 0, 63, 205, 2, 0, 0, 0, 63]) {$0.repeatedFloat == [0.5, 0.5]}
        assertDecodeSucceeds([202, 2, 8, 0, 0, 0, 63, 0, 0, 0, 63]) {$0.repeatedFloat == [0.5, 0.5]}
        assertDecodeFails([205, 2, 0, 0, 0, 63, 205, 2, 0, 0, 128])
        assertDecodeFails([205, 2, 0, 0, 0, 63, 205, 2])
        assertDecodeFails([200, 2]) // Float cannot use wire type 0
        assertDecodeFails([200, 2, 0, 0, 0, 0]) // Float cannot use wire type 0
        assertDecodeFails([201, 2]) // Float cannot use wire type 1
        assertDecodeFails([201, 2, 0, 0, 0, 0]) // Float cannot use wire type 1
        assertDecodeFails([203, 2]) // Float cannot use wire type 3
        assertDecodeFails([203, 2, 0, 0, 0, 0]) // Float cannot use wire type 3
        assertDecodeFails([204, 2]) // Float cannot use wire type 4
        assertDecodeFails([204, 2, 0, 0, 0, 0]) // Float cannot use wire type 4
        assertDecodeFails([206, 2]) // Float cannot use wire type 6
        assertDecodeFails([206, 2, 0, 0, 0, 0]) // Float cannot use wire type 6
        assertDecodeFails([207, 2]) // Float cannot use wire type 6
        assertDecodeFails([207, 2, 0, 0, 0, 0]) // Float cannot use wire type 7
    }

    func testEncoding_repeatedDouble() {
        assertEncode([210, 2, 16, 0, 0, 0, 0, 0, 0, 224, 63, 0, 0, 0, 0, 0, 0, 0, 0]) {(o: inout MessageTestType) in o.repeatedDouble = [0.5, 0.0]}
        assertDecodeSucceeds([209, 2, 0, 0, 0, 0, 0, 0, 224, 63, 209, 2, 0, 0, 0, 0, 0, 0, 208, 63]) {$0.repeatedDouble == [0.5, 0.25]}
        assertDecodeSucceeds([210, 2, 16, 0, 0, 0, 0, 0, 0, 224, 63, 0, 0, 0, 0, 0, 0, 208, 63]) {$0.repeatedDouble == [0.5, 0.25]}
        assertDecodeFails([209, 2])
        assertDecodeFails([209, 2, 0])
        assertDecodeFails([209, 2, 0, 0])
        assertDecodeFails([209, 2, 0, 0, 0, 0])
        assertDecodeFails([209, 2, 0, 0, 0, 0, 0, 0, 224, 63, 209, 2])
        assertDecodeFails([208, 2])
        assertDecodeFails([208, 2, 0])
        assertDecodeFails([208, 2, 0, 0, 0, 0, 0, 0, 0, 0])
        assertDecodeFails([211, 2])
        assertDecodeFails([211, 2, 0])
        assertDecodeFails([211, 2, 0, 0, 0, 0, 0, 0, 0, 0])
        assertDecodeFails([212, 2])
        assertDecodeFails([212, 2, 0])
        assertDecodeFails([212, 2, 0, 0, 0, 0, 0, 0, 0, 0])
        assertDecodeFails([213, 2])
        assertDecodeFails([213, 2, 0])
        assertDecodeFails([213, 2, 0, 0, 0, 0, 0, 0, 0, 0])
        assertDecodeFails([214, 2])
        assertDecodeFails([214, 2, 0])
        assertDecodeFails([214, 2, 0, 0, 0, 0, 0, 0, 0, 0])
        assertDecodeFails([215, 2])
        assertDecodeFails([215, 2, 0])
        assertDecodeFails([215, 2, 0, 0, 0, 0, 0, 0, 0, 0])
    }

    func testEncoding_repeatedBool() {
        assertEncode([218, 2, 3, 1, 0, 1]) {(o: inout MessageTestType) in o.repeatedBool = [true, false, true]}
        assertDecodeSucceeds([216, 2, 1, 216, 2, 0, 216, 2, 0, 216, 2, 1]) {$0.repeatedBool == [true, false, false, true]}
        assertDecodeSucceeds([218, 2, 3, 1, 0, 1, 216, 2, 0]) {$0.repeatedBool == [true, false, true, false]}
        assertDecodeFails([216])
        assertDecodeFails([216, 2])
        assertDecodeFails([216, 2, 255])
        assertDecodeFails([216, 2, 1, 216, 2, 255])
        assertDecodeFails([217, 2])
        assertDecodeFails([217, 2, 0])
        assertDecodeFails([219, 2])
        assertDecodeFails([219, 2, 0])
        assertDecodeFails([220, 2])
        assertDecodeFails([220, 2, 0])
        assertDecodeFails([221, 2])
        assertDecodeFails([221, 2, 0])
        assertDecodeFails([222, 2])
        assertDecodeFails([222, 2, 0])
        assertDecodeFails([223, 2])
        assertDecodeFails([223, 2, 0])
    }

    func testEncoding_repeatedString() {
        assertEncode([226, 2, 1, 65, 226, 2, 1, 66]) {(o: inout MessageTestType) in o.repeatedString = ["A", "B"]}
        assertDecodeSucceeds([226, 2, 5, 72, 101, 108, 108, 111, 226, 2, 5, 119, 111, 114, 108, 100, 226, 2, 0]) {$0.repeatedString == ["Hello", "world", ""]}
        assertDecodeFails([226])
        assertDecodeFails([226, 2])
        assertDecodeFails([226, 2, 1])
        assertDecodeFails([226, 2, 2, 65])
        assertDecodeFails([226, 2, 1, 193]) // Invalid UTF-8
        assertDecodeFails([224, 2])
        assertDecodeFails([224, 2, 0])
        assertDecodeFails([225, 2])
        assertDecodeFails([225, 2, 0])
        assertDecodeFails([227, 2])
        assertDecodeFails([227, 2, 0])
        assertDecodeFails([228, 2])
        assertDecodeFails([228, 2, 0])
        assertDecodeFails([229, 2])
        assertDecodeFails([229, 2, 0])
        assertDecodeFails([230, 2])
        assertDecodeFails([230, 2, 0])
        assertDecodeFails([231, 2])
        assertDecodeFails([231, 2, 0])
    }

    func testEncoding_repeatedBytes() {
        assertEncode([234, 2, 1, 1, 234, 2, 0, 234, 2, 1, 2]) {(o: inout MessageTestType) in o.repeatedBytes = [Data(bytes: [1]), Data(), Data(bytes: [2])]}
        assertDecodeSucceeds([234, 2, 4, 0, 1, 2, 255, 234, 2, 0]) {
            let ref: [[UInt8]] = [[0, 1, 2, 255], []]
            for (a,b) in zip($0.repeatedBytes, ref) {
                if a != Data(bytes: b) { return false }
            }
            return true
        }
        assertDecodeFails([234, 2])
        assertDecodeFails([234, 2, 1])
        assertDecodeFails([232, 2])
        assertDecodeFails([232, 2, 0])
        assertDecodeFails([233, 2])
        assertDecodeFails([233, 2, 0])
        assertDecodeFails([235, 2])
        assertDecodeFails([235, 2, 0])
        assertDecodeFails([236, 2])
        assertDecodeFails([236, 2, 0])
        assertDecodeFails([237, 2])
        assertDecodeFails([237, 2, 0])
        assertDecodeFails([238, 2])
        assertDecodeFails([238, 2, 0])
        assertDecodeFails([239, 2])
        assertDecodeFails([239, 2, 0])
    }

    func testEncoding_repeatedNestedMessage() {
        assertEncode([130, 3, 2, 8, 1, 130, 3, 2, 8, 2]) {(o: inout MessageTestType) in
            var m1 = MessageTestType.NestedMessage()
            m1.bb = 1
            var m2 = MessageTestType.NestedMessage()
            m2.bb = 2
            o.repeatedNestedMessage = [m1, m2]
        }
        assertDecodeFails([128, 3])
        assertDecodeFails([128, 3, 0])
        assertDebugDescription("SwiftProtobufTests.Proto3TestAllTypes:\nrepeated_nested_message {\n  bb: 1\n}\nrepeated_nested_message {\n  bb: 2\n}\n") {(o: inout MessageTestType) in
            var m1 = MessageTestType.NestedMessage()
            m1.bb = 1
            var m2 = MessageTestType.NestedMessage()
            m2.bb = 2
            o.repeatedNestedMessage = [m1, m2]
        }
    }

    func testEncoding_repeatedNestedEnum() {
        assertEncode([154, 3, 2, 2, 3]) {(o: inout MessageTestType) in
            o.repeatedNestedEnum = [.bar, .baz]
        }
        assertDebugDescription("SwiftProtobufTests.Proto3TestAllTypes:\nrepeated_nested_enum: [BAR, BAZ]\n") {(o: inout MessageTestType) in
            o.repeatedNestedEnum = [.bar, .baz]
        }
    }

    func testEncoding_oneofUint32() {
        assertEncode([248, 6, 0]) {(o: inout MessageTestType) in o.oneofUint32 = 0}
        assertDecodeSucceeds([248, 6, 255, 255, 255, 255, 15]) {$0.oneofUint32 == UInt32.max}
        assertDecodeSucceeds([138, 7, 1, 97, 248, 6, 1]) {(o: MessageTestType) in
            if case .oneofUint32 = o.oneofField, o.oneofUint32 == UInt32(1) {
              return true
            }
            return false
        }

        assertDecodeFails([248, 6, 128]) // Bad varint
        // Bad wire types:
        assertDecodeFails([249, 6])
        assertDecodeFails([249, 6, 0])
        assertDecodeFails([250, 6])
        assertDecodeFails([250, 6, 0])
        assertDecodeFails([251, 6])
        assertDecodeFails([251, 6, 0])
        assertDecodeFails([252, 6])
        assertDecodeFails([252, 6, 0])
        assertDecodeFails([253, 6])
        assertDecodeFails([253, 6, 0])
        assertDecodeFails([254, 6])
        assertDecodeFails([254, 6, 0])
        assertDecodeFails([255, 6])
        assertDecodeFails([255, 6, 0])

        var m = MessageTestType()
        m.oneofUint32 = 77
        XCTAssertEqual(m.debugDescription, "SwiftProtobufTests.Proto3TestAllTypes:\noneof_uint32: 77\n");
        var m2 = MessageTestType()
        m2.oneofUint32 = 78
        XCTAssertNotEqual(m.hashValue, m2.hashValue)
    }

    func testEncoding_oneofNestedMessage() {
        assertEncode([130, 7, 2, 8, 1]) {(o: inout MessageTestType) in
            o.oneofNestedMessage = MessageTestType.NestedMessage()
            o.oneofNestedMessage.bb = 1
        }
        assertDecodeSucceeds([130, 7, 0]) {(o: MessageTestType) in
            if case .oneofNestedMessage(let m) = o.oneofField {
                return m.bb == 0
            }
            return false
        }
        assertDecodeSucceeds([248, 6, 0, 130, 7, 2, 8, 1]) {(o: MessageTestType) in
            if case .oneofUint32 = o.oneofField {
                return false
            }
            if case .oneofNestedMessage(let m) = o.oneofField {
                return m.bb == 1
            }
            return false
        }
    }
    func testEncoding_oneofNestedMessage1() {
        assertDecodeSucceeds([130, 7, 2, 8, 1, 248, 6, 0]) {(o: MessageTestType) in
            if case .oneofUint32 = o.oneofField, o.oneofUint32 == UInt32(0) {
                return true
            }
            return false
        }
        // Unkonwn field within nested message should not break decoding
        assertDecodeSucceeds([130, 7, 5, 128, 127, 0, 8, 1, 248, 6, 0]) {(o: MessageTestType) in
            if case .oneofUint32 = o.oneofField, o.oneofUint32 == 0 {
                return true
            }
            return false
        }
    }

    func testEncoding_oneofNestedMessage2() {
        var m = MessageTestType()
        m.oneofNestedMessage = MessageTestType.NestedMessage()
        m.oneofNestedMessage.bb = 1
        XCTAssertEqual(m.debugDescription, "SwiftProtobufTests.Proto3TestAllTypes:\noneof_nested_message {\n  bb: 1\n}\n");
        var m2 = MessageTestType()
        m2.oneofNestedMessage = MessageTestType.NestedMessage()
        m2.oneofNestedMessage.bb = 2
        XCTAssertNotEqual(m.hashValue, m2.hashValue)
    }

    func testEncoding_oneofNestedMessage9() {
        assertDecodeFails([128, 7])
        assertDecodeFails([128, 7, 0])
        assertDecodeFails([129, 7])
        assertDecodeFails([129, 7, 0])
        assertDecodeFails([131, 7])
        assertDecodeFails([131, 7, 0])
        assertDecodeFails([132, 7])
        assertDecodeFails([132, 7, 0])
        assertDecodeFails([133, 7])
        assertDecodeFails([133, 7, 0])
        assertDecodeFails([134, 7])
        assertDecodeFails([134, 7, 0])
        assertDecodeFails([135, 7])
        assertDecodeFails([135, 7, 0])
    }

    func testEncoding_oneofString() {
        assertEncode([138, 7, 1, 97]) {(o: inout MessageTestType) in o.oneofString = "a"}
        assertDecodeSucceeds([138, 7, 1, 97]) {$0.oneofString == "a"}
        assertDecodeSucceeds([138, 7, 0]) {$0.oneofString == ""}
        assertDecodeSucceeds([146, 7, 0, 138, 7, 1, 97]) {(o:MessageTestType) in
            if case .oneofString = o.oneofField, o.oneofString == "a" {
              return true
            }
            return false
        }
        assertDecodeFails([138, 7, 1]) // Truncated body
        assertDecodeFails([138, 7, 1, 192]) // Malformed UTF-8
        // Bad wire types:
        assertDecodeFails([136, 7, 0]) // Wire type 0
        assertDecodeFails([136, 7, 1]) // Wire type 0
        assertDecodeFails([137, 7, 1, 1, 1, 1, 1, 1, 1, 1]) // Wire type 1
        assertDecodeFails([139, 7]) // Wire type 3
        assertDecodeFails([140, 7]) // Wire type 4
        assertDecodeFails([141, 7, 0])  // Wire type 5
        assertDecodeFails([141, 7, 0, 0, 0, 0])  // Wire type 5
        assertDecodeFails([142, 7]) // Wire type 6
        assertDecodeFails([142, 7, 0]) // Wire type 6
        assertDecodeFails([143, 7]) // Wire type 7
        assertDecodeFails([143, 7, 0]) // Wire type 7

        var m = MessageTestType()
        m.oneofString = "abc"
        XCTAssertEqual(m.debugDescription, "SwiftProtobufTests.Proto3TestAllTypes:\noneof_string: \"abc\"\n");
        var m2 = MessageTestType()
        m2.oneofString = "def"
        XCTAssertNotEqual(m.hashValue, m2.hashValue)
    }

    func testEncoding_oneofBytes() {
        assertEncode([146, 7, 1, 1]) {(o: inout MessageTestType) in o.oneofBytes = Data(bytes: [1])}
    }
    func testEncoding_oneofBytes2() {
        assertDecodeSucceeds([146, 7, 1, 1]) {(o: MessageTestType) in
            let expectedB = Data(bytes: [1])
            if case .oneofBytes(let b) = o.oneofField {
                let s = o.oneofString
                return b == expectedB && s == ""
            }
            return false
        }
    }
    func testEncoding_oneofBytes3() {
        assertDecodeSucceeds([146, 7, 0]) {(o: MessageTestType) in
            let expectedB = Data()
            if case .oneofBytes(let b) = o.oneofField {
                let s = o.oneofString
                return b == expectedB && s == ""
            }
            return false
        }
    }
    func testEncoding_oneofBytes4() {
        assertDecodeSucceeds([138, 7, 1, 97, 146, 7, 0]) {(o: MessageTestType) in
            let expectedB = Data()
            if case .oneofBytes(let b) = o.oneofField {
                let s = o.oneofString
                return b == expectedB && s == ""
            }
            return false
        }
    }

    func testEncoding_oneofBytes5() {
        // Setting string and then bytes ends up with bytes but no string
        assertDecodeFails([146, 7])
    }

    func testEncoding_oneofBytes_failures() {
        assertDecodeFails([146, 7, 1])
        // Bad wire types:
        assertDecodeFails([144, 7])
        assertDecodeFails([144, 7, 0])
        assertDecodeFails([145, 7])
        assertDecodeFails([145, 7, 0])
        assertDecodeFails([147, 7])
        assertDecodeFails([147, 7, 0])
        assertDecodeFails([148, 7])
        assertDecodeFails([148, 7, 0])
        assertDecodeFails([149, 7])
        assertDecodeFails([149, 7, 0])
        assertDecodeFails([150, 7])
        assertDecodeFails([150, 7, 0])
        assertDecodeFails([151, 7])
        assertDecodeFails([151, 7, 0])
    }

    func testEncoding_oneofBytes_debugDescription() {
        var m = MessageTestType()
        m.oneofBytes = Data(bytes: [1, 2, 3])

        XCTAssertEqual(m.debugDescription, "SwiftProtobufTests.Proto3TestAllTypes:\noneof_bytes: \"\\001\\002\\003\"\n");
        var m2 = MessageTestType()
        m2.oneofBytes = Data(bytes: [4, 5, 6])
        XCTAssertNotEqual(m.hashValue, m2.hashValue)
    }

    func testDebugDescription() {
        var m = MessageTestType()
        let d = m.debugDescription
        XCTAssertEqual("SwiftProtobufTests.Proto3TestAllTypes:\n", d)
        m.singleInt32 = 7
        XCTAssertEqual("SwiftProtobufTests.Proto3TestAllTypes:\nsingle_int32: 7\n", m.debugDescription)
        m.repeatedString = ["a", "b"]
        XCTAssertEqual("SwiftProtobufTests.Proto3TestAllTypes:\nsingle_int32: 7\nrepeated_string: \"a\"\nrepeated_string: \"b\"\n", m.debugDescription)
    }

    func testDebugDescription2() {
        // Message with only one field
        var m = ProtobufUnittest_ForeignMessage()
        XCTAssertEqual("SwiftProtobufTests.ProtobufUnittest_ForeignMessage:\n", m.debugDescription)
        m.c = 3
        XCTAssertEqual("SwiftProtobufTests.ProtobufUnittest_ForeignMessage:\nc: 3\n", m.debugDescription)
    }

    func testDebugDescription3() {
        // Message with only a single oneof
        var m = ProtobufUnittest_TestOneof()
        XCTAssertEqual("SwiftProtobufTests.ProtobufUnittest_TestOneof:\n", m.debugDescription)
        m.fooInt = 1
        XCTAssertEqual("SwiftProtobufTests.ProtobufUnittest_TestOneof:\nfoo_int: 1\n", m.debugDescription)
        m.fooString = "a"
        XCTAssertEqual("SwiftProtobufTests.ProtobufUnittest_TestOneof:\nfoo_string: \"a\"\n", m.debugDescription)
        var g = ProtobufUnittest_TestOneof.FooGroup()
        g.a = 7
        g.b = "b"
        m.fooGroup = g
        XCTAssertEqual("SwiftProtobufTests.ProtobufUnittest_TestOneof:\nFooGroup {\n  a: 7\n  b: \"b\"\n}\n", m.debugDescription)
    }
}

