//
//  UITableViewExtension.swift
//  Deloitte
//
//  Created by ohlulu on 2018/12/21.
//  Copyright © 2018 Goons. All rights reserved.
//

import UIKit

extension UITableView {
    func register<T: UITableViewCell> (cell: T.Type?) {
        register(T.self, forCellReuseIdentifier: String(describing: T.self))
    }
    
    func dequeueReuseableCell<T: UITableViewCell>(indexPath: IndexPath) -> T {
        return dequeueReusableCell(withIdentifier: String(describing: T.self), for: indexPath) as! T
    }
    
    func reloadData(_ completion: @escaping Completion) {
        UIView.animate(withDuration: 0, animations: {
            self.reloadData()
        }) { (flag) in
            completion()
        }
    }
    
    func scrollToTop(animated: Bool = true) {
        setContentOffset(CGPoint.zero, animated: animated)
    }
    
    func scrollToBottom(animated: Bool = true) {
        let bottomOffset = CGPoint(x: 0, y: contentSize.height - bounds.size.height)
        setContentOffset(bottomOffset, animated: animated)
    }
}
