//
//  DoubleExtension.swift
//  Deloitte
//
//  Created by ohlulu on 2019/1/23.
//  Copyright © 2019 Goons. All rights reserved.
//

import Foundation

extension Double {
    var cleanDecimalPoint: String {
        let isInt = truncatingRemainder(dividingBy: 1) == 0
        return isInt ? String(format: "%.0f", self) : String(self)
    }
}
