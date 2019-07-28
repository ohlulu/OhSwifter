//
//  RunTime.swift
//  Deloitte
//
//  Created by ohlulu on 2019/1/7.
//  Copyright © 2019 Goons. All rights reserved.
//

import Foundation

func getAsscociatedValue<T>(_ object: Any, key: UnsafeRawPointer) -> T? {
    return objc_getAssociatedObject(object, key) as? T
}

func setAsscociatedValue<T>(_ object: Any, key: UnsafeRawPointer, value: T) {
    objc_setAssociatedObject(object, key, value, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
}
