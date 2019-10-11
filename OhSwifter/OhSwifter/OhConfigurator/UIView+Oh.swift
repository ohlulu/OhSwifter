//
//  UIView+OhConfigurator.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/4.
//  Copyright © 2019 ohlulu. All rights reserved.
//

public extension OhSwifter where Base: UIView {
    
    @discardableResult
    func frame(_ frame: CGRect) -> OhSwifter {
        base.frame = frame
        return self
    }
    
    @discardableResult
    func bounds(_ bounds: CGRect) -> OhSwifter {
        base.bounds = bounds
        return self
    }
    
    @discardableResult
    func size(_ size: CGSize) -> OhSwifter {
        base.frame = CGRect(x: base.frame.origin.x,
                            y: base.frame.origin.y,
                            width: size.width,
                            height: size.height)
        return self
    }
    
    @discardableResult
    func offsetBy(x: CGFloat, y: CGFloat) -> OhSwifter {
        base.frame = base.frame.offsetBy(dx: x, dy: y)
        return self
    }
    
    @discardableResult
    func tag(_ tag: Int) -> OhSwifter {
        base.tag = tag
        return self
    }
    
    @discardableResult
    func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> OhSwifter {
        base.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }
    
    @discardableResult
    func clipsToBounds(_ clipsToBounds: Bool) -> OhSwifter {
        base.clipsToBounds = clipsToBounds
        return self
    }
    
    @discardableResult
    func backgroundColor(_ backgroundColor: UIColor) -> OhSwifter {
        base.backgroundColor = backgroundColor
        return self
    }
    
    @discardableResult
    func alpha(_ alpha: CGFloat) -> OhSwifter {
        base.alpha = alpha
        return self
    }
    
    @discardableResult
    func isHidden(_ isHidden: Bool) -> OhSwifter {
        base.isHidden = isHidden
        return self
    }
    
    @discardableResult
    func contentMode(_ contentMode: UIView.ContentMode) -> OhSwifter {
        base.contentMode = contentMode
        return self
    }
    
    @discardableResult
    func tintColor(_ tintColor: UIColor) -> OhSwifter {
        base.tintColor = tintColor
        return self
    }
    
    @discardableResult
    func cornerRadius(_ cornerRadius: CGFloat) -> OhSwifter {
        if #available(iOS 11, *) {
            roundCorners([.allCorners], radius: cornerRadius)
        } else {
            base.clipsToBounds = true
            base.layer.cornerRadius = cornerRadius
        }
        
        return self
    }
    
    @discardableResult
    func roundCorners(_ corners: UIRectCorner, radius: CGFloat)  -> OhSwifter {
        base.clipsToBounds = true
        if #available(iOS 11.0, *) {
            base.layer.cornerRadius = radius
            base.layer.maskedCorners = CACornerMask(rawValue: corners.rawValue)
        } else {
            let path = UIBezierPath(roundedRect: base.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
            let mask = CAShapeLayer()
            mask.path = path.cgPath
            base.layer.mask = mask
        }
        return self
    }
    
    @discardableResult
    func masksToBounds(_ flag: Bool) -> OhSwifter {
        base.layer.masksToBounds = flag
        return self
    }
    
    @discardableResult
    func borderWidth(_ width: CGFloat) -> OhSwifter {
        base.layer.borderWidth = width
        return self
    }
    
    @discardableResult
    func borderColor(_ color: UIColor) -> OhSwifter {
        base.layer.borderColor = color.cgColor
        return self
    }
    
    @discardableResult
    func border(color: UIColor, width: CGFloat) -> OhSwifter {
        base.layer.borderColor = color.cgColor
        base.layer.borderWidth = width
        return self
    }
    
    @discardableResult
    func shadowColor(_ shadowColor: UIColor) -> OhSwifter {
        base.layer.shadowColor = shadowColor.cgColor
        return self
    }
    
    @discardableResult
    func shadowOpacity(_ shadowOpacity: Float) -> OhSwifter {
        base.layer.shadowOpacity = shadowOpacity
        return self
    }
    
    @discardableResult
    func shadowOffset(_ shadowOffset: CGSize) -> OhSwifter {
        base.layer.shadowOffset = shadowOffset
        return self
    }
    
    @discardableResult
    func shadowRadius(_ shadowRadius: CGFloat) -> OhSwifter {
        base.layer.shadowRadius = shadowRadius
        return self
    }
    
    @discardableResult
    func addShadow(color: UIColor, radius: CGFloat, offsetX x: CGFloat = 0, y: CGFloat = 0, opacity: Float) -> OhSwifter {
        base.layer.shadowColor = color.cgColor
        base.layer.shadowRadius = radius
        base.layer.shadowOpacity = opacity
        base.layer.shadowOffset = CGSize(width: x, height: y)
        return self
    }
    
    @discardableResult
    func addOn(view: UIView) -> OhSwifter {
        view.addSubview(base)
        return self
    }
    
    @discardableResult
    func setContentHuggingPriority(_ priority: UILayoutPriority, for axis: NSLayoutConstraint.Axis) -> OhSwifter {
        base.setContentHuggingPriority(priority, for: axis)
        return self
    }
    
    @discardableResult
    func setContentCompressionResistancePriority(_ priority: UILayoutPriority, for axis: NSLayoutConstraint.Axis) -> OhSwifter {
        base.setContentCompressionResistancePriority(priority, for: axis)
        return self
    }
}
