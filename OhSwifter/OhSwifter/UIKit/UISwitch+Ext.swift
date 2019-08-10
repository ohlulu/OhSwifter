//
//  UISwitch+Ext.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/10.
//  Copyright © 2019 ohlulu. All rights reserved.
//

import UIKit

extension UISwitch {
    
    func toggle(animated: Bool) {
        setOn(!isOn, animated: animated)
    }
}
