//
//  UITextFiledTestsOnOhSwifter.swift
//  OhSwifterTests
//
//  Created by ohlulu on 2019/9/14.
//  Copyright © 2019 ohlulu. All rights reserved.
//

import XCTest

class UITextFiledTestsOnOhSwifter: XCTestCase {

    override func setUp() {
        
    }

    override func tearDown() {
        
    }

    func test_() {
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
}
