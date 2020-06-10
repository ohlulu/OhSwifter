//
//  WKWebView+Oh.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/10/15.
//  Copyright © 2019 ohlulu. All rights reserved.
//

import WebKit

public extension OhSwifter where Base: WKWebView {
    
    @discardableResult
    func scrollView(_ closure: (UIScrollView) -> Void) -> OhSwifter {
        closure(base.scrollView)
        return self
    }
}
