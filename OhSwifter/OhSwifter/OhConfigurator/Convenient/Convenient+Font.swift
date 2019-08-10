//
//  ConvenientFont.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/10.
//  Copyright © 2019 ohlulu. All rights reserved.
//

public protocol SwiftOriginFontExclamationMark: class {
    var font: UIFont! { get set }
}

public extension OhConfigureWrapper where Base: SwiftOriginFontExclamationMark {
    func font(_ font: UIFont!) -> OhConfigureWrapper {
        base.font = font
        return self
    }
}

extension UILabel: SwiftOriginFontExclamationMark { }

public protocol SwiftOriginFontQuestionMark: class {
    var font: UIFont? { get set }
}

public extension OhConfigureWrapper where Base: SwiftOriginFontQuestionMark {
    func font(_ font: UIFont?) -> OhConfigureWrapper {
        base.font = font
        return self
    }
}

extension UITextField: SwiftOriginFontQuestionMark { }
extension UITextView: SwiftOriginFontQuestionMark { }

