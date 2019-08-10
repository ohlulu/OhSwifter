//
//  Convenient+TextColor.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/10.
//  Copyright © 2019 ohlulu. All rights reserved.
//

public protocol SwiftOriginTextColorExclamationMark: class {
    var textColor: UIColor! { get set }
}

public extension OhConfigureWrapper where Base: SwiftOriginTextColorExclamationMark {
    func textColor(_ color: UIColor!) -> OhConfigureWrapper {
        base.textColor = color
        return self
    }
}

extension UILabel: SwiftOriginTextColorExclamationMark { }

public protocol SwiftOriginTextColorQuestionsMark: class {
    var textColor: UIColor? { get set }
}

public extension OhConfigureWrapper where Base: SwiftOriginTextColorQuestionsMark {
    func textColor(_ color: UIColor?) -> OhConfigureWrapper {
        base.textColor = color
        return self
    }
}
extension UITextField: SwiftOriginTextColorQuestionsMark { }
extension UITextView: SwiftOriginTextColorQuestionsMark { }
