//
//  UIViewController+Oh.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/9.
//  Copyright © 2019 ohlulu. All rights reserved.
//


public extension OhConfigureWrapper where Base: UIViewController {
    
    @discardableResult
    public func modalPresentationStyle(_ style: UIModalPresentationStyle) -> OhConfigureWrapper {
        base.modalPresentationStyle = style
        return self
    }
    
    @discardableResult
    public func modalTransitionStyle(_ style: UIModalTransitionStyle) -> OhConfigureWrapper {
        base.modalTransitionStyle = style
        return self
    }
    
    @discardableResult
    public func transitioningDelegate(_ delegate: UIViewControllerTransitioningDelegate?) -> OhConfigureWrapper {
        base.transitioningDelegate = delegate
        return self
    }
    
}

