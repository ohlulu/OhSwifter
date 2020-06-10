//
//  UINavigationController+OhConfigurator.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/7.
//  Copyright © 2019 ohlulu. All rights reserved.
//


public extension OhSwifter where Base: UINavigationBar {
    
    @discardableResult
    func titleTextAttributes(_ attributes: [NSAttributedString.Key : Any]) -> OhSwifter {
        base.titleTextAttributes = attributes as [NSAttributedString.Key : Any]
        return self
    }
    
    @discardableResult
    func largeTitleTextAttributes(_ attributes: [NSAttributedString.Key : Any]) -> OhSwifter {
        if #available(iOS 11.0, *) {
            base.largeTitleTextAttributes = attributes as [NSAttributedString.Key: Any]
        } else {
            
        }
        return self
    }
    
    @discardableResult
    func isTranslucent(_ flag: Bool) -> OhSwifter {
        base.isTranslucent = flag
        return self
    }
    
    @discardableResult
    func barBackground(color: UIColor) -> OhSwifter {
        base.barTintColor = color
        return self
    }
    
    @discardableResult
    func backgroundImage(_ image: UIImage) -> OhSwifter {
        base.setBackgroundImage(image, for: .default)
        return self
    }
    
    @discardableResult
    func barTitle(color: UIColor) -> OhSwifter {
        base.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: color
        ]
        return self
    }
    
    @discardableResult
    func shadow(color: UIColor, alpha: CGFloat = 1) -> OhSwifter {
        base.shadowImage = UIImage.create(from: color.alpha(alpha))
        return self
    }
}
