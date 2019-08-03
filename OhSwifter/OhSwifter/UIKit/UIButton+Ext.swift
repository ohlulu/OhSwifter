//
//  ButtonProtocol.swift
//  Deloitte
//
//  Created by ohlulu on 2018/12/17.
//  Copyright © 2018 Goons. All rights reserved.
//

import UIKit

public extension UIButton {
    
    convenience init(size: CGSize) {
        self.init(frame: CGRect(origin: .zero, size: size))
    }
    
}
