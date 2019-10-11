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
    }

    override func tearDown() {
    }

    func testPrintDebug() {
        for x in 0...10 {
            printDebug("\(x)")
        }
        XCTAssert(true)
    }
    
    func test_textField() {
        let textField = UITextField()
        
        let font = UIFont.systemFont(ofSize: 15, weight: .medium)
        let color = UIColor.blue

        textField.oh
            .attributedPlaceholder("test", attribute: [
                .font: font,
                .foregroundColor: color,
                .backgroundColor: color
                ])
            .done()
    }

    
    func test_SafeCollection() {
        let arr = ["A", "B", "C"]
        XCTAssertEqual(arr.safe[0], "A")
        XCTAssertEqual(arr.safe[1], "B")
        XCTAssertEqual(arr.safe[2], "C")
        XCTAssertNil(arr.safe[3])
    }
    
    func test_UIPageControl() {
        let pageConrol = UIPageControl()
        pageConrol.oh
            .currentPageIndicatorTintColor(.blue)
        XCTAssertTrue(pageConrol.currentPageIndicatorTintColor == .blue)
        
        pageConrol.oh
            .numberOfPages(3)
        XCTAssertTrue(pageConrol.numberOfPages == 3)
        
        pageConrol.oh
            .pageIndicatorTintColor(.black)
        XCTAssertTrue(pageConrol.pageIndicatorTintColor == .black)
    }
}
