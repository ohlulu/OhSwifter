//
//  OhConfigurator.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/4.
//  Copyright © 2019 ohlulu. All rights reserved.
//

import Foundation

public struct OhConfigureWrapper<Base> {
    public let base: Base
    public init(_ base: Base) {
        self.base = base
    }
}

public protocol OhConfigurator {
    
}

public extension OhConfigurator {
    var oh: OhConfigureWrapper<Self> {
        get { return OhConfigureWrapper(self) }
        set { }
    }
}

public extension OhConfigureWrapper {
    
    @discardableResult
    func done() -> Base {
        return base
    }
}

public extension OhConfigureWrapper {
    
    func creatConfigurator(_ maker: (_ make: Base) -> Void) -> OhConfigureWrapper {
        maker(base)
        return self
    }
}

extension UILabel: OhConfigurator { }
