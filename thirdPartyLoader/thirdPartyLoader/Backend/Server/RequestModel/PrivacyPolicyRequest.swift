//
//  PrivacyPolicyRequest.swift
//  Titan
//
//  Created by Channappa M on 24/07/18.
//  Copyright © 2018, Cognizant Technology Solutions.
//  Written under contract by Robosoft Technologies Pvt. Ltd.
//

import IBMMobileFirstPlatformFoundation

enum PrivacyPolicyRequest: ApiRequestable {
    case privacyPolicy
    case splashScreen
    
    var baseURL: String? {
        switch self {
        case .privacyPolicy: return ApiEndPointConstants.baseUrl
        case .splashScreen: return ApiEndPointConstants.baseUrl
        }
    }
    
    var path: String? {
        switch self {
        case .privacyPolicy: return ApiEndPointConstants.espot + ApiEndPointConstants.policies
        case .splashScreen: return ApiEndPointConstants.espot + ApiEndPointConstants.splashScreen
        }
    }
    
    var parameters: APIParams? {
        switch self {
        case .privacyPolicy: return nil
        case .splashScreen: return nil
        }
    }
    
    var method: String? {
        switch self {
        case .privacyPolicy: return WLHttpMethodGet
        case .splashScreen: return WLHttpMethodGet
        }
    }
    
    var headers: HeaderParams? {
        switch self {
        case .privacyPolicy: return headersForRequest()
        case .splashScreen: return headersForRequest()
        }
    }
}
