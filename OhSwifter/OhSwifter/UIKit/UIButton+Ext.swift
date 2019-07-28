//
//  ButtonProtocol.swift
//  Deloitte
//
//  Created by ohlulu on 2018/12/17.
//  Copyright © 2018 Goons. All rights reserved.
//

import UIKit

enum ButtonImagePosition {
    case right
    case top
}

extension UIButton {
    
    @discardableResult
    func setImagePosition(_ position: ButtonImagePosition) -> Self {
        switch position {
        case .right:
            setImagePositionToRight()
        case .top:
            setImagePositionToTop()
        }
        return self
    }
    
    func setImagePositionToRight() {
        layoutIfNeeded()
        guard let titleFrame = titleLabel?.frame,
            let imageFrame = imageView?.frame else {
            return
        }
        let space = titleFrame.minX - imageFrame.maxX
        
        self.imageEdgeInsets = UIEdgeInsets(
            top: 0,
            left: titleFrame.size.width + space,
            bottom: 0,
            right: -(titleFrame.size.width + space))
        
        self.titleEdgeInsets = UIEdgeInsets(
            top: 0,
            left: -(imageFrame.width + space),
            bottom: 0,
            right: imageFrame.width + space)
    }
    
    private func setImagePositionToTop() {
        layoutIfNeeded()
        guard let titleFrame = titleLabel?.frame,
            let imageFrame = imageView?.frame else {
                return
        }
        let space = titleFrame.minX - imageFrame.maxX
        
        self.imageEdgeInsets = UIEdgeInsets(
            top: 0,
            left: 0,
            // 向上偏移文字的高度加上圖文的間距
            bottom: titleFrame.size.width + space,
            right: -(titleFrame.size.width))
        
        self.titleEdgeInsets = UIEdgeInsets(
            top: imageFrame.height + space,
            left: -(imageFrame.width + space),
            bottom: 0,
            right: 0)
    }

}
