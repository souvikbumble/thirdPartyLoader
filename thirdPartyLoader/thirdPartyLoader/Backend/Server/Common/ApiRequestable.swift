//
//  ApiRequestable.swift
//  Titan
//
//  Created by Kavitha on 12/01/18.
//  Copyright © 2018, Cognizant Technology Solutions.
//  Written under contract by Robosoft Technologies Pvt. Ltd.
//

import UIKit
import IBMMobileFirstPlatformFoundation

protocol ApiRequestable: ApiEndPoint, ApiRequestableProtocol {
    
}

extension ApiRequestable {
    
    func resourceRequest() -> WLResourceRequest? {
        guard var urlStr = baseURL else { return nil }
        if let urlPath = path {
            urlStr = urlStr + "/" + urlPath
        }
        var request: WLResourceRequest?
        if let escapedUrlString = urlStr.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) {
            request = WLResourceRequest(url: URL(string: escapedUrlString), method: method)
            Logger.log(logLevel: .debug, "API Url = "+escapedUrlString)
        }

        // set query parameters for GET request
        if method == WLHttpMethodGet {
            request?.queryParameters = parameters
        }
        
        // set query parameters for POST request
        if method == WLHttpMethodPost, let queryParam = postQueryParam {
            request?.queryParameters = queryParam
        }
        
        // set headers
        if let headerDict = headers {
            for key in headerDict.keys {
                request?.addHeaderValue(headerDict[key] as NSObject?, forName: key)
            }
        }
        Logger.log(logLevel: .debug, "API request Header = ")
        Logger.log(logLevel: .debug, headers.debugDescription)
        Logger.log(logLevel: .debug, "Query parameter string: \(request?.getQueryString() ?? "")")

        return request
    }
}
