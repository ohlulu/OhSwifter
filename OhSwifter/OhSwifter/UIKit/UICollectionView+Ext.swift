//
//  UICollectionViewExtenion.swift
//  Deloitte
//
//  Created by ohlulu on 2019/1/17.
//  Copyright © 2019 Goons. All rights reserved.
//

import UIKit

public extension UICollectionView {
    
    func register<T: UICollectionViewCell> (cell: T.Type?) {
        register(T.self, forCellWithReuseIdentifier: String(describing: T.self))
    }
    
    func dequeueReuseableCell<T: UICollectionViewCell>(indexPath: IndexPath) -> T {
        return dequeueReusableCell(withReuseIdentifier: String(describing: T.self), for: indexPath) as! T
    }
    
    enum SectionType {
        case header
        case footer
        var parameter: String {
            switch self {
            case .header: return UICollectionView.elementKindSectionHeader
            case .footer: return UICollectionView.elementKindSectionFooter
            }
        }
    }
    
    func registerSupplementaryView(_ view: AnyClass, kind: SectionType) {
        register(view.self, forSupplementaryViewOfKind: kind.parameter, withReuseIdentifier: String(describing: view.self))
    }
    
    func dequeueReuseableSupplementaryView<T: UICollectionReusableView>(indexPath: IndexPath, ofKind kind: SectionType) -> T {
        return dequeueReusableSupplementaryView(ofKind: kind.parameter, withReuseIdentifier: String(describing: T.self), for: indexPath) as! T
    }
    
    func reloadData(_ completion: @escaping Completion) {
        UIView.animate(withDuration: 0, animations: {
            self.reloadData()
        }) { (flag) in
            completion()
        }
    }
}
