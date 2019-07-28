//
//  URLExtension.swift
//  Deloitte
//
//  Created by ohlulu on 2019/3/6.
//  Copyright © 2019 Goons. All rights reserved.
//

import Foundation

enum ImageType {
    case jpeg
    case png
}

extension URL {
    enum FileType {
        case unknown
        case pdf
        case image(ImageType)
    }
}

extension URL.FileType: Equatable {
    static func ==(lhs: URL.FileType, rhs: URL.FileType) -> Bool {
        switch (lhs, rhs) {
        case (.unknown, .unknown):
            return true
        case (.pdf, .pdf):
            return true
        case (.image, .image):
            return true
        default:
            return false
        }
    }
}

extension URL {
    func fileType() -> FileType {
        
        let nonfileType = FileType.unknown
        let fileName = self.lastPathComponent
        
        guard let extName = fileName.split(separator: ".").last?.lowercased() else {
            return nonfileType
        }
        
        switch extName {
        case "png":
            return .image(.png)
        case "jpg", "jpeg":
            return .image(.jpeg)
        case "pdf":
            return .pdf
        default:
            return nonfileType
        }
    }
}
