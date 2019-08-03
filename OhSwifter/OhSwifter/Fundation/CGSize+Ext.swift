//
//  CGSize+Ext.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/4.
//  Copyright © 2019 ohlulu. All rights reserved.
//

import Foundation

public extension CGSize {
    
    static func equal(_ l: Double) -> CGSize {
        return CGSize(width: l, height: l)
    }
    
    static func equal(_ l: CGFloat) -> CGSize {
        return CGSize(width: l, height: l)
    }
    
    static func equal(_ l: Int) -> CGSize {
        return CGSize(width: l, height: l)
    }
}
