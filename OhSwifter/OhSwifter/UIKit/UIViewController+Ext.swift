//
//  UIViewControllerExtension.swift
//  Deloitte
//
//  Created by ohlulu on 2018/12/22.
//  Copyright © 2018 Goons. All rights reserved.
//

import UIKit

public extension UIViewController {
    
    @objc func dismiss(_ animated: Bool = true, _ completion: Completion? = nil) {
        dismiss(animated: animated, completion: completion)
    }
    
    @objc func present(_ vc: UIViewController, animated: Bool = true, _ completion: Completion? = nil) {
        present(vc, animated: animated, completion: completion)
    }
}

public extension UIViewController {
    
    var isPresent: Bool {
        if let navigationController = navigationController {
            if navigationController.viewControllers.first == self {
                return true
            }
        }
        return false
    }
}

public extension UIViewController {
    func addChild(_ child: UIViewController, containerView: UIView) {
        addChild(child)
        containerView.bounds = child.view.bounds
        containerView.addSubview(child.view)
        child.didMove(toParent: self)
    }
    
    func removeChild(_ child: UIViewController) {
        guard parent != nil else { return }
        child.willMove(toParent: nil)
        child.view.removeFromSuperview()
        child.removeFromParent()
    }
}
