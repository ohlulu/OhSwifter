//
//  UISwitch+Oh.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/10.
//  Copyright © 2019 ohlulu. All rights reserved.
//

public extension OhSwifter where Base: UISwitch {

    @discardableResult
    func isOn(_ isOn: Bool, animated: Bool = true) -> OhSwifter {
        base.setOn(isOn, animated: animated)
        return self
    }
    
    /// 圓圈的顏色
    ///
    /// - Parameter color: The circle color
    /// - Returns: Self
    @discardableResult
    func circleColor(_ color: UIColor) -> OhSwifter {
        base.thumbTintColor = color
        return self
    }
    
    /// 開啟狀態的背景色
    ///
    /// - Parameter color: Background color on On state
    /// - Returns: Self
    @discardableResult
    func onStateBgColor(_ color: UIColor) -> OhSwifter {
        base.onTintColor = color
        return self
    }
    
    /// 關閉狀態的背景色
    ///
    /// - Parameter color: Background color on Off state
    /// - Returns: Self
    @discardableResult
    func offStateBgColor(_ color: UIColor) -> OhSwifter {
        base.backgroundColor = color
        base.layer.cornerRadius = base.frame.height / 2
        return self
    }
    
    /// OhSwifter+Configurator
    /// Standard size fixed CGSizee()
    @discardableResult
    func size(_ size: CGSize) -> OhSwifter {
        let originSize = base.frame.size
        let transform = CGAffineTransform(
            scaleX: size.width / originSize.width,
            y: size.height / originSize.height
        )
        base.transform = transform
        return self
    }
}
