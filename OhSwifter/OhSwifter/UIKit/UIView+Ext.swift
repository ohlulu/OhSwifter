//
//  UIViewExtension.swift
//  Deloitte
//
//  Created by ohlulu on 2018/12/17.
//  Copyright © 2018 Goons. All rights reserved.
//

import UIKit

public extension UIView {
    
    /// duration defaule -> 0.25s,
    /// delay: defaule -> 0s
    /// - Parameter duration: defaule -> 0.25s
    /// - Parameter delay: defaule -> 0s
    /// - Parameter completion: completed closure
    func fadeOut(duration: TimeInterval = 0.25,
                delay: TimeInterval = 0,
                _ completion: ((Bool) -> Void)? = nil) {
        UIView.animate(withDuration: duration, delay: delay, animations: {
            self.alpha = 0
        }, completion: completion)
    }
    
    /// duration defaule -> 0.25s,
    /// delay: defaule -> 0s
    /// - Parameter duration: defaule -> 0.25s
    /// - Parameter delay: defaule -> 0s
    /// - Parameter completion: completed closure
    func fadeIn(duration: TimeInterval = 0.25,
                delay: TimeInterval = 0,
                _ completion: ((Bool) -> Void)? = nil) {
        UIView.animate(withDuration: duration, delay: delay, animations: {
            self.alpha = 1
        }, completion: completion)
    }

    /// Animated with a horizontal shake, duration -> 0.35s
    /// - duration -> 0.35s
    /// - offsets -> [-10.0, 10.0, -10.0, 10.0, -5.0, 5.0, 0.0]
    func errorshake(completion:(() -> Void)? = nil) {
        shake(duration: 0.35,
              offsets: [-10.0, 10.0, -10.0, 10.0, -5.0, 5.0, 0.0],
              completion: completion)
    }
    
    func shake(duration: CFTimeInterval,
               offsets: [CGFloat],
               completion:(() -> Void)? = nil) {
        constraints.forEach { $0.isActive = false }
        translatesAutoresizingMaskIntoConstraints = true
        CATransaction.begin()
        let animation: CAKeyframeAnimation
        
        animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
        
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeIn)
        
        CATransaction.setCompletionBlock(completion)
        animation.duration = duration
        animation.values = offsets
        layer.add(animation, forKey: "shake")
        CATransaction.commit()
    }
}
