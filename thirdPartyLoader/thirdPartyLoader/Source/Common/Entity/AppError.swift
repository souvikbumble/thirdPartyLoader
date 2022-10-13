//
//  AppError.swift
//  Titan
//
//  Created by Kavitha on 12/01/18.
//  Copyright © 2018, Cognizant Technology Solutions.
//  Written under contract by Robosoft Technologies Pvt. Ltd.
//

import Foundation

enum AppStatusCodeEnum: Int {
    case networkUnavailable             = -1111
    case unknown                        = -1002
    case forbidden                      = 403
    case unauthorized                   = 401
    case locationServiceUnavailable     = -5001
    case notFound                       = 404
    case purchaseTimeout                = 302
    case unableToConnectToServer        = 504
    case noResponse                     = -1112
    case internalServer                 = 500

    static public func isSuccessCode(_ statusCode: Int) -> Bool {
        switch statusCode {
        case 200 ... 299:
            return true
        default:
            return false
        }
    }
    
    static public func isGatewayTimedOut(_ statusCode: Int) -> Bool {
        switch statusCode {
        case 504:
            return true
        default:
            return false
        }
    }
    
    static public func isInternalServer(_ statusCode: Int) -> Bool {
        switch statusCode {
        case 500:
            return true
        default:
            return false
        }
    }
    
    var isSessionTimeOut: Bool {
        switch self {
        case .unauthorized:
            return true
        default:
            return false
        }
    }

    var isForbidden: Bool {
        switch self {
        case .forbidden:
            return true
        default:
            return false
        }
    }

    var isNotFound: Bool {
        switch self {
        case .notFound:
            return true
        default:
            return false
        }
    }
}
/// enum to hold all error codes used in the app
enum AppError: Error {
    case networkUnavailable
    case unknown
    case locationServiceUnavailable
    case unableToConnectToServer
    case customMessage (message: String, code: Int?, request: ApiRequestable? = nil)
    case customError (error: Error, request: ApiRequestable? = nil)
    case customErrorWithDeeplink(message: String, code: Int?, deepLink: String, request: ApiRequestable? = nil)
}

extension AppError {
    public var code: AppStatusCodeEnum {
        switch self {
        case .networkUnavailable:
            return AppStatusCodeEnum.networkUnavailable
        case .locationServiceUnavailable:
            return AppStatusCodeEnum.locationServiceUnavailable
        case .unableToConnectToServer:
            return AppStatusCodeEnum.unableToConnectToServer
        case .customMessage( _, let code, _):
            if let errorCode = code {
                return AppStatusCodeEnum(rawValue: errorCode) ?? AppStatusCodeEnum.unknown
            }
            return AppStatusCodeEnum.unknown
        case .customError(let error, _):
            return AppStatusCodeEnum(rawValue: error.code) ?? AppStatusCodeEnum.unknown
        case .customErrorWithDeeplink:
            return AppStatusCodeEnum.purchaseTimeout
        default:
            return AppStatusCodeEnum.unknown
        }
    }
    public var localizedErrorDescription: String {
        switch self {
        case .networkUnavailable:
            return ErrorStringConstants.networkUnavailableMessage
        case .locationServiceUnavailable:
            return ErrorStringConstants.locationServiceUnavailable
        case .unableToConnectToServer:
            return ErrorStringConstants.unableToConnectToServer
        case .customMessage(let message, _, _):
            return message
        case .customError (let error, _):
            return error.localizedDescription
        case .customErrorWithDeeplink:
            return ErrorStringConstants.purchaseTimeoutMessage
        default:
            return ErrorStringConstants.unknownErrorMessage
        }
    }
    
    public var message: String {
        return localizedErrorDescription
    }
    
    public var deepLinkMessage: String {
        switch self {
        case .customErrorWithDeeplink(_, _, let deepLink, _):
            return deepLink
        default:
            return ""
        }
    }
    
    public var urlPath: String? {
        switch self {
        case .customError(_, let request), .customMessage( _, _, let request), .customErrorWithDeeplink(_, _, _, let request):
            let request = request
            var urlPath: String?
            if let baseUrl = request?.baseURL {
                urlPath = baseUrl
            }
            if let path = request?.path {
                urlPath = (urlPath ?? ApiEndPointConstants.baseUrl) + path
            }
            return urlPath
        default:
            return nil
        }
    }
    
    public var isErrorDisplayable: Bool {
        return false
    }
}
