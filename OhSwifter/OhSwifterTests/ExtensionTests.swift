//
//  ExtensionTests.swift
//  OhSwifterTests
//
//  Created by ohlulu on 2019/9/17.
//  Copyright © 2019 ohlulu. All rights reserved.
//

import XCTest

class ExtensionTests: XCTestCase {

    override func setUp() {
        
    }

    override func tearDown() {
    }

    func test_string_subscript() {
        let string = "123456789"
        XCTAssert(string[0...2] == "123")
        XCTAssert(string[0..<2] == "12")
        XCTAssert(string[2...2] == "3")
        XCTAssert(string[3...4] == "45")
        XCTAssert(string[10...11] == "")
        XCTAssert(string[10..<11] == "")
        XCTAssert(string[8...11] == "9")
        XCTAssert(string[8..<11] == "9")
        XCTAssert(string[7..<8] == "8")
        XCTAssert(string[-1...11] == "123456789")
        XCTAssert(string[-1...2] == "123")

    }

}
