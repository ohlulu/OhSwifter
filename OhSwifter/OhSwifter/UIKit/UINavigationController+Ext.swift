//
//  UINavigationController+Ext.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/9/17.
//  Copyright © 2019 ohlulu. All rights reserved.
//

extension UINavigationController {
  
    @objc func push(_ vc: UIViewController, animated: Bool = true, _ completion: Completion? = nil) {
        navigationController?.pushViewController(vc, animated: animated)
        
        guard animated, let _completion = completion, let coordinator = transitionCoordinator else {
            DispatchQueue.main.async { completion?() }
            return
        }
        
        coordinator.animate(alongsideTransition: nil) { _ in _completion() }
    }
    
    @objc func popViewController(animated: Bool = true, completion: Completion? = nil) {
        navigationController?.popViewController(animated: animated)
        
        guard animated, let _completion = completion, let coordinator = transitionCoordinator else {
            DispatchQueue.main.async { completion?() }
            return
        }
        
        coordinator.animate(alongsideTransition: nil) { _ in _completion() }
    }
}
