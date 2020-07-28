//
//  Deprecated.swift
//  OhSwifter
//
//  Created by Ohlulu on 2020/7/28.
//  Copyright © 2020 ohlulu. All rights reserved.
//

import WebKit

public extension OhSwifter where Base: WKPreferences {
 
    @available(*, deprecated, message: "Use javaScriptEnabled(_:) instead.")
    @discardableResult
    func javaEnabled(_ flag: Bool) -> OhSwifter {
        base.javaScriptEnabled = flag
        return self
    }
    
    @available(*, deprecated, message: "Use javaScriptCanOpenWindowsAutomatically(_:) instead.")
    @discardableResult
    func plugInsEnabled(_ flag: Bool) -> OhSwifter {
        base.javaScriptCanOpenWindowsAutomatically = flag
        return self
    }
}
