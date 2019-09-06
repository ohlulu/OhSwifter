//
//  UINavigationController+Oh.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/9/6.
//  Copyright © 2019 ohlulu. All rights reserved.
//

import Foundation
extension OhSwifter where Base: UINavigationController {
    
    @discardableResult
    func barBackground(color: UIColor) -> OhSwifter {
        base.navigationBar.barTintColor = color
        return self
    }
    
    @discardableResult
    func backgroundImage(_ image: UIImage) -> OhSwifter {
        base.navigationBar.setBackgroundImage(image, for: .default)
        return self
    }
    
    @discardableResult
    func barTitle(color: UIColor) -> OhSwifter {
        base.navigationBar.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: color
        ]
        return self
    }
    
    @discardableResult
    func shadow(color: UIColor, alpha: CGFloat = 1) -> OhSwifter {
        base.navigationBar.shadowImage = UIImage.create(from: color.alpha(alpha))
        return self
    }
}
