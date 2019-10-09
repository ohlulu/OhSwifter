//
//  UIViewExtension.swift
//  Deloitte
//
//  Created by ohlulu on 2018/12/17.
//  Copyright © 2018 Goons. All rights reserved.
//

import UIKit

public extension UIView {
    
    func fadeOut(duration: TimeInterval = 0.25,
                delay: TimeInterval = 0,
                _ completion: ((Bool) -> Void)? = nil) {
        UIView.animate(withDuration: duration, delay: delay, animations: {
            self.alpha = 0
        }, completion: completion)
    }
    
    func fadein(duration: TimeInterval = 0.25,
                delay: TimeInterval = 0,
                _ completion: ((Bool) -> Void)? = nil) {
        UIView.animate(withDuration: duration, delay: delay, animations: {
            self.alpha = 1
        }, completion: completion)
    }
}
