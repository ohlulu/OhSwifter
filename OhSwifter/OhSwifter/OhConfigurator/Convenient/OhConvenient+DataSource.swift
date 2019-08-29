//
//  OhConvenient+DataSource.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/9.
//  Copyright © 2019 ohlulu. All rights reserved.
//

public protocol SwiftOriginDataSource: class {
    associatedtype DataSource
    var dataSource: DataSource { get set }
}

public extension OhConfigureWrapper where Base: SwiftOriginDataSource {
    
    @discardableResult
    func dataSource(_ dataSource: Base.DataSource) -> OhConfigureWrapper {
        base.dataSource = dataSource
        return self
    }
}

extension UITableView: SwiftOriginDataSource { }
extension UICollectionView: SwiftOriginDataSource { }
extension UIPickerView: SwiftOriginDataSource { }
