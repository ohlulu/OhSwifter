//
//  UITextField+Oh.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/9.
//  Copyright © 2019 ohlulu. All rights reserved.
//

public extension UITextField {
    
    /// OhSwifter
    ///
    /// Refrence from SwifterSwift
    /// https://github.com/SwifterSwift/SwifterSwift
    ///
    enum TextType {
        case emailAddress
        case password
        case plainTextPassword
        case generic
    }
}

public extension OhSwifter where Base: UITextField {
    
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
    func textColor(_ color: UIColor) -> OhSwifter {
        base.textColor = color
        return self
    }
    
    @discardableResult
    func placeholder(_ text: String) -> OhSwifter {
        base.placeholder = text
        return self
    }
    
    @discardableResult
    func left(view: UIView?, mode: UITextField.ViewMode) -> OhSwifter {
        base.leftView = view
        base.leftViewMode = mode
        return self
    }
    
    @discardableResult
    func right(view: UIView?, mode: UITextField.ViewMode) -> OhSwifter {
        base.rightView = view
        base.rightViewMode = mode
        return self
    }
    
    /// OhSwifter
    ///
    /// Refrence from SwifterSwift
    /// https://github.com/SwifterSwift/SwifterSwift
    ///
    @discardableResult
    func textType(_ type: UITextField.TextType) -> OhSwifter {
        switch type {
        case .emailAddress:
            return autocorrectionType(.no)
                .autocapitalizationType(.none)
                .keyboardType(.emailAddress)
                .isSecureTextEntry(false)
        case .password:
            return autocorrectionType(.no)
                .autocapitalizationType(.none)
                .keyboardType(.asciiCapable)
                .isSecureTextEntry(true)
        case .plainTextPassword:
            return autocorrectionType(.no)
                .autocapitalizationType(.none)
                .keyboardType(.asciiCapable)
                .isSecureTextEntry(false)
        case .generic:
            return isSecureTextEntry(false)
        }
    }
    
    @discardableResult
    func keyboardType(_ type: UIKeyboardType) -> OhSwifter {
        base.keyboardType = type
        return self
    }
    
    @discardableResult
    func autocorrectionType(_ type: UITextAutocorrectionType) -> OhSwifter {
        base.autocorrectionType = type
        return self
    }
    
    @discardableResult
    func autocapitalizationType(_ type: UITextAutocapitalizationType) -> OhSwifter {
        base.autocapitalizationType = type
        return self
    }
    
    @discardableResult
    func isSecureTextEntry(_ bool: Bool) -> OhSwifter {
        base.isSecureTextEntry = bool
        return self
    }
    
    @discardableResult
    func clearButton(mode: UITextField.ViewMode) -> OhSwifter {
        base.clearButtonMode = mode
        return self
    }
    
    @discardableResult
    func textAlignment(_ alignment: NSTextAlignment) -> OhSwifter {
        base.textAlignment = alignment
        return self
    }
    
    @discardableResult
    func keyboardAppearance(_ mode: UIKeyboardAppearance) -> OhSwifter {
        base.keyboardAppearance = .dark
        return self
    }
}
