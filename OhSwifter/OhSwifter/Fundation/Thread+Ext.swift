//
//  ThreadExtension.swift
//  Deloitte
//
//  Created by ohlulu on 2019/2/18.
//  Copyright © 2019 Goons. All rights reserved.
//

import Foundation

extension Thread {
    static func mainThread(_ closure: @escaping () -> Void) {
        if Thread.isMainThread {
            closure()
        } else {
            DispatchQueue.main.async {
                closure()
            }
        }
    }
}
