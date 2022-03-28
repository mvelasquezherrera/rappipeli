//
//  UserRepository.swift
//  Data
//
//  Created by Marcelo Stefano Velasquez Herrera on 27/03/22.
//

import Foundation
import Domain

public class UserRepository: UserRepositoryProtocol {
    
    private let dataSource: ServiceDataSource
    
    public init() {
        self.dataSource = ServiceDataSourceImplementation()
    }
    
}
