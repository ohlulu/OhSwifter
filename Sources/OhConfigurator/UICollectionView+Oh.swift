//
//  UICollectionView+Oh.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/9.
//  Copyright © 2019 ohlulu. All rights reserved.
//

public extension UICollectionView {
    
    enum SectionType {
        
        case header
        case footer
        var elementKindString: String {
            switch self {
            case .header: return UICollectionView.elementKindSectionHeader
            case .footer: return UICollectionView.elementKindSectionFooter
            }
        }
    }
}

public extension OhSwifter where Base: UICollectionView {
    
    @discardableResult
    func dataSource(_ dataSource: UICollectionViewDataSource) -> OhSwifter {
        base.dataSource = dataSource
        return self
    }
    
    @discardableResult
    func delegate(_ delegate: UICollectionViewDelegate) -> OhSwifter {
        base.delegate = delegate
        return self
    }
    
    typealias CollectionViewDelegateAndDataScource = UICollectionViewDelegate & UICollectionViewDataSource
    @discardableResult
    func delegateAndDataScource(_ delegateAndDataScource: CollectionViewDelegateAndDataScource) -> OhSwifter {
        return dataSource(delegateAndDataScource)
            .delegate(delegateAndDataScource)
    }
    
    @discardableResult
    func register<T>(_ cell: T.Type) -> OhSwifter where T: UICollectionViewCell {
        base.registerCell(type: cell)
        return self
    }
    
    @discardableResult
    func registerSupplementaryView(_ view: AnyClass, kind: UICollectionView.SectionType) -> OhSwifter {
        base.register(view.self, forSupplementaryViewOfKind: kind.elementKindString, withReuseIdentifier: String(describing: view.self))
        return self
    }
    
    @discardableResult
    func isPagingEnabled(_ flag: Bool) -> OhSwifter {
        base.isPagingEnabled = flag
        return self
    }
    
    @discardableResult
    func showsHorizontalScrollIndicator(_ flag: Bool) -> OhSwifter {
        base.showsHorizontalScrollIndicator = flag
        return self
    }
    
    @discardableResult
    func showsVerticalScrollIndicator(_ flag: Bool) -> OhSwifter {
        base.showsVerticalScrollIndicator = flag
        return self
    }
}
