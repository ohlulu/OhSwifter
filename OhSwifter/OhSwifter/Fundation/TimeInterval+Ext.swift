//
//  TimeIntervalExtension.swift
//  Deloitte
//
//  Created by ohlulu on 2019/1/15.
//  Copyright © 2019 Goons. All rights reserved.
//

import Foundation


extension TimeInterval {
    
    var dateSince1970: Date{
        return Date(timeIntervalSince1970: self)
    }
}
