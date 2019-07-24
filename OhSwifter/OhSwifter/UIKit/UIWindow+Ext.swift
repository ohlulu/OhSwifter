//
//  UIWindow.swift
//  Deloitte
//
//  Created by ohlulu on 2019/1/6.
//  Copyright © 2019 Goons. All rights reserved.
//

import UIKit

extension UIWindow {
    static var topVC: UIViewController? {
        var rs: UIViewController? = nil
        Thread.mainThread {
            guard let window = (UIApplication.shared.delegate as! AppDelegate).window,
                var topVC = window.rootViewController else {
                    return
            }
            while let presentedVC = topVC.presentedViewController {
                topVC = presentedVC
            }
            rs = topVC
        }
        return rs
    }
}


