//
//  ArrayEntension.swift
//  Deloitte
//
//  Created by ohlulu on 2019/1/15.
//  Copyright © 2019 Goons. All rights reserved.
//

import Foundation

extension Array {
    
    /// Return `nil` if index out of range
    ///
    /// - Parameter index: index in array
    subscript(safe index: Int?) -> Element? {
        guard let index = index else { return nil }
        return indices.contains(index) ? self[index] : nil
    }
    
    func groupByKey<K: Hashable>(_ keyForValue: (Element) -> K) -> [K: [Element]] {
        var group = [K: [Element]]()
        for value in self {
            let key = keyForValue(value)
            group[key] = (group[key] ?? []) + [value]
            
        }
        return group
    }
}
