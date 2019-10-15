//
//  NSAttributedString+Ext.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/4.
//  Copyright © 2019 ohlulu. All rights reserved.
//

import Foundation

public struct AttributeStringBuilder {
    
    typealias PairedAttributeString = (text: String, attribute: [NSAttributedString.Key: Any])
    
    private var attString = NSMutableAttributedString()
    
    public mutating func setBase(text: String, attribute: [NSAttributedString.Key: Any])
        -> Self {
            attString = NSMutableAttributedString(string: text, attributes: attribute)
            return self
    }
    
    public func setSpecial(text specialText: String, attribute: [NSAttributedString.Key: Any])
        -> Self {
            let specialRange = attString.string.ranges(of: specialText)
                .map { NSRange($0, in: attString.string)}
            specialRange.forEach {
                attString.addAttributes(attribute, range: $0)
            }
            return self
    }
    
    public func append(text: String, attribute: [NSAttributedString.Key: Any])
        -> Self {
            attString.append(
                NSMutableAttributedString(string: text, attributes: attribute)
            )
            return self
    }
    
    public func build() -> NSMutableAttributedString {
        return attString
    }
}

public extension NSAttributedString {
    static var builder: AttributeStringBuilder {
        get { return AttributeStringBuilder() }
        set { }
    }
}

public extension NSAttributedString {
    @available(*, deprecated, message: "Use NSAttributedString.builder instead.")
    static func creat(baseText: String,
                      baseAttribute: [NSAttributedString.Key: Any],
                      specialText: String,
                      specialAttribute: [NSAttributedString.Key: Any])
        -> NSMutableAttributedString {
            
            let attString = NSMutableAttributedString(
                string: baseText,
                attributes: baseAttribute)
            let specialRanges = baseText.ranges(of: specialText)
                .map { NSRange($0, in: baseText) }
            specialRanges.forEach {
                attString.addAttributes(specialAttribute, range: $0)
            }
            
            return attString
    }
    
    @available(*, deprecated, message: "Use NSAttributedString.builder instead.")
    static func creat(baseText: String,
                      baseAttribute: [NSAttributedString.Key: Any],
                      specialAttString: [String: [NSAttributedString.Key: Any]])
            -> NSMutableAttributedString {
                
            let attString = NSMutableAttributedString(string: baseText, attributes: baseAttribute)
                
            for att in specialAttString {
                let specialRanges = baseText.ranges(of: att.key)
                    .map { NSRange($0, in: baseText) }
                specialRanges.forEach {
                    attString.addAttributes(att.value, range: $0)
                }
            }
            return attString
    }
}

extension String {
    func ranges(of searchString: String) -> [Range<String.Index>] {
        let _indices = indices(of: searchString)
        let count = searchString.count
        return _indices.map({ index(startIndex, offsetBy: $0)..<index(startIndex, offsetBy: $0+count) })
    }
}

extension String {
    func indices(of occurrence: String) -> [Int] {
        var indices = [Int]()
        var position = startIndex
        while let range = range(of: occurrence, range: position..<endIndex) {
            let i = distance(from: startIndex,
                             to: range.lowerBound)
            indices.append(i)
            let offset = occurrence.distance(from: occurrence.startIndex,
                                             to: occurrence.endIndex) - 1
            guard let after = index(range.lowerBound,
                                    offsetBy: offset,
                                    limitedBy: endIndex) else {
                                        break
            }
            position = index(after: after)
        }
        return indices
    }
}

private extension String {
    func nsRange(from range: Range<String.Index>) -> NSRange {
        let from = range.lowerBound.samePosition(in: utf16)!
        let to = range.upperBound.samePosition(in: utf16)!
        return NSRange(location: utf16.distance(from: utf16.startIndex, to: from ),
                       length: utf16.distance(from: from, to: to))
    }
}

private extension NSRange {
    init(_ range: Range<String.Index>, in string: String) {
        self.init()
        let startIndex = range.lowerBound.samePosition(in: string.utf16)!
        let endIndex = range.upperBound.samePosition(in: string.utf16)!
        self.location = string.distance(from: string.startIndex,
                                        to: range.lowerBound)
        self.length = string.distance(from: startIndex, to: endIndex)
    }
}
