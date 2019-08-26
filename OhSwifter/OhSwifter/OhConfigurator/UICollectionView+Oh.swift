//
//  UICollectionView+Oh.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/9.
//  Copyright © 2019 ohlulu. All rights reserved.
//

public extension OhConfigureWrapper where Base: UICollectionView {
    
    @discardableResult
    func regiter<T>(_ cell: T.Type) -> OhConfigureWrapper where T: UICollectionViewCell {
        base.register(cell: cell)
        return self
    }
}
