//
//  UINavigationController+Ext.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/9/17.
//  Copyright © 2019 ohlulu. All rights reserved.
//

public extension UINavigationController {
  
    @objc func push(_ vc: UIViewController, animated: Bool = true, _ completion: Completion? = nil) {
        pushViewController(vc, animated: animated)
        
        guard animated, let _completion = completion, let coordinator = transitionCoordinator else {
            DispatchQueue.main.async { completion?() }
            return
        }
        
        coordinator.animate(alongsideTransition: nil) { _ in _completion() }
    }
    
    @objc func popViewController(animated: Bool = true, completion: Completion? = nil) {
        popViewController(animated: animated)
        
        guard animated, let _completion = completion, let coordinator = transitionCoordinator else {
            DispatchQueue.main.async { completion?() }
            return
        }
        
        coordinator.animate(alongsideTransition: nil) { _ in _completion() }
    }
}
