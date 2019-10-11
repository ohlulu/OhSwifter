//
//  UIPageControlsTests.swift
//  OhSwifterTests
//
//  Created by ohlulu on 2019/9/14.
//  Copyright © 2019 ohlulu. All rights reserved.
//

import XCTest
import OhSwifter

class UIPageControlsTests: XCTestCase {
    
    override func setUp() {
        
    }
    
    override func tearDown() {

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
