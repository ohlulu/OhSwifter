//
//  PrivateAuthorzation.swift
//  Deloitte
//
//  Created by ohlulu on 2019/1/18.
//  Copyright © 2019 Goons. All rights reserved.
//

import UIKit
import Foundation
import AVFoundation
import Photos

public class PrivacyAuthorization {
    
    public static func checkCameraAuthorization(_ completed: @escaping (Bool)->Void ) {
        let videoStatus = AVCaptureDevice.authorizationStatus(for: AVMediaType.video)
        switch videoStatus {
        case .authorized:
            Thread.mainThread {
                completed(true)
            }
            
        case .notDetermined:
            // 第一次開啟相機，發起請求
            AVCaptureDevice.requestAccess(for: AVMediaType.video, completionHandler: { (isOK) in
                Thread.mainThread {
                    completed(isOK)
                }
            })
            
        default:
            completed(false)
        }
    }
    
    public static func checkAlbumAuthoricztion(_ completed: @escaping (Bool)->Void) {
        let albumStatus = PHPhotoLibrary.authorizationStatus()
        switch albumStatus {
        case .authorized:
            Thread.mainThread {
                completed(true)
            }
        case .notDetermined:
            PHPhotoLibrary.requestAuthorization { (status) in
                if status == .authorized {
                    Thread.mainThread {
                        completed(true)
                    }
                } else {
                    completed(false)
                }
            }
        default:
            completed(false)
        }
    }
}

