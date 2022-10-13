//
//  ServerManager.swift
//  Titan
//
//  Created by Kavitha on 12/01/18.
//  Copyright © 2018, Cognizant Technology Solutions.
//  Written under contract by Robosoft Technologies Pvt. Ltd.
//

import PromiseKit
import IBMMobileFirstPlatformFoundation
import ObjectMapper
import Alamofire
//import AlamofireObjectMapper

protocol ApiManagerDelegate: AnyObject {
    func didConnect(success: Bool, error: Error?)
}

public class ApiManager: NSObject {
    var cachePolicy: CachePolicy?
    var agent: AgentProtocol?
    weak var delegate: ApiManagerDelegate?
    
    private let cacheManager = GUAppConifgCache.shared
    
//    func connect() {
//       // let serverURL = WLClient.sharedInstance().serverUrl()
//
//        // OCLogger_DEBUG - flag for debugging logs.
//        OCLogger.setLevel(OCLogger_FATAL)
//
//        //SSL Pinning
//        if let sslFileName = AdapterServerInfo().pinningCertificateFile {
//            WLClient.sharedInstance().pinTrustedCertificatePublicKey(fromFiles: sslFileName)
//        }
//
//        let serverUrl = WLClient.sharedInstance().serverUrl().absoluteString
//        Logger.log(logLevel: .debug, "MFP server url")
//        Logger.log(logLevel: .debug, serverUrl)
//
//        // To fix JAZZ bug 66244: [iPhone 8 plus] not able to navigate to wish-list " Request timed out" Error message is displaying
//        // Modified request timeout to 100 seconds; default timeout was 30 seconds
//        WLClient.sharedInstance()?.defaultRequestTimeoutInterval = 100
//        AppSessionManager.sharedInstance.guestUserManager.registerLogInHandler()
//        if AppSessionManager.sharedInstance.isLoggedIn == false && !UserDefaults.standard.bool(forKey: UserDefaultKeyConstant.calledAPI) {
//            AppSessionManager.sharedInstance.guestUserManager.login { (success, error) in
//                if success {
//                    UserDefaults.standard.set(true, forKey: UserDefaultKeyConstant.calledAPI)
//                }
//                self.delegate?.didConnect(success: success, error: error)
//            }
//        } else {
//            WLAuthorizationManager.sharedInstance().obtainAccessToken(forScope: nil) { [weak self] (token, error) in
//                if error != nil {
//                    Logger.log(logLevel: .error, "Failed to connect to MobileFirst Server \(serverUrl.debugDescription)")
//                    Logger.log(logLevel: LogLevel.error, error?.localizedDescription ?? "")
//                    AppSessionManager.sharedInstance.clearUser()
//                    AppSessionManager.sharedInstance.guestUserManager.loggedOut { (success, error) in
//                        self?.delegate?.didConnect(success: success, error: error)
//                    }
//                } else {
//                    Logger.log(logLevel: .error, "Connected to MobileFirst Server \(serverUrl.debugDescription)")
//                    self?.delegate?.didConnect(success: true, error: nil)
//                }
//            }
//        }

        /* WLAuthorizationManager.sharedInstance().obtainAccessToken(forScope: nil) { [weak self] (token, error) in
            if error != nil {
                Logger.log(logLevel: .error, "Failed to connect to MobileFirst Server \(serverUrl.debugDescription)")
                Logger.log(logLevel: LogLevel.error, error?.localizedDescription ?? "")
                self?.delegate?.didConnect(success: false, error: AppError.customMessage(message: error!.localizedDescription, code: -1000))
            } else {
                Logger.log(logLevel: .error, "Connected to MobileFirst Server \(serverUrl.debugDescription)")
                self?.delegate?.didConnect(success: true, error: nil)
            }
        } */
   // }
    
