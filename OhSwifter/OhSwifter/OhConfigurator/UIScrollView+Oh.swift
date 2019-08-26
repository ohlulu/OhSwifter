//
//  UIScrollView+Oh.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/7.
//  Copyright © 2019 ohlulu. All rights reserved.
//

public extension OhConfigureWrapper where Base: UIScrollView {
    
    @discardableResult
    public func directionalLockEnabled(_ isDirectionalLockEnabled: Bool) -> OhConfigureWrapper {
        base.isDirectionalLockEnabled = isDirectionalLockEnabled
        return self
    }
    
    @discardableResult
    public func bounces(_ bounces: Bool) -> OhConfigureWrapper {
        base.bounces = bounces
        return self
    }
    
    @discardableResult
    public func alwaysBounceVertical(_ alwaysBounceVertical: Bool) -> OhConfigureWrapper {
        base.alwaysBounceVertical = alwaysBounceVertical
        return self
    }
    
    @discardableResult
    public func alwaysBounceHorizontal(_ alwaysBounceHorizontal: Bool) -> OhConfigureWrapper {
        base.alwaysBounceHorizontal = alwaysBounceHorizontal
        return self
    }
    
    @discardableResult
    public func pagingEnabled(_ isPagingEnabled: Bool) -> OhConfigureWrapper {
        base.isPagingEnabled = isPagingEnabled
        return self
    }
    
    @discardableResult
    public func scrollEnabled(_ isScrollEnabled: Bool) -> OhConfigureWrapper {
        base.isScrollEnabled = isScrollEnabled
        return self
    }
    
    @discardableResult
    public func showsHorizontalIndicator(_ showsHorizontalScrollIndicator: Bool) -> OhConfigureWrapper {
        base.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator
        return self
    }
    
    @discardableResult
    public func showsVerticalIndicator(_ showsVerticalScrollIndicator: Bool) -> OhConfigureWrapper {
        base.showsVerticalScrollIndicator = showsVerticalScrollIndicator
        return self
    }
    
    @discardableResult
    public func scrollIndicatorInsets(_ scrollIndicatorInsets: UIEdgeInsets) -> OhConfigureWrapper {
        base.scrollIndicatorInsets = scrollIndicatorInsets
        return self
    }
    
    @discardableResult
    public func indicatorStyle(_ indicatorStyle: UIScrollView.IndicatorStyle) -> OhConfigureWrapper {
        base.indicatorStyle = indicatorStyle
        return self
    }
    
    @discardableResult
    public func contentInset(_ insets: UIEdgeInsets) -> OhConfigureWrapper {
        base.contentInset = insets
        return self
    }
    
    @discardableResult
    public func setContentOffset(_ offset: CGPoint, animated: Bool) -> OhConfigureWrapper {
        base.setContentOffset(offset, animated: animated)
        return self
    }
    
    @discardableResult
    public func contentOffset(_ offset: CGPoint) -> OhConfigureWrapper {
        base.contentOffset = offset
        return self
    }
    
    @discardableResult
    public func contentSize(_ size: CGSize) -> OhConfigureWrapper {
        base.contentSize = size
        return self
    }
    
    @discardableResult
    public func scrollRectToVisibleRect(_ rect: CGRect, animated: Bool) -> OhConfigureWrapper {
        base.scrollRectToVisible(rect, animated: animated)
        return self
    }
    
    @discardableResult
    public func minimumZoomScale(_ minimumZoomScale: CGFloat) -> OhConfigureWrapper {
        base.minimumZoomScale = minimumZoomScale
        return self
    }
    
    @discardableResult
    public func maximumZoomScale(_ maximumZoomScale: CGFloat) -> OhConfigureWrapper {
        base.maximumZoomScale = maximumZoomScale
        return self
    }
    
    @discardableResult
    public func zoomScale(_ zoomScale: CGFloat) -> OhConfigureWrapper {
        base.zoomScale = zoomScale
        return self
    }
    
    @discardableResult
    public func setZoomScaleOnScrollView(_ scale: CGFloat, animated: Bool) -> OhConfigureWrapper {
        base.setZoomScale(scale, animated: animated)
        return self
    }
    
    @discardableResult
    public func bouncesZoom(_ bouncesZoom: Bool) -> OhConfigureWrapper {
        base.bouncesZoom = bouncesZoom
        return self
    }
    
    @discardableResult
    public func scrollsToTop(_ scrollsToTop: Bool) -> OhConfigureWrapper {
        base.scrollsToTop = scrollsToTop
        return self
    }
    
    @discardableResult
    public func keyboardDismissMode(_ keyboardDismissMode: UIScrollView.KeyboardDismissMode) -> OhConfigureWrapper {
        base.keyboardDismissMode = keyboardDismissMode
        return self
    }
    
    @discardableResult
    public func refreshControl(_ refreshControl: UIRefreshControl?) -> OhConfigureWrapper {
        base.refreshControl = refreshControl
        return self
    }
}


