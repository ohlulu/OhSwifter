//
//  UITextView+Oh.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/9/6.
//  Copyright © 2019 ohlulu. All rights reserved.
//

public extension OhSwifter where Base: UITextView {
    
    @discardableResult
    func font(_ font: UIFont) -> OhSwifter {
        base.font = font
        return self
    }
    
    @discardableResult
    func font(size: CGFloat, weight: UIFont.Weight) -> OhSwifter {
        base.font = UIFont.systemFont(ofSize: size, weight: weight)
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
    
    @discardableResult
    func attributeString(_ attStr: NSAttributedString) -> OhSwifter {
        base.attributedText = attStr
        return self
    }
    
    @discardableResult
    func linkTextAttributes(_ att: [NSAttributedString.Key: Any]) -> OhSwifter {
        base.linkTextAttributes = att
        return self
    }
    
    
    @discardableResult
    func typingAttributes(_ att: [NSAttributedString.Key: Any]) -> OhSwifter {
        base.typingAttributes = att
        return self
    }
    
    @discardableResult
    func inputView(_ view: UIView) -> OhSwifter {
        base.inputView = view
        return self
    }
    
    @discardableResult
    func inputAccessoryView(_ view: UIView) -> OhSwifter {
        base.inputAccessoryView = view
        return self
    }
    
    @discardableResult
    func returnKeyType(_ type: UIReturnKeyType) -> OhSwifter {
        base.returnKeyType = type
        return self
    }
    
    @discardableResult
    func delegate(_ delegate: UITextViewDelegate) -> OhSwifter {
        base.delegate = delegate
        return self
    }
}
