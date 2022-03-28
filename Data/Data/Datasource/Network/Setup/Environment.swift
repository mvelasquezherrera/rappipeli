//
//  Environment.swift
//  Data
//
//  Created by Marcelo Stefano Velasquez Herrera on 27/03/22.
//

import Foundation

public enum Environment: String {
    case Development = "com.mvelasquezherrera.RappiPeli.dev"
    case UAT = "com.mvelasquezherrera.RappiPeli.uat"
    case Production = "com.mvelasquezherrera.RappiPeli"
}

public extension Environment {
    var configuration: Configuration.Type {
        switch self {
        case .Development:
            return DevelopConfig.self
        case .UAT:
            return UATConfig.self
        case .Production:
            return ProductionConfig.self
        }
    }
}
