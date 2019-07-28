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
    
    class func hex(_ hexString: String, alpha: CGFloat = 1) -> UIColor {
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
}

extension UIColor {
    func createImage() -> UIImage? {
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContext(rect.size)
        guard let context = UIGraphicsGetCurrentContext() else {
            return nil
        }
        context.setFillColor(self.cgColor)
        context.fill(rect)
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}

extension UIColor {

    @nonobjc class var green: UIColor {
        return UIColor(red: 134.0 / 255.0, green: 188.0 / 255.0, blue: 37.0 / 255.0, alpha: 1.0)
    }

    @nonobjc class var midGray: UIColor {
        return UIColor(white: 155.0 / 255.0, alpha: 1.0)
    }

    @nonobjc class var darkGreen: UIColor {
        return UIColor(red: 6.0 / 255.0, green: 106.0 / 255.0, blue: 56.0 / 255.0, alpha: 1.0)
    }

    @nonobjc class var words: UIColor {
        return UIColor(white: 74.0 / 255.0, alpha: 1.0)
    }

    @nonobjc class var white: UIColor {
        return UIColor(white: 1.0, alpha: 1.0)
    }
    
    @nonobjc class var background: UIColor {
        return UIColor(white: 245.0 / 255.0, alpha: 1.0)
    }

    @nonobjc class var offWhite: UIColor {
        return UIColor(red: 250.0 / 255.0, green: 250.0 / 255.0, blue: 248.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var spruce: UIColor {
        return UIColor(red: 13.0 / 255.0, green: 105.0 / 255.0, blue: 61.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var avocadoGreen: UIColor {
        return UIColor(red: 113.0 / 255.0, green: 157.0 / 255.0, blue: 34.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var green10: UIColor {
        return UIColor(red: 134.0 / 255.0, green: 188.0 / 255.0, blue: 37.0 / 255.0, alpha: 0.1)
    }
    
    @nonobjc class var everGreen: UIColor {
        return UIColor(red: 4.0 / 255.0, green: 64.0 / 255.0, blue: 34.0 / 255.0, alpha: 1.0)
    }
    
    @nonobjc class var shadowGray: UIColor {
        return UIColor(red: 198.0 / 255.0, green: 198.0 / 255.0, blue: 204.0 / 255.0, alpha: 1.0)
    }

}
