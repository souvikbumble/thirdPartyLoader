//
//  ApiEndPoint.swift
//  Titan
//
//  Created by Kavitha on 12/01/18.
//  Copyright © 2018, Cognizant Technology Solutions.
//  Written under contract by Robosoft Technologies Pvt. Ltd.
//

import Foundation
import IBMMobileFirstPlatformFoundation

typealias HeaderParams = [String: String]
typealias APIParams    = [String: Any]
typealias EncodingType = WLAFHTTPClientParameterEncoding

/* ApiEndPoint protocol defines a set a rules, on conforming to which, a type can
 be classfied as a API request */
protocol ApiEndPoint {
    var baseURL: String? { get }  // base url of the request
    var path: String? { get }  // path component of the url
    var method: String? { get }  // HTTP Method (e.g. GET, POST etc)
    var headers: HeaderParams? { get }  // Header parameters
    var parameters: APIParams? { get }  // Request Body/ Query Params
    var encoding: EncodingType? { get }  // URL encoding for the request
    var postQueryParam: APIParams? { get }  // Query parameter for post method
}

extension ApiEndPoint {
    internal var baseURL: String? { return "" }
    internal var path: String? { return nil }
    internal var method: String? { return WLHttpMethodGet }
    internal var headers: HeaderParams? { return [:] }
    internal var parameters: APIParams? { return nil }
    internal var encoding: EncodingType? { return WLAFHTTPClientParameterEncoding.WLJSONParameterEncoding }
    internal var postQueryParam: APIParams? { return nil }
}
