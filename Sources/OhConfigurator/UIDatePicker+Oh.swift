//
//  UIDatePicker+Oh.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/9.
//  Copyright © 2019 ohlulu. All rights reserved.
//

public extension OhSwifter where Base: UIDatePicker {
    
    @discardableResult
    func datePickerMode(_ mode: UIDatePicker.Mode) -> OhSwifter {
        base.datePickerMode = mode
        return self
    }
    
    @discardableResult
    func date(_ date: Date) -> OhSwifter {
        base.date = date
        return self
    }
    
    @discardableResult
    func maximumDate(_ date: Date) -> OhSwifter {
        base.maximumDate = date
        return self
    }
    
    @discardableResult
    func minimumDate(_ date: Date) -> OhSwifter {
        base.minimumDate = date
        return self
    }
}
