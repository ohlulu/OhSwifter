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
        case generic
    }
}

extension OhConfigureWrapper where Base: UITextField {
    
    /// OhSwifter
    ///
    /// Refrence from SwifterSwift
    /// https://github.com/SwifterSwift/SwifterSwift
    ///
    @discardableResult
    func textType(_ type: UITextField.TextType) -> OhConfigureWrapper {
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
        case .generic:
            return isSecureTextEntry(false)
        }
    }
    
    @discardableResult
    func keyboardType(_ type: UIKeyboardType) -> OhConfigureWrapper {
        base.keyboardType = type
        return self
    }
    
    @discardableResult
    func autocorrectionType(_ type: UITextAutocorrectionType) -> OhConfigureWrapper {
        base.autocorrectionType = type
        return self
    }
    
    @discardableResult
    func autocapitalizationType(_ type: UITextAutocapitalizationType) -> OhConfigureWrapper {
        base.autocapitalizationType = type
        return self
    }
    
    @discardableResult
    func isSecureTextEntry(_ bool: Bool) -> OhConfigureWrapper {
        base.isSecureTextEntry = bool
        return self
    }
    
    @discardableResult
    func clearButton(mode: UITextField.ViewMode) -> OhConfigureWrapper {
        base.clearButtonMode = mode
        return self
    }
    
    @discardableResult
    func textAlignment(_ alignment: NSTextAlignment) -> OhConfigureWrapper {
        base.textAlignment = alignment
        return self
    }
}
