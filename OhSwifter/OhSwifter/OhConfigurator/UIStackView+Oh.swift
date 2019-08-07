//
//  UIStackView+Oh.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/7.
//  Copyright © 2019 ohlulu. All rights reserved.
//

public extension OhConfigureWrapper where Base: UIStackView {
    
    @discardableResult
    func axis(_ axis: NSLayoutConstraint.Axis) -> OhConfigureWrapper {
        base.axis = axis
        return self
    }
    
    @discardableResult
    func distribution(_ distribution: UIStackView.Distribution) -> OhConfigureWrapper {
        base.distribution = distribution
        return self
    }
    
    @discardableResult
    func alignment(_ alignment: UIStackView.Alignment) -> OhConfigureWrapper {
        base.alignment = alignment
        return self
    }
    
    @discardableResult func spacing(_ spacing: CGFloat) -> OhConfigureWrapper {
        base.spacing = spacing
        return self
    }
    
}
