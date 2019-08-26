//
//  UISwitch+Oh.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/10.
//  Copyright © 2019 ohlulu. All rights reserved.
//

public extension OhConfigureWrapper where Base: UISwitch {

    @discardableResult
    func isOn(_ isOn: Bool, animated: Bool = true) -> OhConfigureWrapper {
        base.setOn(isOn, animated: animated)
        return self
    }
    
    /// OhSwifter+Configurator
    ///
    /// - Parameter color: Border color on close state
    /// - Returns: Self
    @discardableResult
    func tintColor(_ color: UIColor) -> OhConfigureWrapper {
        base.tintColor = color
        return self
    }
    
    /// OhSwifter+Configurator
    ///
    /// - Parameter color: The circle color
    /// - Returns: Self
    @discardableResult
    func thumbTintColor(_ color: UIColor) -> OhConfigureWrapper {
        base.thumbTintColor = color
        return self
    }
    
    /// OhSwifter+Configurator
    ///
    /// - Parameter color: Background color on On state
    /// - Returns: Self
    @discardableResult
    func onTintColor(_ color: UIColor) -> OhConfigureWrapper {
        base.onTintColor = color
        return self
    }
    
    /// OhSwifter+Configurator
    /// Standard size fixed CGSizee()
    @discardableResult
    func size(_ size: CGSize) -> OhConfigureWrapper {
        let originSize = base.frame.size
        let transform = CGAffineTransform(scaleX: size.width / originSize.width,
                                          y: size.height / originSize.height)
        base.transform = transform
        return self
    }
}
