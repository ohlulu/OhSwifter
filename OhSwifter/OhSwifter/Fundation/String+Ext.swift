//
//  StringExtension.swift
//  Deloitte
//
//  Created by ohlulu on 2019/1/17.
//  Copyright © 2019 Goons. All rights reserved.
//

import Foundation

extension String {
    func base64(encoding: String.Encoding = .utf8) -> String? {
        guard let decodeData = Data(base64Encoded: self, options: .ignoreUnknownCharacters) else {
            return nil
        }
        guard let decodeString = String(data: decodeData, encoding: encoding) else {
            return nil
        }
        return decodeString
    }
}

extension Optional where Wrapped == String {
    var removingPercentEncoding: String? {
        guard let self = self else { return nil }
        return (self as NSString).removingPercentEncoding
    }
}
