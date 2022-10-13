//
//  GUAppConifgCache.swift
//  Guise
//
//  Created by Avinash P on 2/13/18.
//  Copyright © 2018 Robosoft Technologies. All rights reserved.
//

import Foundation
import ObjectMapper
//import RNCryptor

class GUAppConifgCache {
    
    static let shared = GUAppConifgCache()
    
    //Additonal endpoints to be cached can be added here.
    let cacheURLList: [String] = [(ApiEndPointConstants.espot + EspotName.home.rawValue), (ApiEndPointConstants.espot + ApiUrlPath.homePage)]
    
    //MARK: - Cache write
    func saveResponse<T: Mappable>(data: T, for endPoint: String?) {
        guard let endPoint = endPoint else {
            print("Response save failed. No endpoint to save")
            return
        }
        
        if isHomeScreenSlotsAPI(for: endPoint) && isResponseCached(for: endPoint) {
            clearConfigCache()
        }
        
        if !isCacheConfigDirectoryExists() {
            createCacheConfigDirectory()
        }
        
        let appCacheData = AppCacheData()
        
        let archiveURL = getArchiveURL(for: endPoint)
        appCacheData.date = formattedDateString(for: Date())
        if let jsonString = data.toJSONString() {
            appCacheData.jsonString = jsonString
        }
        
        do {
            let data = try NSKeyedArchiver.archivedData(withRootObject: appCacheData, requiringSecureCoding: false)
            try data.write(to: archiveURL)
        } catch {
            print("Couldn't write file")
        }
    }
    
    
    //MARK: - Cache read
    func getResponseDataFromCache<T: Mappable>(for type: T.Type, endPoint: String?) throws -> T? {
        guard let endPoint = endPoint else {
            let errorMessage = "Response fetch failed. No endpoint to save"
            
            throw AppError.customMessage(message: errorMessage, code: -1)
            
        }
        
        let archiveURL = getArchiveURL(for: endPoint)
        
        guard let appCacheData = getAppCacheData(for: archiveURL) as? AppCacheData else {
            let errorMessage = "No Cache data exists"
            
            
            throw AppError.customMessage(message: errorMessage, code: -1)
        }
        
        guard let jsonString = appCacheData.jsonString else {
            let errorMessage = "No json data found"
            throw AppError.customMessage(message: errorMessage, code: -1)
           
        }
        
        return Mapper<T>().map(JSONString: jsonString)
    }
    
    //MARK: - File unarchiver
    private func getAppCacheData(for fileURL: URL) -> Any? {
        do {
            let data = try Data(contentsOf: fileURL)
            if let cachedData = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data){
               return cachedData
            }
        } catch {
            print("ERROR: \(error.localizedDescription)")
        }
        return nil
    }
    
    //MARK: - Stale data check
    func isStaleData(for endPoint: String, date modifiedDate: Date) -> Bool {
        let archiveURL = getArchiveURL(for: endPoint)
        guard let appCacheDate = getAppCacheData(for: archiveURL) as? AppCacheData else {
           
            return true
        }
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MMM-yyyy h:mm a"
        guard let cachedDateString = appCacheDate.date else {
            
            return true
        }
        
        guard let cachedDate = dateFormatter.date(from: cachedDateString) else {
            
            return true
        }
        
        return (cachedDate < modifiedDate)
    }
    
    
    //MARK: - Helper functions
    fileprivate func createCacheConfigDirectory() {
        do {
            try FileManager.default.createDirectory(at: AppCacheData.DocumentsDirectory, withIntermediateDirectories: true, attributes: nil)
            print("Cache directory created successfully")
        } catch let error as NSError {
            print(error.localizedDescription);
        }
    }
    
    func isCacheConfigDirectoryExists() -> Bool {
        let archiveURL = AppCacheData.DocumentsDirectory
        var isDirectory = ObjCBool(true)
        return FileManager.default.fileExists(atPath: archiveURL.path, isDirectory: &isDirectory)
    }
    
    func isResponseCached(for endPoint: String) -> Bool {
        let archiveURL = getArchiveURL(for: endPoint)
        var isDirectory = ObjCBool(false)
        return FileManager.default.fileExists(atPath: archiveURL.path, isDirectory: &isDirectory)
    }
    
    func isUnArchievedDataAvailable(for endPoint: String) -> Bool {
        let archiveURL = getArchiveURL(for: endPoint)
        guard (getAppCacheData(for: archiveURL) as? AppCacheData) != nil else {
            return false
        }
        return true
    }
    
    func canCacheResponse(for endpoint: String) -> Bool {
        var canCache = false
        for url in cacheURLList {
            if endpoint.contains(url) && !endpoint.contains("loginquickaction") {
                canCache = true
                break
            }
        }
        return canCache
    }
    
    func isHomeScreenSlotsAPI(for endpoint: String) -> Bool {
        return endpoint.contains((ApiEndPointConstants.espot + EspotName.home.rawValue))
    }
    
    func clearConfigCache() {
        guard isCacheConfigDirectoryExists() else {
            print("No Cache directory found to clear")
            return
        }
        
        do {
            try FileManager.default.removeItem(at: AppCacheData.DocumentsDirectory)
            print("Cache cleared successfully!")
        } catch let error as NSError {
            print(error.localizedDescription);
        }
    }
    
    fileprivate func getArchiveURL(for endPoint: String) -> URL {
        let fileName = endPoint.replacingOccurrences(of: "/", with: "")
        return AppCacheData.DocumentsDirectory.appendingPathComponent(fileName)
    }
    
    fileprivate func formattedDateString(for date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MMM-yyyy h:mm a"
        return dateFormatter.string(from: date)
    }
}
