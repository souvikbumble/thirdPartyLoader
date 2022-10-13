//
//  ErrorExtension.swift
//  Titan
//
//  Created by Kavitha on 18/01/18.
//  Copyright © 2018, Cognizant Technology Solutions.
//  Written under contract by Robosoft Technologies Pvt. Ltd.
//

import UIKit

extension Error {
    var code: Int { return (self as NSError).code }
    var domain: String { return (self as NSError).domain }
    var message: String { return (self as NSError).localizedDescription }
}
