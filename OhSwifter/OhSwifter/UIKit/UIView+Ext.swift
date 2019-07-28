//
//  UIViewExtension.swift
//  Deloitte
//
//  Created by ohlulu on 2018/12/17.
//  Copyright © 2018 Goons. All rights reserved.
//

import UIKit

//struct UIViewAssociated {
//    static var enalbeHeightZeroWhenHidden: UInt8 = 0
//    static var beforeZeroWhenHidden: UInt8 = 0
//    static var beforeZeroWhenHiddenObserver: UInt8 = 1
//}
//
//extension UIView {
//    var cornerRadius: Double {
//        get {
//            return Double(layer.cornerRadius)
//        }
//        set {
//            layer.masksToBounds = true
//            layer.cornerRadius = CGFloat(newValue)
//        }
//    }
//    
//    func cornerRadius(corners: UIRectCorner, radius: Double) {
//        let path = UIBezierPath(roundedRect: bounds,
//                                byRoundingCorners: corners,
//                                cornerRadii: CGSize(width: radius, height: radius))
//        let mask = CAShapeLayer()
//        mask.path = path.cgPath
//        layer.mask = mask
//    }
//    
//    var borderColor: UIColor? {
//        get {
//            guard let cgColor = layer.borderColor else {
//                return nil
//            }
//            return UIColor(cgColor: cgColor)
//        }
//        set {
//            layer.borderColor = newValue?.cgColor
//        }
//    }
//    
//    var borderCGColor: CGColor? {
//        get {
//            return layer.borderColor
//        }
//        set {
//            layer.borderColor = newValue
//        }
//    }
//    
//    var borderWidth: CGFloat {
//        get {
//            return layer.borderWidth
//        }
//        set {
//            layer.borderWidth = newValue
//        }
//    }
//    
//    public func addShadow(ofColor color: UIColor = UIColor.black, radius: CGFloat = 5, offset: CGSize = CGSize(width: 0, height: 4), opacity: Float = 0.1) {
//        layer.shadowColor = color.cgColor
//        layer.shadowOffset = offset
//        layer.shadowRadius = radius
//        layer.shadowOpacity = opacity
//        layer.masksToBounds = false
//    }
//    
//    public func removeShadow() {
//        layer.shadowOpacity = 0
//    }
//    
//    func addSubviews(_ views: [UIView]) {
//        for view in views {
//            addSubview(view)
//        }
//    }
//    
//    func drawRectangle(rect: CGRect,
//                       byRoundingCorners rectCorner: UIRectCorner = .allCorners,
//                       cornerRadius: CGFloat? = nil,
//                       fillColor: UIColor? = nil,
//                       borderColor: UIColor? = nil) {
//        let path: UIBezierPath
//        if let cornerRadius = cornerRadius {
//            path = UIBezierPath(roundedRect: rect,
//                                byRoundingCorners: rectCorner,
//                                cornerRadii: CGSize(width: cornerRadius,
//                                                    height: cornerRadius))
//        } else {
//            path = UIBezierPath(rect: rect)
//        }
//        
//        let layer = CAShapeLayer()
//        layer.path = path.cgPath
//        layer.fillColor = fillColor?.cgColor
//        layer.strokeColor = borderColor?.cgColor
//        self.layer.addSublayer(layer)
//    }
//    
//    private func setHeightZeroWhenHidden() {
//        
//        func updateHeight(_ value: CGFloat) {
//            snp.updateConstraints { $0.height.equalTo(value) }
//        }
//        
//        heightZeroWhenHiddenObserve = self.observe(\.isHidden, changeHandler: { (obj , value) in
//            updateHeight(obj.isHidden ? 0 : self.beforeHeightWhenHidden)
//        })
//
//    }
//    
//    func enableHeightZeroWhenHidden(_ enable: Bool, default height: CGFloat) {
//        beforeHeightWhenHidden = height
//        if enable {
//            setHeightZeroWhenHidden()
//        }
//    }
//    
//    private var heightZeroWhenHiddenObserve: NSKeyValueObservation? {
//        get {
//            return getAsscociatedValue(self, key: &UIViewAssociated.beforeZeroWhenHiddenObserver)
//        }
//        set {
//            setAsscociatedValue(self, key: &UIViewAssociated.beforeZeroWhenHiddenObserver, value: newValue)
//        }
//    }
//    
//    private var beforeHeightWhenHidden: CGFloat {
//        get {
//            return getAsscociatedValue(
//                self, key: &UIViewAssociated.beforeZeroWhenHidden) ?? 0
//        }
//        set{
//           setAsscociatedValue(
//            self, key: &UIViewAssociated.beforeZeroWhenHidden, value: newValue)
//        }
//    }
//}
