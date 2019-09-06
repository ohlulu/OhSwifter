//
//  CGRect+Ext.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/20.
//  Copyright © 2019 ohlulu. All rights reserved.
//

import Foundation

public extension CGRect {
        
    init(width: Double, height: Double) {
        self.init(x: 0, y: 0, width: width, height: height)
    }

    init(width: CGFloat, height: CGFloat) {
        self.init(x: 0, y: 0, width: width, height: height)
    }
    
    init(width: Int, height: Int) {
        self.init(x: 0, y: 0, width: width, height: height)
    }
    
    init(square: Double) {
        self.init(x: 0, y: 0, width: square, height: square)
    }
    
    init(square: CGFloat) {
        self.init(x: 0, y: 0, width: square, height: square)
    }
    
    init(square: Int) {
        self.init(x: 0, y: 0, width: square, height: square)
    }
}

