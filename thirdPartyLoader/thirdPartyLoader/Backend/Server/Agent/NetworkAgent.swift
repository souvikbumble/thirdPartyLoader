//
//  NetworkAgent.swift
//  Titan
//
//  Created by Kavitha on 12/01/18.
//  Copyright © 2018, Cognizant Technology Solutions.
//  Written under contract by Robosoft Technologies Pvt. Ltd.
//

import Foundation
import IBMMobileFirstPlatformFoundation
import ObjectMapper

class NetworkAgent: BaseAgent, AgentProtocol {
    var apiRequest: ApiRequestable?
    
    internal func cancelRequest() {
    }
    
    internal func execute<T: Mappable>(request: ApiRequestable, type: T.Type, completion: @escaping (ApiResponse<T>?, Error?) -> Void) {
        apiRequest = request
        
        guard let method = request.method else {
            completion(nil, nil)
            return
        }
        switch method {
        case WLHttpMethodPost:
            fallthrough
        case WLHttpMethodPut:
            fallthrough
        case WLHttpMethodDelete:
            request.resourceRequest()?.send(withJSON: request.parameters, completionHandler: { (response: WLResponse?, error: Error?) in
                if response != nil {
                    var responseObject: T?
                    if request.path == ApiEndPointConstants.PostStoreLocatorUrl{
                        let urlResponse = ApiResponse.init(response: response, requestObject: self.apiRequest, reponseObject: responseObject, json: [StoreLocatorRequestConstants.htmlContent : response?.responseText as Any])
                        completion(urlResponse,nil)
                    }else{
                    #if targetEnvironment(simulator)
                        do {
                            let data = try JSONSerialization.jsonObject(with: response!.responseData, options: [])
                            if let jsonResponse = data as? [String: Any] {
                                responseObject = Mapper<T>().map(JSON: jsonResponse)
                            }
                            let dataResponse = ApiResponse.init(response: response, requestObject: self.apiRequest, reponseObject: responseObject, json:data as? [AnyHashable : Any])
                            completion(dataResponse, nil)
                            if error != nil {
                                AdobeAnalyticsManager.trackError(linkName: AdobeAnalyticsConstants.EventName.error, message: error?.localizedDescription, statusCode: response?.status.stringValue, endPoint: request.baseURL)
                            }
                            
                        } catch {
                            completion(nil, error)
                            print(error.localizedDescription)
                        }
                        #else
                        if let jsonResponse = response?.responseJSON as? [String: Any] {
                            responseObject = Mapper<T>().map(JSON: jsonResponse)
                        }
                        let dataResponse = ApiResponse.init(response: response, requestObject: self.apiRequest, reponseObject: responseObject, json: response?.responseJSON)
//                        if error != nil {
//                            AdobeAnalyticsManager.trackError(linkName: AdobeAnalyticsConstants.EventName.error, message: error?.localizedDescription, statusCode: response?.status.stringValue, endPoint: (request.baseURL ?? "") + (request.path ?? ""))
//                        }
                        completion(dataResponse, nil)
                        #endif

                    }

                } else if error != nil {
                    completion(nil, error)
                }
            })
        default:
            request.resourceRequest()?.send(completionHandler: { (response: WLResponse?, error: Error?) in
                if response != nil {
                    var responseObject: T?
                    if let jsonResponse = response?.responseJSON as? [String: Any] {
                        responseObject = Mapper<T>().map(JSON: jsonResponse)
                    }
                    Logger.log(logLevel: .debug, "API request user info = \(response?.userInfoDict ?? [:])")
                    
                    #if DEBUG
                    let str = response?.responseData?.prettyPrintedJSONString
                    Logger.log(logLevel: .debug, "API json response = \(str ?? "")")
                    #endif

                    let dataResponse = ApiResponse.init(response: response, requestObject: self.apiRequest, reponseObject: responseObject, json: response?.responseJSON)
                    completion(dataResponse, nil)
                } else if error != nil {
                    completion(nil, error)
                }
            })
        }
  
    }
}

