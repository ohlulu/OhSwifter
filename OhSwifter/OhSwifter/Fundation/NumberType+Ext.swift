//
//  NumberTypeExtension.swift
//  Deloitte
//
//  Created by ohlulu on 2018/12/18.
//  Copyright © 2018 Goons. All rights reserved.
//

import UIKit

public extension Int {
    
    var double: Double {
        return Double(self)
    }
    
    var cgfloat: CGFloat {
        return CGFloat(self)
    }
    
    var float: Float {
        return Float(self)
    }
}

public extension Double {
    
    var int: Int {
        return Int(self)
    }
    
    var cgfloat: CGFloat {
        return CGFloat(self)
    }
    
    var float: Float {
        return Float(self)
    }
}

public extension CGFloat {
    
    var int: Int {
        return Int(self)
    }
    
    var double: Double {
        return Double(self)
    }
    
    var float: Float {
        return Float(self)
    }
}

public extension Float {
    
    var int: Int {
        return Int(self)
    }
    
    var double: Double {
        return Double(self)
    }
    
    var cgfloat: CGFloat {
        return CGFloat(self)
    }
}
