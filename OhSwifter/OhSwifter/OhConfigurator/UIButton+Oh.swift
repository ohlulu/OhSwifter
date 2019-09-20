//
//  UIButton+OhConfigurator.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/4.
//  Copyright © 2019 ohlulu. All rights reserved.
//

public extension OhSwifter where Base: UIButton {
    
    @discardableResult
    func font(_ font: UIFont) -> OhSwifter {
        base.titleLabel?.font = font
        return self
    }
    
    @discardableResult
    func font(size: CGFloat, weight: UIFont.Weight) -> OhSwifter {
        base.titleLabel?.font = UIFont.systemFont(ofSize: size, weight: weight)
        return self
    }
    
    @discardableResult
    func image(_ image: UIImage, for state: UIControl.State) -> OhSwifter {
        base.setImage(image, for: state)
        return self
    }
    
    @discardableResult
    func backgroundImage(_ image: UIImage?, for state: UIControl.State) -> OhSwifter {
        base.setBackgroundImage(image, for: state)
        return self
    }
    
    @discardableResult
    func title(_ title: String, for state: UIControl.State) -> OhSwifter {
        base.setTitle(title, for: state)
        return self
    }
    
    @discardableResult
    func attributedTitle(_ title: NSAttributedString?, for state: UIControl.State) -> OhSwifter {
        base.setAttributedTitle(title, for: state)
        return self
    }
    
    @discardableResult
    func titleColor(_ color: UIColor, for state: UIControl.State = .normal) -> OhSwifter {
        base.setTitleColor(color, for: state)
        return self
    }
    
    @discardableResult
    func isEnabled(_ isEnabled: Bool) -> OhSwifter {
        base.isEnabled = isEnabled
        return self
    }
    
    @discardableResult
    func isSelected(_ isSelected: Bool) -> OhSwifter {
        base.isSelected = isSelected
        return self
    }
    
    @discardableResult
    func isHighlighted(_ isHighlighted: Bool) -> OhSwifter {
        base.isHighlighted = isHighlighted
        return self
    }
}
