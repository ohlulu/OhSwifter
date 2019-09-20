//
//  SafeCollection.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/9/4.
//  Copyright © 2019 ohlulu. All rights reserved.
//

import Foundation
public struct SafeRangeable<Base> {
    
    let base: Base
    init(_ base: Base) {
        self.base = base
    }
}

extension SafeRangeable where Base == String {
    subscript(_ bounds: CountableClosedRange<Int>) -> String {
        if bounds.lowerBound >= base.count || bounds.upperBound < 0 {
            return ""
        }
        let lowerBound = Swift.max(bounds.lowerBound, 0)
        let start = base.index(base.startIndex, offsetBy: lowerBound)
        let upperBound = Swift.min(bounds.upperBound, base.count-1)
        let end = base.index(base.startIndex, offsetBy: upperBound)
        return String(base[start...end])
    }
}

public struct SafeCollectionable<Base> where Base: Collection {
    
    let base: Base
    init(_ base: Base) {
        self.base = base
    }
    
    public subscript(_ index: Base.Index) -> Base.Element? {
        guard base.indices.contains(index) else { return nil }
        return base[index]
    }
}

public extension Collection {
    var safe: SafeCollectionable<Self> {
        return .init(self)
    }
}
