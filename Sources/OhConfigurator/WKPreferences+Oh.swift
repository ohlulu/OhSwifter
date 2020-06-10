//
//  WKPreferences+Oh.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/10/15.
//  Copyright © 2019 ohlulu. All rights reserved.
//

import WebKit

extension WKPreferences: OhConfigurator { }

public extension OhSwifter where Base: WKPreferences {
    
    @discardableResult
    func minimumFontSize(_ size: CGFloat) -> OhSwifter {
        base.minimumFontSize = size
        return self
    }
    
    @available(iOS 13, *)
    @discardableResult
    func isFraudulentWebsiteWarningEnabled(_ flag: Bool) -> OhSwifter {
        base.isFraudulentWebsiteWarningEnabled = flag
        return self
    }
    
    @discardableResult
    func javaEnabled(_ flag: Bool) -> OhSwifter {
        base.javaEnabled = flag
        return self
    }
    
    @discardableResult
    func javaScriptCanOpenWindowsAutomatically(_ flag: Bool) -> OhSwifter {
        base.javaScriptCanOpenWindowsAutomatically = flag
        return self
    }
    
    @discardableResult
    func javaScriptEnabled(_ flag: Bool) -> OhSwifter {
        base.javaScriptEnabled = flag
        return self
    }
    
    @discardableResult
    func plugInsEnabled(_ flag: Bool) -> OhSwifter {
        base.plugInsEnabled = flag
        return self
    }
}
