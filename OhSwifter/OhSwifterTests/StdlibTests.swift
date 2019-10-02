//
//  StdlibTests.swift
//  OhSwifterTests
//
//  Created by ohlulu on 2019/9/17.
//  Copyright © 2019 ohlulu. All rights reserved.
//

import XCTest

class StdlibTests: XCTestCase {

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

    func test_UIEdgInsets() {
        var inset: UIEdgeInsets = .init(edge: 10)
        XCTAssert(inset.top == 10)
        XCTAssert(inset.bottom == 10)
        XCTAssert(inset.left == 10)
        XCTAssert(inset.right == 10)
        
        inset = .init(horizontalEdge: 20)
        XCTAssert(inset.top == 0)
        XCTAssert(inset.bottom == 0)
        XCTAssert(inset.left == 20)
        XCTAssert(inset.right == 20)
        
        inset = .init(verticalEdge: 30)
        XCTAssert(inset.top == 30)
        XCTAssert(inset.bottom == 30)
        XCTAssert(inset.left == 0)
        XCTAssert(inset.right == 0)
    }
}
