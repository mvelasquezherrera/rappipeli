//
//  RPStorage.swift
//  Data
//
//  Created by Marcelo Stefano Velasquez Herrera on 27/03/22.
//

import Foundation

open class RPStorage {
    public static let standard = RPStorage()
    
    func set(_ value: NSNumber, forKey key: String, andLevel level: LevelAccesibility) {
        let item = RPItemSec(level: level.rawValue, value: value)
        switch level {
        case .userDefaultsPersistence, .userDefaultsNonPersistence: RPUserDefaultsWrapper.standard.set(item, forKey: key, andLevel: level)
        case .keychainNonPersistence , .keychainPersistence:
            RPKeychainWrapper.standard.set(item, forKey: key)
        }
    }
}

//MARK: - PUBLIC SETTERS
extension RPStorage {
    
    open func set(_ value: Int, forKey key: String, andLevel level: LevelAccesibility) {
        set(NSNumber(value: value), forKey: key, andLevel: level)
    }
    
    open func set(_ value: Float, forKey key: String, andLevel level: LevelAccesibility) {
        set(NSNumber(value: value), forKey: key, andLevel: level)
    }
    
    open func set(_ value: Double, forKey key: String, andLevel level: LevelAccesibility) {
        set(NSNumber(value: value), forKey: key, andLevel: level)
    }
    
    open func set(_ value: Bool, forKey key: String, andLevel level: LevelAccesibility) {
        set(NSNumber(value: value), forKey: key, andLevel: level)
    }
    
    
    open func set(_ value: String, forKey key: String, andLevel level: LevelAccesibility) {
        switch level {
        case .userDefaultsPersistence,.userDefaultsNonPersistence :
            let item = RPItemSec(level: level.rawValue, value: NSString(string: value))
            RPUserDefaultsWrapper.standard.set(item, forKey: key, andLevel: level)
        case .keychainNonPersistence , .keychainPersistence :
            let item = RPItemSec(level: level.rawValue, value: NSString(string: value))
            RPKeychainWrapper.standard.set(item, forKey: key)
        }
    }
    
}
//MARK: - PUBLIC GETTERS
extension RPStorage {
    
    open func bool(forKey key: String, andLevel level: LevelAccesibility) -> Bool? {
        switch level {
        case .userDefaultsPersistence,.userDefaultsNonPersistence:
            return RPUserDefaultsWrapper.standard.bool(forKey: key, andLevel: level)
        case .keychainNonPersistence , .keychainPersistence:
             return RPKeychainWrapper.standard.bool(forKey: key, andLevel: level)
        }
       
    }
    
    open func integer(forKey key: String, andLevel level: LevelAccesibility) -> Int? {
        switch level {
        case .userDefaultsPersistence,.userDefaultsNonPersistence:
             return RPUserDefaultsWrapper.standard.integer(forKey: key, andLevel: level)
        case .keychainNonPersistence , .keychainPersistence:
             return RPKeychainWrapper.standard.integer(forKey: key, andLevel: level)
        }
    }
    
    open func float(forKey key: String, andLevel level: LevelAccesibility) -> Float? {
        switch level {
        case .userDefaultsPersistence,.userDefaultsNonPersistence:
            return RPUserDefaultsWrapper.standard.float(forKey: key, andLevel: level)
        case .keychainNonPersistence , .keychainPersistence:
            return RPKeychainWrapper.standard.float(forKey: key, andLevel: level)
        }
        
    }
    
    open func double(forKey key: String, andLevel level: LevelAccesibility) -> Double? {
        switch level {
        case .userDefaultsPersistence,.userDefaultsNonPersistence:
             return RPUserDefaultsWrapper.standard.double(forKey: key, andLevel: level)
        case .keychainNonPersistence , .keychainPersistence:
            return RPKeychainWrapper.standard.double(forKey: key, andLevel: level)
        }
        
    }
    
    open func string(forKey key: String, andLevel level: LevelAccesibility) -> String? {
        switch level {
        case .userDefaultsPersistence,.userDefaultsNonPersistence:
            return RPUserDefaultsWrapper.standard.string(forKey: key, andLevel: level)
        case .keychainNonPersistence , .keychainPersistence:
            return RPKeychainWrapper.standard.string(forKey: key, andLevel: level)
        }
    }
    
}

//MARK: - RESET DELETE
extension RPStorage {
    
    open func delete(forKey key: String,andLevel level: LevelAccesibility) {
        switch level {
        case .userDefaultsPersistence,.userDefaultsNonPersistence:
             RPUserDefaultsWrapper.standard.delete(forKey: key, andLevel: level)
        case .keychainNonPersistence , .keychainPersistence :
             RPKeychainWrapper.standard.delete(key: key, fromLevel: level)
        }
    }
    
    open func reset(level: LevelAccesibility) {
        
        switch level {
        case .userDefaultsPersistence ,.userDefaultsNonPersistence:
             RPUserDefaultsWrapper.standard.reset(fromLevel: level)
        case .keychainNonPersistence , .keychainPersistence :
            RPKeychainWrapper.standard.reset(fromLevel: level)
        }
    }
    
}
