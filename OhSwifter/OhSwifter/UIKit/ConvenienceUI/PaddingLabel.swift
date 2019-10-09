//
//  PaddingLabel.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/4.
//  Copyright © 2019 ohlulu. All rights reserved.
//

import UIKit

@IBDesignable public class PaddingLabel: UILabel {
    
    @IBInspectable public var inset: UIEdgeInsets = .zero {
        didSet {
            topInset = inset.top
            bottomInset = inset.bottom
            leftInset = inset.left
            rightInset = inset.right
        }
    }
    
    @IBInspectable public var topInset: CGFloat = 0.0
    @IBInspectable public var bottomInset: CGFloat = 0.0
    @IBInspectable public var leftInset: CGFloat = 0.0
    @IBInspectable public var rightInset: CGFloat = 0.0
    
    override open func drawText(in rect: CGRect) {
        let insets = UIEdgeInsets(top: topInset, left: leftInset, bottom: bottomInset, right: rightInset)
        super.drawText(in: rect.inset(by: insets))
    }
    
    override open var intrinsicContentSize : CGSize {
        var intrinsicSuperViewContentSize = super.intrinsicContentSize
        intrinsicSuperViewContentSize.height += topInset + bottomInset
        intrinsicSuperViewContentSize.width += leftInset + rightInset
        return intrinsicSuperViewContentSize
    }
}

public extension OhSwifter where Base == PaddingLabel {
    @discardableResult
    func inset(_ edge: UIEdgeInsets) -> OhSwifter {
        base.inset = edge
        return self
    }
}
