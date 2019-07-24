//
//  FileMamagerExtension.swift
//  Deloitte
//
//  Created by ohlulu on 2019/1/2.
//  Copyright © 2019 Goons. All rights reserved.
//

import Foundation

extension FileManager {
    static func documentDirectoryPath() -> String {
        return documentDirectoryURL().absoluteString
    }
    
    static func documentDirectoryURL() -> URL {
        return  FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
    }
}