    func executeRequest<T: Mappable>(request: ApiRequestable, type: T.Type, cachePolicy: CachePolicy, completion: @escaping (ApiResponse<T>?, Error?) -> Void) {
        self.cachePolicy = cachePolicy
        if isResponseCached(for: request) {
            print("-----------||||||\(request.path ?? "") Fetched from CACHE|||||----------------")
            fetchFromCache(request, type: type, completionHandler: completion)
        } else {
            agent = AgentFactory.agent(cachePolicy: cachePolicy)
            agent?.execute(request: request, type: type, completion: { (responseObject, error) in
                
                //Condition to save the response in cache
                if let result = responseObject?.result, responseObject?.apiError == nil, responseObject?.emptyResponseError == nil {
                    self.cacheConfigData(result , for: request)
                }
                self.handleAppDownTime(responseObject: responseObject, url: request)
                completion(responseObject, error)
            })
        }
    }

    //Handles App down time Error to be displayed for given API list
    fileprivate func handleAppDownTime<T>(responseObject: ApiResponse<T>?, url: ApiRequestable) {
        //App down case
//        if AppDownManager.canHandleAppDownTimeError(for: url.path) && responseObject?.appDownTimeFlag == true {
//            AppDownManager.show(message: responseObject?.appDownTimeMessage)
//        } else if (AppDownManager.canHandleHideAppDownTimeError(for: url.path) && responseObject?.appDownTimeFlag == false) { //App up case
//            AppDownManager.hide()
//        }
    }
    
    fileprivate func fetchFromCache<T: Mappable>(_ urlRequest: ApiRequestable,
                                                       type: T.Type,
                                                       completionHandler: @escaping (ApiResponse<T>?, Error?) -> Void) {
        do {
            if let cacheData = try cacheManager.getResponseDataFromCache(for: type, endPoint: urlRequest.path) {
                let cachedDataResponse = ApiResponse.init(response: nil, requestObject: urlRequest, reponseObject: cacheData, json: [CacheDataConstants.cachedKey: CacheDataConstants.cachedValue]) //Added dummy response in json because no response check is done based on that variable
                completionHandler(cachedDataResponse as? ApiResponse, nil)
                
            }
        } catch let error {
            completionHandler(nil, error as? AppError)
        }
    }
    
    fileprivate func cacheConfigData<T: Mappable>(_ data: T, for url: ApiRequestable) {
        let canCache = cacheManager.canCacheResponse(for: url.path ?? "")
        if canCache {
            cacheManager.saveResponse(data: data, for: url.path)
        }
    }
    

    fileprivate func isResponseCached(for url: ApiRequestable) -> Bool {
        //let sessionManager = GUSessionManager.sharedInstance
        let isCached = cacheManager.isResponseCached(for: url.path ?? "")
        let canCache = cacheManager.canCacheResponse(for: url.path ?? "")
        var isDataAvailable = false
        if isCached && canCache {
            isDataAvailable = cacheManager.isUnArchievedDataAvailable(for: url.path ?? "")
        }
        return (isCached && canCache && isDataAvailable)
    }
    
//    fileprivate func isForceAPICall(for url: ApiRequestable) -> Bool {
//        if AppSessionManager.sharedInstance.fetchHomescreenResponse && cacheManager.isHomeScreenSlotsAPI(for: url.path ?? "") {
//            AppSessionManager.sharedInstance.fetchHomescreenResponse = false
//            return true
//        }
//        return false
//    }
}

extension ApiManager: WLDelegate {
    public func onSuccess(_ response: WLResponse!) {
        Logger.log(logLevel: .debug, "Connection success. ")
        delegate?.didConnect(success: true, error: nil)
    }
    public func onFailure(_ response: WLFailResponse!) {
        Logger.log(logLevel: .debug, "Connection failure. ")
        delegate?.didConnect(success: false, error: AppError.customMessage(message: response.errorMsg, code: -1000))
    }
}

class AgentFactory {
    static func agent(cachePolicy: CachePolicy) -> AgentProtocol? {
        switch cachePolicy {
        case .local:
            return LocalAgent()
        case .network:
            return NetworkAgent()
        default:
            return nil
        }
    }
}
