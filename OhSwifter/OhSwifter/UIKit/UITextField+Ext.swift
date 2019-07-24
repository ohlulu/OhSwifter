//
//  UITextFieldExtension.swift
//  Deloitte
//
//  Created by ohlulu on 2018/12/17.
//  Copyright © 2018 Goons. All rights reserved.
//

import UIKit

extension UITextField {
    func setIsFirstResponder(_ isFirst: Bool) {
        if !canBecomeFirstResponder { return }
        if isFirst {
            becomeFirstResponder()
        } else {
            resignFirstResponder()
        }
    }
    
    func reversedIsFirstResponder() {
        if !canBecomeFirstResponder { return }
        if isFirstResponder {
            resignFirstResponder()
        } else {
            becomeFirstResponder()
        }
    }
}

