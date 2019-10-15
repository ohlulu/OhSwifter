//
//  OhSwifterTests.swift
//  OhSwifterTests
//
//  Created by ohlulu on 2019/8/29.
//  Copyright © 2019 ohlulu. All rights reserved.
//

import XCTest
import OhSwifter
import WebKit

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
    
    func test_WebKit() {
        
        let config = WKWebViewConfiguration().oh
            .injectionMetaAttribute()
            .done()
        
        let webView = WKWebView(frame: .zero, configuration: config).oh
            .scrollView {
                $0.oh.scrollEnabled(false)
                    .showsVerticalIndicator(false)
            }.done()
        
        XCTAssertTrue(webView.scrollView.isScrollEnabled == false)
        XCTAssertTrue(webView.scrollView.showsVerticalScrollIndicator == false)
        
       let injectionSource = """
            var meta = document.createElement('meta');
            meta.setAttribute('name', 'viewport');
            meta.setAttribute('content', 'width=device-width');
            document.getElementsByTagName('head')[0].appendChild(meta);
        """
        let webScript = webView.configuration
            .userContentController
            .userScripts
            .first?
            .source
        
        XCTAssertTrue(webScript == injectionSource)
    }
}
