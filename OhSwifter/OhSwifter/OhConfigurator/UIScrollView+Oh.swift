//
//  UIScrollView+Oh.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/7.
//  Copyright © 2019 ohlulu. All rights reserved.
//

public extension OhSwifter where Base: UIScrollView {
    
    @discardableResult
    func delegate(_ delegate: UIScrollViewDelegate) -> OhSwifter {
        base.delegate = delegate
        return self
    }
    
    @discardableResult
    func directionalLockEnabled(_ isDirectionalLockEnabled: Bool) -> OhSwifter {
        base.isDirectionalLockEnabled = isDirectionalLockEnabled
        return self
    }
    
    @discardableResult
    func bounces(_ bounces: Bool) -> OhSwifter {
        base.bounces = bounces
        return self
    }
    
    @discardableResult
    func alwaysBounceVertical(_ alwaysBounceVertical: Bool) -> OhSwifter {
        base.alwaysBounceVertical = alwaysBounceVertical
        return self
    }
    
    @discardableResult
    func alwaysBounceHorizontal(_ alwaysBounceHorizontal: Bool) -> OhSwifter {
        base.alwaysBounceHorizontal = alwaysBounceHorizontal
        return self
    }
    
    @discardableResult
    func pagingEnabled(_ isPagingEnabled: Bool) -> OhSwifter {
        base.isPagingEnabled = isPagingEnabled
        return self
    }
    
    @discardableResult
    func scrollEnabled(_ isScrollEnabled: Bool) -> OhSwifter {
        base.isScrollEnabled = isScrollEnabled
        return self
    }
    
    @discardableResult
    func showsHorizontalIndicator(_ showsHorizontalScrollIndicator: Bool) -> OhSwifter {
        base.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator
        return self
    }
    
    @discardableResult
    func showsVerticalIndicator(_ showsVerticalScrollIndicator: Bool) -> OhSwifter {
        base.showsVerticalScrollIndicator = showsVerticalScrollIndicator
        return self
    }
    
    @discardableResult
    func scrollIndicatorInsets(_ scrollIndicatorInsets: UIEdgeInsets) -> OhSwifter {
        base.scrollIndicatorInsets = scrollIndicatorInsets
        return self
    }
    
    @discardableResult
    func indicatorStyle(_ indicatorStyle: UIScrollView.IndicatorStyle) -> OhSwifter {
        base.indicatorStyle = indicatorStyle
        return self
    }
    
    @discardableResult
    func contentInset(_ insets: UIEdgeInsets) -> OhSwifter {
        base.contentInset = insets
        return self
    }
    
    @discardableResult
    func setContentOffset(_ offset: CGPoint, animated: Bool) -> OhSwifter {
        base.setContentOffset(offset, animated: animated)
        return self
    }
    
    @discardableResult
    func contentOffset(_ offset: CGPoint) -> OhSwifter {
        base.contentOffset = offset
        return self
    }
    
    @discardableResult
    func contentSize(_ size: CGSize) -> OhSwifter {
        base.contentSize = size
        return self
    }
    
    @discardableResult
    func scrollRectToVisibleRect(_ rect: CGRect, animated: Bool) -> OhSwifter {
        base.scrollRectToVisible(rect, animated: animated)
        return self
    }
    
    @discardableResult
    func minimumZoomScale(_ minimumZoomScale: CGFloat) -> OhSwifter {
        base.minimumZoomScale = minimumZoomScale
        return self
    }
    
    @discardableResult
    func maximumZoomScale(_ maximumZoomScale: CGFloat) -> OhSwifter {
        base.maximumZoomScale = maximumZoomScale
        return self
    }
    
    @discardableResult
    func zoomScale(_ zoomScale: CGFloat) -> OhSwifter {
        base.zoomScale = zoomScale
        return self
    }
    
    @discardableResult
    func setZoomScaleOnScrollView(_ scale: CGFloat, animated: Bool) -> OhSwifter {
        base.setZoomScale(scale, animated: animated)
        return self
    }
    
    @discardableResult
    func bouncesZoom(_ bouncesZoom: Bool) -> OhSwifter {
        base.bouncesZoom = bouncesZoom
        return self
    }
    
    @discardableResult
    func scrollsToTop(_ scrollsToTop: Bool) -> OhSwifter {
        base.scrollsToTop = scrollsToTop
        return self
    }
    
    @discardableResult
    func keyboardDismissMode(_ keyboardDismissMode: UIScrollView.KeyboardDismissMode) -> OhSwifter {
        base.keyboardDismissMode = keyboardDismissMode
        return self
    }
    
    @discardableResult
    func refreshControl(_ refreshControl: UIRefreshControl?) -> OhSwifter {
        base.refreshControl = refreshControl
        return self
    }
    
    @discardableResult
    func enableHeightToFit(_ flag: Bool) -> OhSwifter {
        base.enableHeightToFit = flag
        return self
    }
    
    @discardableResult
    func maximunHeightToFit(_ height: CGFloat) -> OhSwifter {
        base.maximunHeightToFit = height
        return self
    }
    
    @discardableResult
    func minimunHeightToFit(_ height: CGFloat) -> OhSwifter {
        base.minimunHeightToFit = height
        return self
    }
}


