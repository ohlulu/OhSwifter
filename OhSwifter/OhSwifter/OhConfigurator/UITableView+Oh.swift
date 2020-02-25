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
    
    typealias TableViewDelegateAndDataScource = UITableViewDelegate & UITableViewDataSource
    @discardableResult
    func delegateAndDataScource(_ delegateAndDataScource: TableViewDelegateAndDataScource) -> OhSwifter {
        return dataSource(delegateAndDataScource)
            .delegate(delegateAndDataScource)
    }
    
    @discardableResult
    func register<T>(_ cell: T.Type) -> OhSwifter where T: UITableViewCell {
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
    
    enum SectionType {
        case header, footer, row
    }
    
    @discardableResult
    func estimatedHeight(_ height: CGFloat, for sectionType: SectionType) -> OhSwifter {
        switch sectionType {
        case .header:
            base.estimatedRowHeight = height
        case .footer:
            base.estimatedSectionHeaderHeight = height
        case .row:
            base.estimatedSectionFooterHeight = height
        }
        return self
    }
    
    @discardableResult
    func rawHeight(_ height: CGFloat, for sectionType: SectionType) -> OhSwifter {
        switch sectionType {
        case .header:
            base.sectionHeaderHeight = height
        case .footer:
            base.sectionFooterHeight = height
        case .row:
            base.rowHeight = height
        }
        return self
    }
    
    @discardableResult
    func sectionView(_ view: UIView, for sectionType: SectionType) -> OhSwifter {
        switch sectionType {
        case .header:
            base.tableHeaderView = view
        case .footer:
            base.tableFooterView = view
        case .row:
            break
        }
        return self
    }
}

