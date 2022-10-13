//
//  ApiResponse.swift
//  Titan
//
//  Created by Kavitha on 12/01/18.
//  Copyright © 2018, Cognizant Technology Solutions.
//  Written under contract by Robosoft Technologies Pvt. Ltd.
//

import IBMMobileFirstPlatformFoundation

struct ApiResponse<T>: CustomStringConvertible {
    // MARK: - Properties
    var headerReponse: [AnyHashable: Any]?
    var statusCode: Int?
    var request: ApiRequestable?
    var jsonResponse: [AnyHashable: Any]?
    var result: T?
    var error: Error?
    
    
    // MARK: - init method
    init(response: WLResponse?, requestObject: ApiRequestable?, reponseObject: T?, json: [AnyHashable: Any]? = nil) {
        headerReponse  = response?.headers
        statusCode     = response?.status
        request = requestObject
        jsonResponse = json
        result = reponseObject
        error = response?.error
    }
    
    var description: String {
        var description = ""
        description += "Request method: \(request?.method ?? "")\n"
        description += "Request parameters: \(request?.parameters ?? [:])\n"
        description += "Request url: \(request?.baseURL ?? "")\(request?.path ?? "")\n"
        description += ((jsonResponse != nil) ? "Response: \(jsonResponse!)\n" : "No response \n")
        description += ((error != nil) ? "Error: \(error!.localizedDescription), \(error!.code)\n" : "No error \n")
        return description
    }
    
    var apiError: AppError? {
        let resultvalue = result as? BaseResponse
        var err: AppError?
        
        /// handle error from response
        if let errorCode = resultvalue?.errorCode {
            if !AppStatusCodeEnum.isSuccessCode(errorCode) {
                err = getError(errorCode: errorCode)
            }
        } else if let errorCode = statusCode, errorCode != 0 {
            if !AppStatusCodeEnum.isSuccessCode(errorCode) {
                err = getError(errorCode: errorCode)
            }
        } else if let errorCode = error?.code {
            if !AppStatusCodeEnum.isSuccessCode(errorCode) {
                err = getError(errorCode: errorCode)
            }
        }
        return err
    }
    
    func getError(errorCode: Int) -> AppError? {
        let resultvalue = result as? BaseResponse
        var err: AppError?
        let message = resultvalue?.errorMessage ?? error?.message ?? ErrorStringConstants.unknownErrorMessage

        if let val = jsonResponse?[ErrorResponseConstants.deepLinkString] as? String {
            err = AppError.customErrorWithDeeplink(message: message, code: errorCode, deepLink: val, request: request)
        } else if AppStatusCodeEnum.isGatewayTimedOut(errorCode) {
            err = AppError.customMessage(message: ErrorStringConstants.unableToConnectToServer, code: AppStatusCodeEnum.unableToConnectToServer.rawValue, request: request)
        } else if AppStatusCodeEnum.isInternalServer(errorCode) && message.lowercased().contains(ErrorStringConstants.internalServerErrorFromResponse) {
            err = AppError.customMessage(message: ErrorStringConstants.internalServerError, code: AppStatusCodeEnum.internalServer.rawValue, request: request)
        } else {
            err = AppError.customMessage(message: message, code: errorCode, request: request)
        }
        return err
    }
    
    var emptyResponseError: AppError? {
        var err: AppError?
        if jsonResponse?.isEmpty == true || jsonResponse == nil {
           err = AppError.customMessage(message: ErrorStringConstants.dataNotFound, code: AppStatusCodeEnum.noResponse.rawValue, request: request)
       }
        return err
    }
    
    //App down time
    var appDownTimeFlag: Bool {
        if let flag = jsonResponse?[AppDownTimeResponseConstant.downTimeFlag] as? String {
            return flag.boolValue
        }
        return false
    }
    
    var appDownTimeMessage: String? {
        if let message = jsonResponse?[AppDownTimeResponseConstant.downTimeMessage] as? String {
            return message
        }
        return nil
    }
    // MARK: html response
    var htmlResponseString: String? {
        if let htmlResponse = jsonResponse?[StoreLocatorRequestConstants.htmlContent] as? String {
            return htmlResponse
        }
        return nil
    }
}
