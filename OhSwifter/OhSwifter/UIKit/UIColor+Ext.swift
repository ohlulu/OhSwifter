//
//  ColorExtension.swift
//  Deloitte
//
//  Created by ohlulu on 2018/12/17.
//  Copyright © 2018 Goons. All rights reserved.
//

import UIKit

public extension UIColor {
    
    static func rgba(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat = 1)
        -> UIColor {
        return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
    }
    
    static func hex(_ hexString: String, alpha: CGFloat = 1) -> UIColor {
        let hexNSStr = hexString as NSString
        let scanner = Scanner(string: hexString)
        if hexNSStr.hasPrefix("#") {
            scanner.scanLocation = 1
        }
        
        var color: UInt32 = 0
        scanner.scanHexInt32(&color)

        return UIColor(
            red: CGFloat((color & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((color & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(color & 0x0000FF) / 255.0,
            alpha: alpha)
    }
    
    @discardableResult
    func alpha(_ alpha: CGFloat) -> UIColor {
        return withAlphaComponent(alpha)
    }
}

public extension UIColor {
    
    @available(*, deprecated, message: "Use `UIimage.create(from: UIColor)`")
    func createImage(alpha: CGFloat = 1) -> UIImage? {
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContext(rect.size)
        guard let context = UIGraphicsGetCurrentContext() else {
            return nil
        }
        
        context.setAlpha(alpha)
        context.setFillColor(self.cgColor)
        context.fill(rect)
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}
