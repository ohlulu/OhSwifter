//
//  UICollectionViewFlowLayout+Oh.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/26.
//  Copyright © 2019 ohlulu. All rights reserved.
//

extension UICollectionViewFlowLayout: OhConfigurator {
    
}

public extension OhSwifter where Base: UICollectionViewFlowLayout {
    
    @discardableResult
    func minimumLineSpacing(_ spacing: CGFloat) -> OhSwifter {
        base.minimumLineSpacing = spacing
        return self
    }
    
    @discardableResult
    func minimumInteritemSpacing(_ spacing: CGFloat) -> OhSwifter {
        base.minimumInteritemSpacing = spacing
        return self
    }
    
    @discardableResult
    func spacing(forV v: CGFloat, h: CGFloat) -> OhSwifter {
        base.minimumInteritemSpacing = h
        base.minimumLineSpacing = v
        return self
    }
    
    @discardableResult
    func sectionInset(_ inset: UIEdgeInsets) -> OhSwifter {
        base.sectionInset = inset
        return self
    }
    
    @discardableResult
    func estimatedItemSize(_ size: CGSize) -> OhSwifter {
        base.estimatedItemSize = size
        return self
    }
    
    @discardableResult
    func itemSize(_ size: CGSize) -> OhSwifter {
        base.itemSize = size
        return self
    }
    
    @discardableResult
    func scrollDirection(_ direction: UICollectionView.ScrollDirection) -> OhSwifter {
        base.scrollDirection = direction
        return self
    }
}

