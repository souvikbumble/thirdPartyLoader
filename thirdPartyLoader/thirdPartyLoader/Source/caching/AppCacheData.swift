//
//  AppCacheData.swift
//  Guise
//
//  Created by Avinash P on 2/14/18.
//  Copyright © 2018 Robosoft Technologies. All rights reserved.
//

import Foundation
import ObjectMapper

class AppCacheData: NSObject, NSSecureCoding {
    static var supportsSecureCoding: Bool = true
    static let CacheDirectoryName = "CacheConfig"
    
    static let DocumentsDirectory: URL = {
        var documentDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
        documentDirectory.appendPathComponent(CacheDirectoryName)
        return documentDirectory
    }()
    
    struct PropertyKey {
        static let date = "date"
        static let jsonString = "jsonString"
    }
    
    var date: String?
    var jsonString: String?
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(date, forKey: PropertyKey.date)
        aCoder.encode(jsonString, forKey: PropertyKey.jsonString)
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        guard let date = aDecoder.decodeObject(forKey: PropertyKey.date) as? String else {
            print("#log :No date found")
            return nil
        }
        
        guard let jsonString = aDecoder.decodeObject(forKey: PropertyKey.jsonString) as? String else {
            print("#warning: No json string found")
            return nil
        }
        self.init()
        self.date = date
        self.jsonString = jsonString
    }
}
