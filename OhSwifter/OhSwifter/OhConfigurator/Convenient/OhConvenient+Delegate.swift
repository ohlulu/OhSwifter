//
//  OhDataSourceConvenient.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/9.
//  Copyright © 2019 ohlulu. All rights reserved.
//

public protocol SwiftOriginDelegate: class {
    associatedtype Delegate
    var delegate: Delegate { get set }
}

public extension OhConfigureWrapper where Base: SwiftOriginDelegate {
    
    @discardableResult
    func delegate(_ delegate: Base.Delegate) -> OhConfigureWrapper {
        base.delegate = delegate
        return self
    }
}

extension UIScrollView: SwiftOriginDelegate { }
extension UIPickerView: SwiftOriginDelegate { }
