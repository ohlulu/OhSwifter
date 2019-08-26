//
//  CGRect+Ext.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/20.
//  Copyright © 2019 ohlulu. All rights reserved.
//

import Foundation

public extension CGRect {
    
    static func size(_ length: Double) -> CGRect {
        return CGRect(x: 0, y: 0, width: length, height: length)
    }
}

