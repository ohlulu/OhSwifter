//
//  UIDatePicker+Oh.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/9.
//  Copyright © 2019 ohlulu. All rights reserved.
//

public extension OhConfigureWrapper where Base: UIDatePicker {
    
    @discardableResult
    func datePickerMode(_ mode: UIDatePicker.Mode) -> OhConfigureWrapper {
        base.datePickerMode = mode
        return self
    }
    
    @discardableResult
    func date(_ date: Date) -> OhConfigureWrapper {
        base.date = date
        return self
    }
    
    @discardableResult
    func maximumDate(_ date: Date) -> OhConfigureWrapper {
        base.maximumDate = date
        return self
    }
    
    @discardableResult
    func minimumDate(_ date: Date) -> OhConfigureWrapper {
        base.minimumDate = date
        return self
    }
}
