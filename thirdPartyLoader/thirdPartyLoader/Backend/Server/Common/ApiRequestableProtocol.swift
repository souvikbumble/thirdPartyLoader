//
//  ApiRequestableProtocol.swift
//  Titan
//
//  Created by Kavitha on 02/05/18.
//  Copyright © 2020, TITAN LTD.
//  Modified under contract by Robosoft Technologies Pvt. Ltd.
//

import UIKit
import GBDeviceInfo

protocol ApiRequestableProtocol {
    
}

extension ApiRequestableProtocol {
    var currentVersion: String {
        return "\(CommonUtility.appVersion() ?? "")(\(CommonUtility.buildNumber() ?? ""))"
    }
    
    func headersForUserRequest() -> HeaderParams {
        var parameters = HeaderParams()
        parameters[HeaderConstants.contentType] = HeaderConstants.contentTypeValue
        parameters[HeaderConstants.scope] = SecurityCheckConstant.name

        /* parameters[HeaderConstants.wcToken] = AppSessionManager.sharedInstance.wcToken
        parameters[HeaderConstants.wcTrustedToken] = AppSessionManager.sharedInstance.wcTrustedToken */
        parameters[HeaderConstants.cacheControl] = HeaderConstants.cacheControlValue
        parameters[HeaderConstants.acceptEncoding] = HeaderConstants.gzip
        parameters[HeaderConstants.platform] = UIDevice.osName + " " + UIDevice.osVersion
        parameters[HeaderConstants.timeStamp] = Date.systemDate().dateString(with: .format5)
        parameters[HeaderConstants.model] = GBDeviceInfo.deviceInfo()?.modelString
        parameters[HeaderConstants.appVersion] = currentVersion
        parameters[HeaderConstants.adapterAppName] = HeaderConstants.appName
        return parameters
    }
    
    func headersForOrderHistoryRequest(screenName: String?) -> HeaderParams {
        var parameters = HeaderParams()
        parameters[HeaderConstants.contentType] = HeaderConstants.contentTypeValue
        parameters[HeaderConstants.scope] = SecurityCheckConstant.name

        parameters[HeaderConstants.cacheControl] = HeaderConstants.cacheControlValue
        parameters[HeaderConstants.acceptEncoding] = HeaderConstants.gzip
        parameters[HeaderConstants.platform] = UIDevice.osName + " " + UIDevice.osVersion + " " + (screenName ?? OrderHistorySourceConsants.noScreenName)
        parameters[HeaderConstants.timeStamp] = Date.systemDate().dateString(with: .format5)
        parameters[HeaderConstants.model] = GBDeviceInfo.deviceInfo()?.modelString
        parameters[HeaderConstants.appVersion] = currentVersion
        parameters[HeaderConstants.adapterAppName] = HeaderConstants.appName
        return parameters
    }
    // for cart API request pass either guest token or actual user token
    func headersWithGuestOrUserToken() -> HeaderParams {
        var parameters = HeaderParams()
        parameters[HeaderConstants.contentType] = HeaderConstants.contentTypeValue
        parameters[HeaderConstants.scope] = SecurityCheckConstant.name

        /* parameters[HeaderConstants.wcToken] = AppSessionManager.sharedInstance.wcToken ?? AppSessionManager.sharedInstance.guestUser?.wcToken
        parameters[HeaderConstants.wcTrustedToken] = AppSessionManager.sharedInstance.wcTrustedToken  ?? AppSessionManager.sharedInstance.guestUser?.wcTrustedToken */
        parameters[HeaderConstants.cacheControl] = HeaderConstants.cacheControlValue
        parameters[HeaderConstants.acceptEncoding] = HeaderConstants.gzip
        parameters[HeaderConstants.platform] = UIDevice.osName + UIDevice.osVersion
        parameters[HeaderConstants.timeStamp] = Date.systemDate().dateString(with: .format5)
        parameters[HeaderConstants.model] = GBDeviceInfo.deviceInfo()?.modelString
        parameters[HeaderConstants.appVersion] = currentVersion
        parameters[HeaderConstants.adapterAppName] = HeaderConstants.appName
        return parameters
    }
    
