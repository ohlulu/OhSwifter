//
//  TextSizeUtility.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/10/2.
//  Copyright © 2019 ohlulu. All rights reserved.
//

import UIKit

public extension String {
    func textSize(withFont font: UIFont , maxSize: CGSize) -> CGSize {
        return self.boundingRect(with: maxSize, options: [.usesLineFragmentOrigin], attributes: [.font : font], context: nil).size
    }
}

public extension UILabel {
    func size(withMaxSize maxSize: CGSize) -> CGSize {
        return (text ?? "").textSize(withFont: font, maxSize: maxSize)
    }
}
