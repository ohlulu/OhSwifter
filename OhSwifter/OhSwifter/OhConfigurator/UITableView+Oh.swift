//
//  UITableView+Oh.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/7.
//  Copyright © 2019 ohlulu. All rights reserved.
//

public extension OhSwifter where Base: UITableView {
    
    @discardableResult
    func dataSource(_ dataSource: UITableViewDataSource) -> OhSwifter {
        base.dataSource = dataSource
        return self
    }
    
    @discardableResult
    func delegate(_ delegate: UITableViewDelegate) -> OhSwifter {
        base.delegate = delegate
        return self
    }
    
    typealias TableViewDelegateAndDataScourde = UITableViewDelegate & UITableViewDataSource
    @discardableResult
    func delegateAndDataScourde(_ delegateAndDataScourde: TableViewDelegateAndDataScourde) -> OhSwifter {
        return dataSource(delegateAndDataScourde)
            .delegate(delegateAndDataScourde)
    }
    
    @discardableResult
    func regiter<T>(_ cell: T.Type) -> OhSwifter where T: UITableViewCell {
        base.register(cell: cell)
        return self
    }
    
    @discardableResult
    func separatorStyle(_ separatorStyle: UITableViewCell.SeparatorStyle) -> OhSwifter {
        base.separatorStyle = separatorStyle
        return self
    }
    
    @discardableResult
    func separatorInset(_ separatorInset: UIEdgeInsets) -> OhSwifter {
        base.separatorInset = separatorInset
        return self
    }
    
    @discardableResult
    func separatorColor(_ separatorColor: UIColor) -> OhSwifter {
        base.separatorColor = separatorColor
        return self
    }
    
    @discardableResult
    func allowsSelection(_ allowsSelection: Bool) -> OhSwifter {
        base.allowsSelection = allowsSelection
        return self
    }
    
    @discardableResult
    func setEditing(_ editing: Bool, animated: Bool) -> OhSwifter {
        base.setEditing(editing, animated: animated)
        return self
    }
    
    enum EstimatedSectionView {
        case header, footer, row
    }
    
    @discardableResult
    func estimatedSectionHeight(_ height: CGFloat, for sectionView: EstimatedSectionView) -> OhSwifter {
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

