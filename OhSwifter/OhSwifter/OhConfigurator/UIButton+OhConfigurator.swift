//
//  UIButton+OhConfigurator.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/4.
//  Copyright © 2019 ohlulu. All rights reserved.
//

public extension OhConfigureWrapper where Base: UIButton {
    
    @discardableResult
    func image(_ image: UIImage, for state: UIControl.State) -> OhConfigureWrapper {
        base.setImage(image, for: state)
        base.setTitle(nil, for: state)
        return self
    }
    
    @discardableResult
    func backgroundImage(_ image: UIImage?, for state: UIControl.State) -> OhConfigureWrapper {
        base.setBackgroundImage(image, for: state)
        return self
    }
    
    @discardableResult
    func title(_ title: String, for state: UIControl.State) -> OhConfigureWrapper {
        base.setImage(nil, for: state)
        base.setTitle(title, for: state)
        return self
    }
    
    @discardableResult
    func attributedTitle(_ title: NSAttributedString?, for state: UIControl.State) -> OhConfigureWrapper {
        base.setAttributedTitle(title, for: state)
        return self
    }
    
    @discardableResult
    func titleColor(_ color: UIColor, for state: UIControl.State = .normal) -> OhConfigureWrapper {
        base.setTitleColor(color, for: state)
        return self
    }
    
    @discardableResult
    func font(_ font: UIFont) -> OhConfigureWrapper {
        base.titleLabel?.font = font
        return self
    }

}
