//
//  UIStackView+Oh.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/7.
//  Copyright © 2019 ohlulu. All rights reserved.
//

public extension OhSwifter where Base: UIStackView {
    
    @discardableResult
    func axis(_ axis: NSLayoutConstraint.Axis) -> OhSwifter {
        base.axis = axis
        return self
    }
    
    @discardableResult
    func distribution(_ distribution: UIStackView.Distribution) -> OhSwifter {
        base.distribution = distribution
        return self
    }
    
    @discardableResult
    func alignment(_ alignment: UIStackView.Alignment) -> OhSwifter {
        base.alignment = alignment
        return self
    }
    
    @discardableResult
    func spacing(_ spacing: CGFloat) -> OhSwifter {
        base.spacing = spacing
        return self
    }
    
    @discardableResult
    func addArrangedSubview(_ view: UIView) -> OhSwifter {
        base.addArrangedSubview(view)
        return self
    }
    
    @discardableResult
    func addArrangedSubviews(_ views: [UIView]) -> OhSwifter {
        for view in views {
            base.addArrangedSubview(view)
        }
        return self
    }
    
}
