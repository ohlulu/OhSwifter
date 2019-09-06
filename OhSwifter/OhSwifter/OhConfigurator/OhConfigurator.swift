//
//  OhConfigurator.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/4.
//  Copyright © 2019 ohlulu. All rights reserved.
//

import UIKit

public struct OhSwifter<Base> {
    public let base: Base
    public init(_ base: Base) {
        self.base = base
    }
}

public protocol OhConfigurator {
    
}

public extension OhConfigurator {
    var oh: OhSwifter<Self> {
        get { return OhSwifter(self) }
        set { }
    }
}

public extension OhSwifter {
    
    @discardableResult
    func done() -> Base {
        return base
    }
}

public extension OhSwifter {
    
    @discardableResult
    func createConfigurator(_ maker: (_ make: Base) -> Void) -> OhSwifter {
        maker(base)
        return self
    }
}

extension UIView: OhConfigurator { }
