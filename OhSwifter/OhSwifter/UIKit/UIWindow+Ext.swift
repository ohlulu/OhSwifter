//
//  UIWindow.swift
//  Deloitte
//
//  Created by ohlulu on 2019/1/6.
//  Copyright © 2019 Goons. All rights reserved.
//

import UIKit

public extension UIWindow {
    static var topVC: UIViewController? {
        var rs: UIViewController? = nil
        Thread.mainThread {
            guard let window = UIApplication.shared.delegate?.window,
                var topVC = window?.rootViewController else {
                    return
            }
            while let presentedVC = topVC.presentedViewController {
                topVC = presentedVC
            }
            rs = topVC
        }
        return rs
    }
    
    static func switchRootViewController(
        to viewController: UIViewController,
        animated: Bool = true,
        duration: TimeInterval = 0.5,
        options: UIView.AnimationOptions = .transitionCrossDissolve,
        _ completion: (() -> Void)? = nil) {
        guard let _window = UIApplication.shared.delegate?.window,
            let window = _window else {
            return
        }
        window.switchRootViewController(to: viewController,
                                        animated: true,
                                        duration: duration,
                                        options: options,
                                        completion)
    }
    
    func switchRootViewController(
        to viewController: UIViewController,
        animated: Bool = true,
        duration: TimeInterval = 0.5,
        options: UIView.AnimationOptions = .transitionCrossDissolve,
        _ completion: (() -> Void)? = nil) {
        
        guard animated else {
            rootViewController = viewController
            completion?()
            return
        }
        
        UIView.transition(with: self, duration: duration, options: options, animations: {
            let oldState = UIView.areAnimationsEnabled
            UIView.setAnimationsEnabled(false)
            self.rootViewController = viewController
            UIView.setAnimationsEnabled(oldState)
        }, completion: { _ in
            completion?()
        })
    }
}


