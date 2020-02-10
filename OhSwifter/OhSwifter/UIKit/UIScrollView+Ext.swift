//
//  UIScrollViewEntension.swift
//  Deloitte
//
//  Created by ohlulu on 2019/1/7.
//  Copyright © 2019 Goons. All rights reserved.
//

import UIKit

//@available(iOS 11, *)
private struct Keys {
    static var enableHeightToFit: UInt8 = 0
    static var scrollViewObserverObj: UInt8 = 0
    static var minimunHeightToFit: UInt8 = 0
    static var maximunHeightToFit: UInt8 = 0
}

//@available(iOS 11, *)
public extension UIScrollView {
    
    @discardableResult
    func setHeightToFit(_ flag: Bool) -> Self {
        enableHeightToFit = flag
        return self
    }
    
    var enableHeightToFit: Bool {
        get {
            return getAsscociatedValue(self, key: &Keys.enableHeightToFit) ?? false
        }
        set {
            setAsscociatedValue(self, key: &Keys.enableHeightToFit, value: newValue)
            if newValue {
                addObserver()
            } else {
                removeObserver()
            }
        }
    }
    
    var scrollViewObserverObj: NSKeyValueObservation? {
        get {
            return getAsscociatedValue(self, key: &Keys.scrollViewObserverObj)
        }
        set {
            setAsscociatedValue(self, key: &Keys.scrollViewObserverObj, value: newValue)
        }
    }
    
    var minimunHeightToFit: CGFloat {
        get {
            return getAsscociatedValue(self, key: &Keys.minimunHeightToFit) ?? 0
        }
        set {
            setAsscociatedValue(self, key: &Keys.minimunHeightToFit, value: newValue)
        }
    }
    
    var maximunHeightToFit: CGFloat? {
        get {
            return getAsscociatedValue(self, key: &Keys.maximunHeightToFit)
        }
        set {
            setAsscociatedValue(self, key: &Keys.maximunHeightToFit, value: newValue)
        }
    }
}

//@available(iOS 11, *)
fileprivate extension UIScrollView {
    func addObserver() {
        scrollViewObserverObj = observe(\.contentSize) { [weak self] (obj, change) in
            guard let self = self, self.enableHeightToFit else {
                return
            }
            
            var height = max(obj.contentSize.height + obj.contentInset.vertical,
                             self.minimunHeightToFit)
            
            if let maxHeight = self.maximunHeightToFit {
                height = min(maxHeight, height)
            }
            
            let heightContraint = obj.constraints.first(where: {
                $0.firstAttribute == .height && $0.relation == .equal
            })
            
            if let heightContraint = heightContraint {
                heightContraint.constant = height
            } else {
                obj.heightAnchor.constraint(equalToConstant: height).isActive = true
            }
        }
    }
    
    func removeObserver() {
        objc_removeAssociatedObjects(self)
    }
}
