//
//  UITextView+Oh.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/9/6.
//  Copyright © 2019 ohlulu. All rights reserved.
//

extension OhSwifter where Base: UITextView {
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
    func textColor(_ color: UIColor) -> OhSwifter {
        base.textColor = color
        return self
    }
    
    @discardableResult
    func text(_ text: String) -> OhSwifter {
        base.text = text
        return self
    }
    
    @discardableResult
    func isEditable(_ flag: Bool) -> OhSwifter {
        base.isEditable = flag
        return self
    }
    
    @discardableResult
    func isScrollEnabled(_ flag: Bool) -> OhSwifter {
        base.isScrollEnabled = flag
        return self
    }
    
    @discardableResult
    func sizeThatFits(_ size: CGSize) -> OhSwifter {
        base.sizeThatFits(size)
        return self
    }
    
    @discardableResult
    func textAlignment(_ textAlignment: NSTextAlignment) -> OhSwifter {
        base.textAlignment = textAlignment
        return self
    }
}
