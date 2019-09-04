//
//  SafeCollection.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/9/4.
//  Copyright © 2019 ohlulu. All rights reserved.
//

import Foundation

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
