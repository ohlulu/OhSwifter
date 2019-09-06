//
//  UILabel+OhConfiguator.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/4.
//  Copyright © 2019 ohlulu. All rights reserved.
//

import UIKit

public extension OhSwifter where Base: UILabel {
    
    @discardableResult
    func font(_ font: UIFont) -> OhSwifter {
        base.font = font
        return self
    }
    
    @discardableResult
    func font(_ size: CGFloat, weight: UIFont.Weight) -> OhSwifter {
        base.font = UIFont.systemFont(ofSize: size, weight: weight)
        return self
    }
    
    @discardableResult
    func font(_ font: UIFont, color: UIColor) -> OhSwifter {
        base.font = font
        base.textColor = color
        return self
    }
    
    @discardableResult
    func text(_ text: String) -> OhSwifter {
        base.text = text
        return self
    }
    
    @discardableResult
    func textColor(_ color: UIColor) -> OhSwifter {
        base.textColor = color
        return self
    }
    
    @discardableResult
    func textAlignment(_ textAlignment: NSTextAlignment) -> OhSwifter {
        base.textAlignment = textAlignment
        return self
    }
    
    @discardableResult
    func numberOfLines(_ numberOfLines: Int) -> OhSwifter {
        base.numberOfLines = numberOfLines
        return self
    }
    
    @discardableResult
    func isEnabled(_ isEnabled: Bool) -> OhSwifter {
        base.isEnabled = isEnabled
        return self
    }
}
