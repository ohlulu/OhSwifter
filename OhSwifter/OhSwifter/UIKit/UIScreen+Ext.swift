//
//  UIScreenExtension.swift
//  Deloitte
//
//  Created by ohlulu on 2018/12/18.
//  Copyright © 2018 Goons. All rights reserved.
//

import UIKit

public extension UIScreen {
    
    static var safeAreaInset: UIEdgeInsets {
        guard let window = UIApplication.shared.delegate?.window as? UIWindow else {
            return .init(edge: 0)
        }
        
        if #available(iOS 11.0, *) {
            return window.safeAreaInsets
        } else {
            return .init(edge: 0)
        }
    }
    
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
