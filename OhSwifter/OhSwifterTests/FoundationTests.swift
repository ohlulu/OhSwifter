//
//  StdlibTests.swift
//  OhSwifterTests
//
//  Created by ohlulu on 2019/9/17.
//  Copyright © 2019 ohlulu. All rights reserved.
//

import XCTest
import OhSwifter
import Foundation

class FoundationTests: XCTestCase {

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
    
    func test_NSAttributeStringBuilder() {
        
        let attFromBulider = NSAttributedString.builder
            .setBase(text: "123", attribute: [.foregroundColor: UIColor.white])
            .build()
        let originAtt = NSAttributedString(string: "123", attributes: [.foregroundColor: UIColor.white])
        XCTAssertTrue(attFromBulider == originAtt)
        
        let attFromBulider2 = NSAttributedString.builder
            .setBase(text: "123", attribute: [.foregroundColor: UIColor.white])
            .append(text: "4", attribute: [.foregroundColor: UIColor.blue])
            .build()
        let originAtt2 = NSMutableAttributedString(string: "123", attributes: [.foregroundColor: UIColor.white])
        let spection4 = NSAttributedString(string: "4", attributes: [.foregroundColor: UIColor.blue])
        originAtt2.append(spection4)
        XCTAssertTrue(originAtt2 == attFromBulider2)
        
        
        let attFromBulider3 = NSAttributedString.builder
            .setBase(text: "123456123", attribute: [.foregroundColor: UIColor.white])
            .setSpecial(text: "123", attribute: [.foregroundColor: UIColor.blue])
            .build()
        let originAtt3 = NSMutableAttributedString(string: "123456123", attributes: [.foregroundColor: UIColor.white])
        originAtt3.addAttributes([.foregroundColor: UIColor.blue], range: NSRange(location: 0, length: 3))
        originAtt3.addAttributes([.foregroundColor: UIColor.blue], range: NSRange(location: 6, length: 3))
        XCTAssertTrue(attFromBulider3 == originAtt3)
        
        
        let attFromBulider4 = NSAttributedString.builder
            .setBase(text: "123456123", attribute: [.foregroundColor: UIColor.white])
            .setSpecial(text: "999", attribute: [.foregroundColor: UIColor.blue])
            .build()
        let originAtt4 = NSMutableAttributedString(string: "123456123", attributes: [.foregroundColor: UIColor.white])
        
        XCTAssertTrue(attFromBulider4 == originAtt4)
        
        _ = NSAttributedString.creat(baseText: "", baseAttribute: [:], specialAttString: [:])
    }
}
