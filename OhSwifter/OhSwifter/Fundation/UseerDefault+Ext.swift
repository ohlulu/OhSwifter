//
//  UseerDefault+Ext.swift
//  OhSwifter
//
//  Created by ohlulu on 2019/8/4.
//  Copyright © 2019 ohlulu. All rights reserved.
//

import Foundation

public protocol UserDefaultsSettable {
    associatedtype defaultKeys: RawRepresentable
}

public extension UserDefaultsSettable where defaultKeys.RawValue == String {
    
    // Int
    
    static func set(value: Int?, forKey key: defaultKeys) {
        let value = value ?? 0
        let aKey = key.rawValue
        UserDefaults.standard.set(value, forKey: aKey)
        UserDefaults.standard.synchronize()
    }
    
    static func int(forKey key: defaultKeys) -> Int {
        let aKey = key.rawValue
        return UserDefaults.standard.integer(forKey: aKey)
    }
    
    static func set(value: Float?, forKey key: defaultKeys) {
        let value = value ?? 0
        let aKey = key.rawValue
        UserDefaults.standard.set(value, forKey: aKey)
        UserDefaults.standard.synchronize()
    }
    
    static func float(forKey key: defaultKeys) -> Float {
        let aKey = key.rawValue
        return UserDefaults.standard.float(forKey: aKey)
    }
    
    // String
    
    static func set(value: String?, forKey key: defaultKeys) {
        let aKey = key.rawValue
        UserDefaults.standard.set(value, forKey: aKey)
        UserDefaults.standard.synchronize()
    }
    
    static func string(forKey key: defaultKeys) -> String? {
        let aKey = key.rawValue
        return UserDefaults.standard.string(forKey: aKey)
    }
    
    static func stringValue(forKey key: defaultKeys) -> String {
        let aKey = key.rawValue
        return UserDefaults.standard.string(forKey: aKey) ?? ""
    }
    
    // bool
    
    static func bool(forkey key: defaultKeys) -> Bool {
        let akey = key.rawValue
        return UserDefaults.standard.bool(forKey: akey)
    }
    
    static func set(value: Bool, forKey key: defaultKeys) {
        let aKey = key.rawValue
        UserDefaults.standard.set(value, forKey: aKey)
        UserDefaults.standard.synchronize()
    }
    
}
