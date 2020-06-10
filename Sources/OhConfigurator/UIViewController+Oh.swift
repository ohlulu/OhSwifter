//
//  UIViewController+Oh.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/9.
//  Copyright © 2019 ohlulu. All rights reserved.
//


public extension OhSwifter where Base: UIViewController {
    
    @discardableResult
    func modalPresentationStyle(_ style: UIModalPresentationStyle) -> OhSwifter {
        base.modalPresentationStyle = style
        return self
    }
    
    @discardableResult
    func modalTransitionStyle(_ style: UIModalTransitionStyle) -> OhSwifter {
        base.modalTransitionStyle = style
        return self
    }
    
    @discardableResult
    func transitioningDelegate(_ delegate: UIViewControllerTransitioningDelegate?) -> OhSwifter {
        base.transitioningDelegate = delegate
        return self
    }
    
}

