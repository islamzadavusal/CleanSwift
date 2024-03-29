//
//  NetworkUtil.swift
//  CleanSwift
//
//  Created by Vusal Islamzada on 05.03.24.
//

import Foundation

class NetworkUtil: NSObject {

}

enum HTTPMethod : String {
    case get = "GET"
    case post = "POST"
    case delete = "DELETE"
}

enum NetworkError : Error {
    case invalidURL
    case noData
    case decodingError
    case httpResponseError(statusCode : Int)
    case unknown(Error)
}
