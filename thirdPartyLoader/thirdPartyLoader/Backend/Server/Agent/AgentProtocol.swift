//
//  AgentProtocol.swift
//  Titan
//
//  Created by Kavitha on 12/01/18.
//  Copyright © 2018, Cognizant Technology Solutions.
//  Written under contract by Robosoft Technologies Pvt. Ltd.
//

import Foundation
import ObjectMapper

protocol AgentProtocol {
    func execute<T: Mappable>(request: ApiRequestable, type: T.Type, completion: @escaping (ApiResponse<T>?, Error?) -> Void)
    func cancelRequest()
}
