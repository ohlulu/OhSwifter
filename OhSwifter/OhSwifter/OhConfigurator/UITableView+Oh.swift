//
//  UITableView+Oh.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/7.
//  Copyright © 2019 ohlulu. All rights reserved.
//

public extension OhConfigureWrapper where Base: UITableView {
    
    @discardableResult
    func regiter<T>(_ cell: T.Type) -> OhConfigureWrapper where T: UITableViewCell {
        base.register(cell: cell)
        return self
    }
    
    @discardableResult
    func separatorStyle(_ separatorStyle: UITableViewCell.SeparatorStyle) -> OhConfigureWrapper {
        base.separatorStyle = separatorStyle
        return self
    }
    
    @discardableResult
    func separatorInset(_ separatorInset: UIEdgeInsets) -> OhConfigureWrapper {
        base.separatorInset = separatorInset
        return self
    }
    
    @discardableResult
    func separatorColor(_ separatorColor: UIColor) -> OhConfigureWrapper {
        base.separatorColor = separatorColor
        return self
    }
    
    @discardableResult
    func allowsSelection(_ allowsSelection: Bool) -> OhConfigureWrapper {
        base.allowsSelection = allowsSelection
        return self
    }
    
    @discardableResult
    func setEditing(_ editing: Bool, animated: Bool) -> OhConfigureWrapper {
        base.setEditing(editing, animated: animated)
        return self
    }
    
    enum EstimatedSectionView {
        case header, footer, row
    }
    
    @discardableResult
    func estimatedSectionHeight(_ height: CGFloat, for sectionView: EstimatedSectionView) -> OhConfigureWrapper {
        switch sectionView {
        case .header:
            base.estimatedRowHeight = height
        case .footer:
            base.estimatedSectionHeaderHeight = height
        case .row:
            base.estimatedSectionFooterHeight = height
        }
        return self
    }
}

