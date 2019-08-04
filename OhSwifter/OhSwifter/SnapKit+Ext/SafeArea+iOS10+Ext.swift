//
//  SafeArea+iOS10+Ext.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/4.
//  Copyright © 2019 ohlulu. All rights reserved.
//

#if canImport(SnapKit)
import SnapKit

extension ConstraintMaker {
    func equalToTopSafeAreaLayoutGuid(on vc: UIViewController)
        -> ConstraintMakerEditable {
            if #available(iOS 11.0, *) {
                return top.equalTo(vc.view.safeAreaLayoutGuide.snp.top)
            } else {
                return top.equalTo(vc.topLayoutGuide.snp.bottom)
            }
    }
    
    func equalToBottomSafeAreaLayoutGuid(on vc: UIViewController)
        -> ConstraintMakerEditable {
            if #available(iOS 11.0, *) {
                return top.equalTo(vc.view.safeAreaLayoutGuide.snp.bottom)
            } else {
                return top.equalTo(vc.bottomLayoutGuide.snp.top)
            }
    }
}

#endif
