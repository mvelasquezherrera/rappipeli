//
//  RPStorageRepositoryProtocol.swift
//  Domain
//
//  Created by Marcelo Stefano Velasquez Herrera on 27/03/22.
//

import Foundation

public protocol RPStorageRepositoryProtocol: RepositoryProtocol {
    func set(accessToken:String)
    func set(username: String)
    func getUsername() -> String
    func getToken()->String
    func set(user:String)
    func getUser()->String
    func setValue(value:String,key:String)
    func getValue(forKey key:String)->String
    func removeValue(forKey key: String)
    func setIntValue(value:Int, forKey key: String)
}
