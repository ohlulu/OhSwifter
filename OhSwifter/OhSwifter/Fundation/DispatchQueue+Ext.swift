//
//  DispatchQueue+Ext.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/4.
//  Copyright © 2019 ohlulu. All rights reserved.
//

import Foundation

public extension DispatchQueue {
    static func after(second: TimeInterval, _ excute: @escaping () -> Void) {
        DispatchQueue.global().asyncAfter(deadline: .now() + second) {
            DispatchQueue.main.async(execute: excute)
        }
    }
}
