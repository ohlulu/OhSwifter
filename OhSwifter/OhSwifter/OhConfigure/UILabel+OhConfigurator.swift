//
//  UILabel+OhConfiguator.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/4.
//  Copyright © 2019 ohlulu. All rights reserved.
//

import UIKit

public extension OhConfigureWrapper where Base: UILabel {
    
    @discardableResult
    func font(_ font: UIFont) -> OhConfigureWrapper {
        base.font = font
        return self
    }
    
    @discardableResult
    func font<T: RawRepresentable>(rawFont: T) -> OhConfigureWrapper where T.RawValue == UIFont {
        base.font = rawFont.rawValue
        return self
    }
    
    @discardableResult
    func color(_ color: UIColor) -> OhConfigureWrapper {
        base.textColor = color
        return self
    }
    
    @discardableResult
    func style(font: UIFont, color: UIColor) -> OhConfigureWrapper {
        base.font = font
        base.textColor = color
        return self
    }
    
    @discardableResult
    func style<T>(rawFont: T, color: UIColor) -> OhConfigureWrapper where T: RawRepresentable, T.RawValue == UIFont {
        base.font = rawFont.rawValue
        base.textColor = color
        return self
    }
    
    @discardableResult
    func text(_ text: String) -> OhConfigureWrapper {
        base.text = text
        return self
    }
    
    @discardableResult
    func textAlignment(_ textAlignment: NSTextAlignment) -> OhConfigureWrapper {
        base.textAlignment = textAlignment
        return self
    }
    
    @discardableResult
    func numberOfLines(_ numberOfLines: Int) -> OhConfigureWrapper {
        base.numberOfLines = numberOfLines
        return self
    }
    
    @discardableResult
    func isEnabled(_ isEnabled: Bool) -> OhConfigureWrapper {
        base.isEnabled = isEnabled
        return self
    }
}
