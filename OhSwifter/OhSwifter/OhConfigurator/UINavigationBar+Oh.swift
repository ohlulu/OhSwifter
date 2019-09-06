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
}
