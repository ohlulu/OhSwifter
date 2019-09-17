//
//  StringExtension.swift
//  Deloitte
//
//  Created by ohlulu on 2019/1/17.
//  Copyright © 2019 Goons. All rights reserved.
//

import Foundation

public extension String {
    
    subscript(_ bounds: CountableClosedRange<Int>) -> String {
        if bounds.lowerBound >= count || bounds.upperBound < 0 {
            return ""
        }
        let lowerBound = Swift.max(bounds.lowerBound, 0)
        let start = index(startIndex, offsetBy: lowerBound)
        let upperBound = Swift.min(bounds.upperBound, count-1)
        let end = index(startIndex, offsetBy: upperBound)
        return String(self[start...end])
    }
    
    subscript(_ bounds: CountableRange<Int>) -> String {
        if bounds.lowerBound >= count || bounds.upperBound < 0 {
            return ""
        }
        let lowerBound = Swift.max(bounds.lowerBound, 0)
        let start = index(startIndex, offsetBy: lowerBound)
        let upperBound = Swift.min(bounds.upperBound, count)
        let end = index(startIndex, offsetBy: upperBound)
        return String(self[start..<end])
    }
    
    var int: Int? {
        return Int(self)
    }
    
    var intValue: Int {
        return Int(self) ?? 0
    }
    
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