    func headersforEspot() -> HeaderParams {
        var parameters = headersWithGuestOrUserToken()
        parameters[HeaderConstants.adapterAppName] = HeaderConstants.appName
        parameters[HeaderConstants.platform] = UIDevice.osName + UIDevice.osVersion
        parameters[HeaderConstants.timeStamp] = Date.systemDate().dateString(with: .format5)
        parameters[HeaderConstants.model] = GBDeviceInfo.deviceInfo()?.modelString
        parameters[HeaderConstants.appVersion] = currentVersion
        return parameters
    }
    
    // for social login and register request pass either guest token or actual user token; + x_brand and x_channel
    func headersForRegisterAndSocialLogin() -> HeaderParams {
        var parameters = HeaderParams()
        parameters[HeaderConstants.contentType] = HeaderConstants.contentTypeValue
        parameters[HeaderConstants.scope] = SecurityCheckConstant.name

        /* parameters[HeaderConstants.wcToken] = AppSessionManager.sharedInstance.wcToken ?? AppSessionManager.sharedInstance.guestUser?.wcToken
        parameters[HeaderConstants.wcTrustedToken] = AppSessionManager.sharedInstance.wcTrustedToken  ?? AppSessionManager.sharedInstance.guestUser?.wcTrustedToken */
        parameters[HeaderConstants.cacheControl] = HeaderConstants.cacheControlValue
        parameters[HeaderConstants.acceptEncoding] = HeaderConstants.gzip
        parameters[HeaderConstants.platform] = UIDevice.osName + UIDevice.osVersion
        parameters[HeaderConstants.timeStamp] = Date.systemDate().dateString(with: .format5)
        parameters[HeaderConstants.model] = GBDeviceInfo.deviceInfo()?.modelString
        parameters[HeaderConstants.appVersion] = currentVersion
        parameters[HeaderConstants.adapterAppName] = HeaderConstants.appName
        return parameters
    }

    func headersForImageSearch() -> HeaderParams {
        var parameters = HeaderParams()
        parameters[HeaderConstants.contentType] = HeaderConstants.contentTypeValue
        return parameters
    }

    func headersForRequest() -> HeaderParams {
        var parameters = HeaderParams()
        parameters[HeaderConstants.scope] = SecurityCheckConstant.name
        parameters[HeaderConstants.contentType] = HeaderConstants.contentTypeValue
        parameters[HeaderConstants.cacheControl] = HeaderConstants.cacheControlValue
        parameters[HeaderConstants.acceptEncoding] = HeaderConstants.gzip
        parameters[HeaderConstants.adapterAppName] = HeaderConstants.appName
        parameters[HeaderConstants.platform] = UIDevice.osName + UIDevice.osVersion
        parameters[HeaderConstants.timeStamp] = Date.systemDate().dateString(with: .format5)
        parameters[HeaderConstants.model] = GBDeviceInfo.deviceInfo()?.modelString
        parameters[HeaderConstants.appVersion] = currentVersion
        return parameters
    }
    func headersForNonWcsRequest() -> HeaderParams {
        var parameters = HeaderParams()
        parameters[HeaderConstants.contentType] = HeaderConstants.contentTypeValue
        parameters[HeaderConstants.platform] = UIDevice.osName + UIDevice.osVersion
        parameters[HeaderConstants.timeStamp] = Date.systemDate().dateString(with: .format5)
        parameters[HeaderConstants.model] = GBDeviceInfo.deviceInfo()?.modelString
        parameters[HeaderConstants.appVersion] = currentVersion
        parameters[HeaderConstants.adapterAppName] = HeaderConstants.appName
        return parameters
    }
}
