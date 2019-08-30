//
//  UIView+OhConfigurator.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/4.
//  Copyright © 2019 ohlulu. All rights reserved.
//

public extension OhConfigureWrapper where Base: UIView {
    
    @discardableResult
    func frame(_ frame: CGRect) -> OhConfigureWrapper {
        base.frame = frame
        return self
    }
    
    @discardableResult
    func bounds(_ bounds: CGRect) -> OhConfigureWrapper {
        base.bounds = bounds
        return self
    }
    
    @discardableResult
    func size(_ size: CGSize) -> OhConfigureWrapper {
        base.frame = CGRect(x: base.frame.origin.x,
                            y: base.frame.origin.y,
                            width: size.width,
                            height: size.height)
        return self
    }
    
    @discardableResult
    func offsetBy(x: CGFloat, y: CGFloat) -> OhConfigureWrapper {
        base.frame.offsetBy(dx: x, dy: y)
        return self
    }
    
    @discardableResult
    func tag(_ tag: Int) -> OhConfigureWrapper {
        base.tag = tag
        return self
    }
    
    @discardableResult
    func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> OhConfigureWrapper {
        base.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }
    
    @discardableResult
    func clipsToBounds(_ clipsToBounds: Bool) -> OhConfigureWrapper {
        base.clipsToBounds = clipsToBounds
        return self
    }
    
    @discardableResult
    func backgroundColor(_ backgroundColor: UIColor) -> OhConfigureWrapper {
        base.backgroundColor = backgroundColor
        return self
    }
    
    @discardableResult
    func alpha(_ alpha: CGFloat) -> OhConfigureWrapper {
        base.alpha = alpha
        return self
    }
    
    @discardableResult
    func isHidden(_ isHidden: Bool) -> OhConfigureWrapper {
        base.isHidden = isHidden
        return self
    }
    
    @discardableResult
    func contentMode(_ contentMode: UIView.ContentMode) -> OhConfigureWrapper {
        base.contentMode = contentMode
        return self
    }
    
    @discardableResult
    func tintColor(_ tintColor: UIColor) -> OhConfigureWrapper {
        base.tintColor = tintColor
        return self
    }
    
    @discardableResult
    func cornerRadius(_ cornerRadius: CGFloat) -> OhConfigureWrapper {
        if #available(iOS 11, *) {
            roundCorners([.allCorners], radius: cornerRadius)
        } else {
            base.clipsToBounds = true
            base.layer.cornerRadius = cornerRadius
        }
        
        return self
    }
    
    @discardableResult
    func roundCorners(_ corners: UIRectCorner, radius: CGFloat)  -> OhConfigureWrapper {
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
    func masksToBounds(_ flag: Bool) -> OhConfigureWrapper {
        base.layer.masksToBounds = flag
        return self
    }
    
    @discardableResult
    func borderWidth(_ width: CGFloat) -> OhConfigureWrapper {
        base.layer.borderWidth = width
        return self
    }
    
    @discardableResult
    func borderColor(_ color: UIColor) -> OhConfigureWrapper {
        base.layer.borderColor = color.cgColor
        return self
    }
    
    @discardableResult
    func border(color: UIColor, width: CGFloat) -> OhConfigureWrapper {
        base.layer.borderColor = color.cgColor
        base.layer.borderWidth = width
        return self
    }
    
    @discardableResult
    func shadowColor(_ shadowColor: UIColor) -> OhConfigureWrapper {
        base.layer.shadowColor = shadowColor.cgColor
        return self
    }
    
    @discardableResult
    func shadowOpacity(_ shadowOpacity: Float) -> OhConfigureWrapper {
        base.layer.shadowOpacity = shadowOpacity
        return self
    }
    
    @discardableResult
    func shadowOffset(_ shadowOffset: CGSize) -> OhConfigureWrapper {
        base.layer.shadowOffset = shadowOffset
        return self
    }
    
    @discardableResult
    func shadowRadius(_ shadowRadius: CGFloat) -> OhConfigureWrapper {
        base.layer.shadowRadius = shadowRadius
        return self
    }
    
    @discardableResult
    func addShadow(color: UIColor, radius: CGFloat, offsetX x: CGFloat = 0, y: CGFloat = 0, opacity: Float) -> OhConfigureWrapper {
        base.layer.shadowColor = color.cgColor
        base.layer.shadowRadius = radius
        base.layer.shadowOpacity = opacity
        base.layer.shadowOffset = CGSize(width: x, height: y)
        return self
    }
}
