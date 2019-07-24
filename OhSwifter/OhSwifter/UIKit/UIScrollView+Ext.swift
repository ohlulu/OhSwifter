//
//  UIScrollViewEntension.swift
//  Deloitte
//
//  Created by ohlulu on 2019/1/7.
//  Copyright © 2019 Goons. All rights reserved.
//

import UIKit

#if canImport(SnapKit)

import SnapKit

@available(iOS 11, *)
struct AssociatedKeys {
    static var enableHeightToFit: UInt8 = 0
    static var scrollViewObserverObj: UInt8 = 0
    static var minimunHeightToFit: UInt8 = 0
    static var maximunHeightToFit: UInt8 = 0
}

@available(iOS 11, *)
extension UIScrollView {
    var enableHeightToFit: Bool {
        get {
            guard let enable = objc_getAssociatedObject(self, &AssociatedKeys.enableHeightToFit) as? Bool else {
                return false
            }
            return enable
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.enableHeightToFit, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            if newValue {
                addObserver()
            } else {
                removeObserver()
            }
        }
    }
    
    var scrollViewObserverObj: NSKeyValueObservation? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.scrollViewObserverObj) as? NSKeyValueObservation
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.scrollViewObserverObj, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    var minimunHeightToFit: CGFloat {
        get {
            guard let h = objc_getAssociatedObject(self, &AssociatedKeys.minimunHeightToFit) as? CGFloat else{
                return 0
            }
            return h
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.minimunHeightToFit, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    var maximunHeightToFit: CGFloat? {
        get {
            return getAsscociatedValue(self,
                                       key: &AssociatedKeys.maximunHeightToFit)
        }
        set {
            setAsscociatedValue(self,
                                key: &AssociatedKeys.maximunHeightToFit,
                                value: newValue)
        }
    }
}

fileprivate extension UIScrollView {
    func addObserver() {
        scrollViewObserverObj = observe(\.contentSize) {
            [weak self] (obj, change) in
            guard let self = self,
                self.enableHeightToFit == true else {
                    return
            }
            
            var height = obj.contentSize.height < self.minimunHeightToFit
                ? self.minimunHeightToFit : obj.contentSize.height
            
            if let maxHeight = self.maximunHeightToFit {
                obj.isScrollEnabled = height > maxHeight
                height = height > maxHeight ? maxHeight : height
            }
            obj.snp.updateConstraints({ (make) in
                make.height.equalTo(height)
            })
        }
    }
    
    func removeObserver() {
        objc_removeAssociatedObjects(self)
    }
}

#endif
