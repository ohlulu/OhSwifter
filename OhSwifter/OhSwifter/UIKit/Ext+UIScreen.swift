//
//  UIScreenExtension.swift
//  Deloitte
//
//  Created by ohlulu on 2018/12/18.
//  Copyright © 2018 Goons. All rights reserved.
//

import UIKit

extension UIScreen {
    
    static var height: Double {
        return Double(UIScreen.heightf)
    }
    
    static var width: Double {
        return Double(UIScreen.widthf)
    }
    
    static var heightf: CGFloat {
        return UIScreen.main.bounds.height
    }
    
    static var widthf: CGFloat {
        return UIScreen.main.bounds.width
    }
}
