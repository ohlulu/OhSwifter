//
//  UIEdgeInsets+Ext.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/10/1.
//  Copyright © 2019 ohlulu. All rights reserved.
//

import UIKit

/// Initialize
public extension UIEdgeInsets {
    init(edge: CGFloat) {
        self.init(top: edge, left: edge, bottom: edge, right: edge)
    }
    
    init(top: CGFloat? = 0, left: CGFloat? = 0, bottom: CGFloat? = 0, right: CGFloat? = 0, default defaultValue: CGFloat = 0) {
        self.init(top: top ?? defaultValue, left: left ?? defaultValue, bottom: bottom ?? defaultValue, right: right ?? defaultValue)
    }
    
    init(horizontalEdge edge: CGFloat) {
        self.init(top: 0, left: edge, bottom: 0, right: edge)
    }
    
    init(verticalEdge edge: CGFloat) {
        self.init(top: edge, left: 0, bottom: edge, right: 0)
    }
    
    init(horizontalEdge hEdge: CGFloat, verticalEdge vEdge: CGFloat) {
        self.init(top: vEdge, left: hEdge, bottom: vEdge, right: hEdge)
    }
}

/// Usage
public extension UIEdgeInsets {
    var vertical: CGFloat {
        return top + bottom
    }
    
    var horizontal: CGFloat {
        return left + right
    }
}
