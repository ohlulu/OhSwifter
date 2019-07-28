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

class PrivacyAuthorization {
    
    func checkCameraAuthorization(_ completed: @escaping (Bool)->Void ) {
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
    
    func checkAlbumAuthoricztion(_ completed: @escaping (Bool)->Void) {
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
    
    fileprivate func showNeedCameraAuthorize()  {
        // GCD - main Queue
        DispatchQueue.main.async {
            let alert = UIAlertController.init(title: "未授權使用相機", message: "如欲使用相機功能請前往設定頁面開啟\n設定->隱私權->相機", preferredStyle: .alert)
            let actionGo = UIAlertAction(title: "前往", style: .default, handler: { (action) in
                let url: URL!
                
                if #available(iOS 10.0, *) {
                    // iOS 10+
                    url = URL(string: "App-Prefs:root=PRIVACY")
                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
                } else {
                    // iOS 9
                    url = URL(string: UIApplication.openSettingsURLString)
                    UIApplication.shared.openURL(url)
                }
            })
            let actionCencal = UIAlertAction(title: "取消", style: .default, handler: nil)
            alert.addAction(actionCencal)
            alert.addAction(actionGo)
            UIWindow.topVC?.present(alert, animated: true, completion: nil)
        }
        
    }
}

