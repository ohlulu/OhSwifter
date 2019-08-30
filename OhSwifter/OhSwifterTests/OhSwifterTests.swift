//
//  OhSwifterTests.swift
//  OhSwifterTests
//
//  Created by ohlulu on 2019/8/29.
//  Copyright © 2019 ohlulu. All rights reserved.
//

import XCTest
import OhSwifter

class OhSwifterTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPrintDebug() {
        for x in 0...10 {
            printDebug("\(x)")
        }
        XCTAssert(true)
    }

}
