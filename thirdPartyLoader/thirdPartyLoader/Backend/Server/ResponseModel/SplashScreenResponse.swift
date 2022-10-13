//
//  SplashScreenResponse.swift
//  TanishqJewellery
//
//  Created by Monali Das on 29/12/21.
//  Copyright © 2021 TITAN LTD.
//  Written under contract by Robosoft Technologies Pvt. Ltd. All rights reserved.
//

import Foundation
import ObjectMapper

class SplashScreenResponse: BaseModel {
    
    var layoutType: String?
    var assets: [Assets]?
    
    required init?(map: Map) { super.init(map: map)}
    
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        layoutType <- map[SplashScreenConstant.layoutType]
        assets <- map[SplashScreenConstant.assets]
      
    }
}

class Assets: BaseModel {
    var itemIndex: String?
    var itemtTitle: String?
    var itemThumbnail: String?
    
    required init?(map: Map) { super.init(map: map)}
    
    override func mapping(map: Map) {
        super.mapping(map: map)
        
        itemIndex <- map[SplashScreenConstant.itemIndex]
        itemtTitle <- map[SplashScreenConstant.itemtTitle]
        itemThumbnail <- map[SplashScreenConstant.itemThumbnail]
      
    }
}
