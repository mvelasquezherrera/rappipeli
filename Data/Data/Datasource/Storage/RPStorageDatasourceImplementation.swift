//
//  RPStorageDatasourceImplementation.swift
//  Data
//
//  Created by Marcelo Stefano Velasquez Herrera on 27/03/22.
//

import Foundation

internal class RPStorageDataSourceImplementation:RPStorageDatasource {
    
    func setIntValue(value:Int, forKey key: String){
        RPStorage.standard.set(value, forKey: key, andLevel: .keychainNonPersistence)
    }
    
    func setValue(value: String,forKey key: String) {
        RPStorage.standard.set(value, forKey: key, andLevel: .keychainNonPersistence)
    }
    
    func getValue(forKey key:String) -> String {
        guard let value =
            RPStorage.standard.string(forKey: key, andLevel: .keychainNonPersistence) else{return ""}
    return value
    }
    
    func removeValue(forKey key: String) {
        RPStorage.standard.delete(forKey: key, andLevel: .keychainNonPersistence)
    }
    
    func set(username: String) {
        RPStorage.standard.set(username, forKey: "username", andLevel: .keychainNonPersistence)
    }
    
    func getUsername() -> String {
        guard let value = RPStorage.standard.string(forKey: "username", andLevel: .keychainNonPersistence) else{return ""}
        return value
    }
    
    func set(accessToken: String) {
        RPStorage.standard.set(accessToken, forKey: "accessToken", andLevel: .keychainNonPersistence)
    }
    
//    func getSessionId() -> String {
//        guard let sessionId = RPStorage.standard.string(forKey: "sessionId", andLevel: .keychainNonPersistence) else { return "" }
//        return sessionId
//    }
    
    func getToken() -> String {
        guard let token = RPStorage.standard.string(forKey: "accessToken", andLevel: .keychainNonPersistence) else { return "" }
        return token
    }
    
//    func getRefreshToken() -> String {
//        guard let token = RPStorage.standard.string(forKey: "refreshToken", andLevel: .keychainNonPersistence) else { return "" }
//        return token
//    }
    
//    func set(maxDevice:Int){
//        RPStorage.standard.set(maxDevice, forKey: "maxDeviceCount", andLevel: .userDefaultsNonPersistence)
//    }
    
    func set(user: String) {
        RPStorage.standard.set(user, forKey: "user", andLevel: .keychainNonPersistence)
    }
    
    func getUser()->String {
        guard let user = RPStorage.standard.string(forKey: "user", andLevel: .keychainNonPersistence) else { return "" }
        return user
    }
    
//    func getMaxDevicesQty() -> String {
//        guard let maxDeviceCount = RPStorage.standard.integer(forKey: "maxDeviceCount", andLevel: .userDefaultsNonPersistence) else { return "" }
//        return String(maxDeviceCount)
//    }
    
//    func set(settings: String) {
//        RPStorage.standard.set(settings, forKey: Key.settings.rawValue, andLevel: .keychainNonPersistence)
//    }
    
//    func getConfig() -> String {
//        guard let settings = RPStorage.standard.string(forKey: Key.settings.rawValue, andLevel: .keychainNonPersistence) else { return "" }
//        return settings
//    }
    
    func setIsOnbordingShowed(isShowed: Bool){
        RPStorage.standard.set(isShowed, forKey: "isShowedOnboarding", andLevel: .userDefaultsPersistence)
    }
    func getOnboardingIsShowed() -> Bool {
        guard let isShowed =  RPStorage.standard.bool(forKey: "isShowedOnboarding", andLevel: .userDefaultsPersistence) else { return false}
        return isShowed
        
    }
    
}
