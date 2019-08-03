//
//  ScreenRatio.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/4.
//  Copyright © 2019 ohlulu. All rights reserved.
//

import UIKit

public extension CGFloat {
    
    enum ScaleType {
        case height, width
    }
    
    private static var heightRatio = UIScreen.heightf / 667.0
    private static var widthRatio = UIScreen.widthf / 375.0
    
    func scale(_ type: ScaleType) -> CGFloat {
        switch type {
        case .height:
            return (self * CGFloat.heightRatio)
        case .width:
            return (self * CGFloat.widthRatio)
        }
    }
}

public extension Double {
    func scale(_ type: CGFloat.ScaleType) -> CGFloat {
        return self.cgfloat.scale(type)
    }
}


public extension Int {
    func scale(_ type: CGFloat.ScaleType) -> CGFloat {
        return self.double.scale(type)
    }
}

