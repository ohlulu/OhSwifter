//
//  UIPageControl+Oh.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/9/14.
//  Copyright © 2019 ohlulu. All rights reserved.
//

import Foundation

public extension OhSwifter where Base: UIPageControl {
    
    @discardableResult
    func numberOfPages(_ number: Int) -> OhSwifter {
        base.numberOfPages = number
        return self
    }
    
    @discardableResult
    func pageIndicatorTintColor(_ color: UIColor) -> OhSwifter {
        base.pageIndicatorTintColor = color
        return self
    }
    
    @discardableResult
    func currentPageIndicatorTintColor(_ color: UIColor) -> OhSwifter {
        base.currentPageIndicatorTintColor = color
        return self
    }
    
    @discardableResult
    func currentPage(_ index: Int) -> OhSwifter {
        base.currentPage = index
        return self
    }
    
    @discardableResult
    func hidesForSinglePage(_ flag: Bool) -> OhSwifter {
        base.hidesForSinglePage = flag
        return self
    }
}
