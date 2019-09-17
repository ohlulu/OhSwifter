//
//  UIProgressView+Oh.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/9/17.
//  Copyright © 2019 ohlulu. All rights reserved.
//

import Foundation

public extension OhSwifter where Base: UIProgressView {
    
    @discardableResult
    func progressTintColor(_ color: UIColor) -> OhSwifter {
        base.progressTintColor = color
        return self
    }
    
    @discardableResult
    func trackTintColor(_ color: UIColor) -> OhSwifter {
        base.trackTintColor = color
        return self
    }
    
    @discardableResult
    func progressImage(_ image: UIImage) -> OhSwifter {
        base.progressImage = image
        return self
    }
    
    @discardableResult
    func trackImage(_ image: UIImage) -> OhSwifter {
        base.trackImage = image
        return self
    }
    
    @discardableResult
    func progressViewStyle(_ style: UIProgressView.Style) -> OhSwifter {
        base.progressViewStyle = style
        return self
    }
}
