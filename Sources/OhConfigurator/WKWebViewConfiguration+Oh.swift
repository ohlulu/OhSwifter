//
//  WKWebViewConfiguration+Oh.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/10/15.
//  Copyright © 2019 ohlulu. All rights reserved.
//

import WebKit

extension WKWebViewConfiguration: OhConfigurator { }

public extension OhSwifter where Base: WKWebViewConfiguration {
    
    @discardableResult
    func injectionMetaAttribute() -> OhSwifter {
        
        let jScript = """
            var meta = document.createElement('meta');
            meta.setAttribute('name', 'viewport');
            meta.setAttribute('content', 'width=device-width');
            document.getElementsByTagName('head')[0].appendChild(meta);
        """
        
        // 注入
        let wkUserScript = WKUserScript(source: jScript,
                                        injectionTime: .atDocumentEnd,
                                        forMainFrameOnly: true)
        let wkUserController = WKUserContentController()
        wkUserController.addUserScript(wkUserScript)
        
        // 設置
        base.userContentController = wkUserController
        
        return self
    }
    
}
