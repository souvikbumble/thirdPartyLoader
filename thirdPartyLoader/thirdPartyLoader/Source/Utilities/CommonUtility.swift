//
//  CommonUtility.swift
//  Titan
//
//  Created by Kavitha on 09/01/18.
//  Copyright © 2018, Cognizant Technology Solutions.
//  Written under contract by Robosoft Technologies Pvt. Ltd.
//

import UIKit

class CommonUtility: NSObject {

    static func appVersion() -> String? {
        return Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String
    }
    static func buildNumber() -> String? {
        return Bundle.main.infoDictionary?["CFBundleVersion"] as? String
    }
    
    /**
     Returns the App Language set by the User
     */
    
    static func isValidInput(errorDict: NSMutableDictionary?) -> Bool {
       
        if errorDict?.count == 0 {
            return true
        } else {
            return false
        }
    }
    
}
