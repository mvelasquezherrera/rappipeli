//
//  RPStorageDatasource.swift
//  Data
//
//  Created by Marcelo Stefano Velasquez Herrera on 27/03/22.
//

import Foundation

internal protocol RPStorageDatasource {
    func set(accessToken: String)
    func set(username: String)
    func getUsername() -> String
    func getToken() -> String
    func removeValue(forKey key: String)
//    func getRefreshToken()->String
    func set(user: String)
    func getUser() -> String
//    func set(settings: String)
//    func getConfig() -> String
    func setValue(value: String, forKey key: String)
    func getValue(forKey key: String)-> String
    func setIsOnbordingShowed(isShowed: Bool)
    func getOnboardingIsShowed() -> Bool
    func setIntValue(value:Int, forKey key: String)
//    func getMaxDevicesQty() -> String
}
