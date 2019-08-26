//
//  UIScrollView+Oh.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/7.
//  Copyright © 2019 ohlulu. All rights reserved.
//

public extension OhConfigureWrapper where Base: UIScrollView {
    
    @discardableResult
    func directionalLockEnabled(_ isDirectionalLockEnabled: Bool) -> OhConfigureWrapper {
        base.isDirectionalLockEnabled = isDirectionalLockEnabled
        return self
    }
    
    @discardableResult
    func bounces(_ bounces: Bool) -> OhConfigureWrapper {
        base.bounces = bounces
        return self
    }
    
    @discardableResult
    func alwaysBounceVertical(_ alwaysBounceVertical: Bool) -> OhConfigureWrapper {
        base.alwaysBounceVertical = alwaysBounceVertical
        return self
    }
    
    @discardableResult
    func alwaysBounceHorizontal(_ alwaysBounceHorizontal: Bool) -> OhConfigureWrapper {
        base.alwaysBounceHorizontal = alwaysBounceHorizontal
        return self
    }
    
    @discardableResult
    func pagingEnabled(_ isPagingEnabled: Bool) -> OhConfigureWrapper {
        base.isPagingEnabled = isPagingEnabled
        return self
    }
    
    @discardableResult
    func scrollEnabled(_ isScrollEnabled: Bool) -> OhConfigureWrapper {
        base.isScrollEnabled = isScrollEnabled
        return self
    }
    
    @discardableResult
    func showsHorizontalIndicator(_ showsHorizontalScrollIndicator: Bool) -> OhConfigureWrapper {
        base.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator
        return self
    }
    
    @discardableResult
    func showsVerticalIndicator(_ showsVerticalScrollIndicator: Bool) -> OhConfigureWrapper {
        base.showsVerticalScrollIndicator = showsVerticalScrollIndicator
        return self
    }
    
    @discardableResult
    func scrollIndicatorInsets(_ scrollIndicatorInsets: UIEdgeInsets) -> OhConfigureWrapper {
        base.scrollIndicatorInsets = scrollIndicatorInsets
        return self
    }
    
    @discardableResult
    func indicatorStyle(_ indicatorStyle: UIScrollView.IndicatorStyle) -> OhConfigureWrapper {
        base.indicatorStyle = indicatorStyle
        return self
    }
    
    @discardableResult
    func contentInset(_ insets: UIEdgeInsets) -> OhConfigureWrapper {
        base.contentInset = insets
        return self
    }
    
    @discardableResult
    func setContentOffset(_ offset: CGPoint, animated: Bool) -> OhConfigureWrapper {
        base.setContentOffset(offset, animated: animated)
        return self
    }
    
    @discardableResult
    func contentOffset(_ offset: CGPoint) -> OhConfigureWrapper {
        base.contentOffset = offset
        return self
    }
    
    @discardableResult
    func contentSize(_ size: CGSize) -> OhConfigureWrapper {
        base.contentSize = size
        return self
    }
    
    @discardableResult
    func scrollRectToVisibleRect(_ rect: CGRect, animated: Bool) -> OhConfigureWrapper {
        base.scrollRectToVisible(rect, animated: animated)
        return self
    }
    
    @discardableResult
    func minimumZoomScale(_ minimumZoomScale: CGFloat) -> OhConfigureWrapper {
        base.minimumZoomScale = minimumZoomScale
        return self
    }
    
    @discardableResult
    func maximumZoomScale(_ maximumZoomScale: CGFloat) -> OhConfigureWrapper {
        base.maximumZoomScale = maximumZoomScale
        return self
    }
    
    @discardableResult
    func zoomScale(_ zoomScale: CGFloat) -> OhConfigureWrapper {
        base.zoomScale = zoomScale
        return self
    }
    
    @discardableResult
    func setZoomScaleOnScrollView(_ scale: CGFloat, animated: Bool) -> OhConfigureWrapper {
        base.setZoomScale(scale, animated: animated)
        return self
    }
    
    @discardableResult
    func bouncesZoom(_ bouncesZoom: Bool) -> OhConfigureWrapper {
        base.bouncesZoom = bouncesZoom
        return self
    }
    
    @discardableResult
    func scrollsToTop(_ scrollsToTop: Bool) -> OhConfigureWrapper {
        base.scrollsToTop = scrollsToTop
        return self
    }
    
    @discardableResult
    func keyboardDismissMode(_ keyboardDismissMode: UIScrollView.KeyboardDismissMode) -> OhConfigureWrapper {
        base.keyboardDismissMode = keyboardDismissMode
        return self
    }
    
    @discardableResult
    func refreshControl(_ refreshControl: UIRefreshControl?) -> OhConfigureWrapper {
        base.refreshControl = refreshControl
        return self
    }
}


