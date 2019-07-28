//
//  UICollectionViewExtenion.swift
//  Deloitte
//
//  Created by ohlulu on 2019/1/17.
//  Copyright © 2019 Goons. All rights reserved.
//

import UIKit

extension UICollectionView {
    func register<T: UICollectionViewCell> (cell: T.Type?) {
        register(T.self, forCellWithReuseIdentifier: String(describing: T.self))
    }
    
    func dequeueReuseableCell<T: UICollectionViewCell>(indexPath: IndexPath) -> T {
        return dequeueReusableCell(withReuseIdentifier: String(describing: T.self), for: indexPath) as! T
    }
    
    func reloadData(_ completion: @escaping Completion) {
        UIView.animate(withDuration: 0, animations: {
            self.reloadData()
        }) { (flag) in
            completion()
        }
    }
}
