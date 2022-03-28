//
//  ClassFamily.swift
//  Data
//
//  Created by Marcelo Stefano Velasquez Herrera on 27/03/22.
//

import Foundation

protocol ClassFamily: Decodable {
    static var discriminator: Discriminator { get }
    func getType() -> AnyObject.Type
}

/// Discriminator key enum used to retrieve discriminator fields in JSON payloads

enum Discriminator: String, CodingKey {
    case type = "viewType"
}
