//
//  UIStackViewExtension.swift
//  Deloitte
//
//  Created by ohlulu on 2018/12/17.
//  Copyright © 2018 Goons. All rights reserved.
//

import UIKit


extension UIStackView {
    func addArrangedSubviews(_ views: [UIView]) {
        for view in views {
            addArrangedSubview(view)
        }
    }
    
    func removeAllArrangedSubviews() {
        for view in arrangedSubviews {
            removeArrangedSubview(view)
            view.removeFromSuperview()
        }
    }
    
    func removeArrangedSubviews(_ views: [UIView]) {
        for view in views {
            if !subviews.contains(view) { break }
            removeArrangedSubview(view)
            view.removeFromSuperview()
        }
    }
}
