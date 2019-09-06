//
//  UIPickerView+Oh.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/9/6.
//  Copyright © 2019 ohlulu. All rights reserved.
//

public extension OhSwifter where Base: UIPickerView {
    
    @discardableResult
    func delegate(_ delegate: UIPickerViewDelegate) -> OhSwifter {
        base.delegate = delegate
        return self
    }
    
    @discardableResult
    func dataSource(_ dataSource: UIPickerViewDataSource) -> OhSwifter {
        base.dataSource = dataSource
        return self
    }
}

