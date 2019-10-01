//
//  UIEdgeInsets+Ext.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/10/1.
//  Copyright © 2019 ohlulu. All rights reserved.
//

import UIKit

public extension UIEdgeInsets {
    init(edge: CGFloat) {
        self.init(top: edge, left: edge, bottom: edge, right: edge)
    }
    
    init(horizontalEdge edge: CGFloat) {
        self.init(top: 0, left: edge, bottom: 0, right: edge)
    }
    
    init(verticalEdge edge: CGFloat) {
        self.init(top: edge, left: 0, bottom: edge, right: 0)
    }
}
