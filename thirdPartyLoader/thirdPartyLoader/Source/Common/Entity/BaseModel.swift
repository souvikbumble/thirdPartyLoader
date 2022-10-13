//
//  BaseModel.swift
//  Titan
//
//  Created by Kavitha on 17/01/18.
//  Copyright © 2018, Cognizant Technology Solutions.
//  Written under contract by Robosoft Technologies Pvt. Ltd.
//

import UIKit
import ObjectMapper

class BaseModel: NSObject, Mappable {
    required init?(map: Map) { }
    override init() { super.init() }
    
    func mapping(map: Map) {
    }
}
