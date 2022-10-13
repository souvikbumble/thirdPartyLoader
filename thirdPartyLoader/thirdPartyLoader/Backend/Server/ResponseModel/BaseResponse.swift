//
//  BaseResponse.swift
//  Titan
//
//  Created by Kavitha on 12/01/18.
//  Copyright © 2018, Cognizant Technology Solutions.
//  Written under contract by Robosoft Technologies Pvt. Ltd.
//

import ObjectMapper

class BaseResponse: BaseModel {
    var identifier: String?
    var errorCode: Int?
    var errorCodeMsgString: String?
    var errorMessage: String?
    var errorDescription: String?
    var errorCodeString: String?
    var htmlContent : String?
    
    required init?(map: Map) {
        super.init(map: map)
    }
    
    override func mapping(map: Map) {
        identifier   <- map[CommonResponseConstants.identifier]
        htmlContent  <- map[StoreLocatorRequestConstants.htmlContent]
        // map error
        var errList: [[String: Any]]?
        errList <- map[ErrorResponseConstants.errors]
        if errList == nil {
            errList <- map[ErrorResponseConstants.errorMessageList]
        }
        if let errors = errList {
            if errors.count > 0 {
                let errDict = errors[0]
                errorCodeMsgString = errDict[ErrorResponseConstants.code] as? String ?? "0"
               
                errorCode = Int((errDict["errorCode"] as? String) ?? "0")
                
                if let excDict = errDict[ErrorResponseConstants.excData] as? [String: Any] {
                    errorMessage = excDict[ErrorResponseConstants.errorMsgForDisplay] as? String
                }
                if let msg = errDict[ErrorResponseConstants.message] as? String {
                    errorMessage = msg
                }
            }
        } else {
            errorMessage <- map[ErrorResponseConstants.errorMessage]
            if errorMessage == nil {
                errorMessage <- map[ErrorResponseConstants.errorDescription]
            }
            if errorMessage == nil {
                errorMessage <- map[ErrorResponseConstants.error]
            }
            if errorMessage == nil {
                errorMessage <- map[ErrorResponseConstants.errorMessage1]
            }
            if errorMessage == nil {
                errorMessage <- map[ErrorResponseConstants.errorAlternate]
            }
            if errorMessage == nil {
                errorMessage <- map[ErrorResponseConstants.errorMessage2]
            }
            errorCode <- map[ErrorResponseConstants.reasonCode]
            if errorCode == nil {
                errorCode <- map[ErrorResponseConstants.code]
            }
            if errorCode == nil {
                errorCodeString <- map[ErrorResponseConstants.errorCodeString]
            }
            /// in ase of feedback api getting error code as string
            if errorCodeString == nil {
                errorCodeString <- map[ErrorResponseConstants.code]
                errorCode = errorCodeString?.intValue
            }
            if errorMessage == nil {
                errorMessage <- map[ErrorResponseConstants.errorMsg]
            }
            if errorMessage == nil {
                errorMessage <- map[ErrorResponseConstants.message1]
            }
        }
             
    }
}
/*
 
 Different types of error responses
1)
 {
    "description": "https://Titan-WCS-Dev2-Web.aws-tx37.com:443/wcs/resources/store/10151/encircle/encircledetails?mobileNumber=9964676231",
    "reasonCode": 404,
    "code": "ERROR"
}
 
2)
{
 "error": "Sorry, no results found. Please try with a different city or pincode."
}
 3)
 {
 "Response": "Product is not available"
 }
 
 4)
 {
 "Error": "Not eligible for EMI!"
 }
 
 5)
 (
 {
 errorCode = TX1043;
 errorKey = "_ERR_CARTUPDATE_STOCKQTY_THRESHOLD";
 errorMessage = "Sorry, the item has only 11 left in stock. Please reduce the quantity.";
 errorParameters = 11;
 }
 )
 ]

 */
