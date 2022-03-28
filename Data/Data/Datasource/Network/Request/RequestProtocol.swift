//
//  RequestProtocol.swift
//  Data
//
//  Created by Marcelo Stefano Velasquez Herrera on 27/03/22.
//

import Foundation
import Alamofire

internal protocol RequestObject {
    var path: String { get }
    var method: HTTPMethod { get }
    var headers: HTTPHeaders { get }
    var encoding: JSONEncoding { get }
    var parameters: Parameters { get set }
}
