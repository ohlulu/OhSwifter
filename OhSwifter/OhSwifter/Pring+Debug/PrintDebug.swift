//
//  PrintDebug.swift
//  Deloitte
//
//  Created by ohlulu on 2018/12/20.
//  Copyright © 2018 Goons. All rights reserved.
//

import Foundation

/// Xcode Build Setting -> Other Swift flags -> Debug, add `-D DEBUG`

public func printDebug<T>(_ message: T,
                          file: String = #file,
                          method: String = #function,
                          line: Int = #line){
    #if DEBUG
    print(
        """
        [\((file as NSString).lastPathComponent), Line: \(line)] [\(Date())]
        👉 \(message)
        """
    )
    #endif
}

