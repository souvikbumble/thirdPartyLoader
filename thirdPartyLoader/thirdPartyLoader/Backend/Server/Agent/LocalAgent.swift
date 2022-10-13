//
//  LocalAgent.swift
//  Titan
//
//  Created by Kavitha on 12/01/18.
//  Copyright © 2018, Cognizant Technology Solutions.
//  Written under contract by Robosoft Technologies Pvt. Ltd.
//

import Foundation
import ObjectMapper

class LocalAgent: BaseAgent, AgentProtocol {
    var apiRequest: ApiRequestable?
    
    internal func execute<T: Mappable>(request: ApiRequestable, type: T.Type, completion: @escaping (ApiResponse<T>?, Error?) -> Void) {
        let resource = resourceName(request: request)
        apiRequest = request
        
        if let path = Bundle.main.path(forResource: resource, ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .alwaysMapped)
                do {
                    let jsonObject = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.mutableContainers)
                    var responseObject: T?
                    if let jsonResponse = jsonObject as? [String: Any] {
                        responseObject = Mapper<T>().map(JSON: jsonResponse)
                    }
                    let dataResponse = ApiResponse.init(response: nil, requestObject: self.apiRequest, reponseObject: responseObject, json: jsonObject as? [AnyHashable : Any])
                    completion(dataResponse, nil)
                    
                } catch let error {
                    completion(nil, error)
                }
                
                
            } catch let error {
                completion(nil, error)
            }
        } else {
            completion(nil, AppError.unknown)
        }
        
    }
    
    internal func cancelRequest() {
        
    }
}

private extension LocalAgent {
    
    func resourceName(request: ApiRequestable?) -> String? {
        var resourceName: String?
        guard let path = request?.path else { return nil }
        resourceName = path
        if path.contains("ghs"){
            resourceName = tghJson(request: request)
        } else if path.contains("digiGold"){
            resourceName = tghJson(request: request)
        } else if path.contains("digigoldBuySell"){
            resourceName = digiGoldJsonBuySellSlot(request: request)
        } else if path.contains("digigold_l"){
            resourceName = digiGoldJson(request: request)
        } else if path.contains("sectionplplist_slot"){
            resourceName = "SectionPlpList"
        } else if path.contains("sectionplp_item"){
            resourceName = "SectionPlp"
        }else if path.contains("NewHomeScreenSlot"){
            resourceName = "HomeScreenSlot"
        }else if path.contains("Spotlight"){
            resourceName = "Spotlight"
        }else if path.contains("BrandStory"){
            resourceName = "SlotBrandStory"
        }else if path.contains("JewCategories"){
            resourceName = "SlotJewCategories"
        }else if path.contains("JewFollowUs"){
            resourceName = "SlotJewFollowUs"
        }else if path.contains("tanishqPromises"){
            resourceName = "TanishqPromisesPdp"
        }else if path.contains("productdisplay/fetch/product"){
            resourceName = "FetchPdp"
        }else if path.contains(ApiEndPointConstants.bestSellers){
            resourceName = "TrendingProductHome"
        }else if path.contains("shopByOccasion"){
            resourceName = "ShopByOccasion"
        }else if path.contains("shopByCategory"){
            resourceName = "ShopByOccasion"
        }else if path.contains("shopByGender"){
            resourceName = "ShopByGender"
        }
        
        return resourceName
    }
    
    func tghJson(request: ApiRequestable?)  -> String? {
        var resourceName: String?
        guard let path = request?.path else { return nil }
        resourceName = path
        if path.contains("onlineUserGetAccount") {
            resourceName = "GhAccountsList"
        } else if path.contains("getGHSAccountDetail") {
            resourceName = "GhPayInstallments"
        }  else if path.contains("getCustomerDetails") {
            resourceName = "GhAccountProfileDetail"
        } else if path.contains("getNomineeDetails") {
            resourceName = "GhAccountNomineeDetail"
        }
        return resourceName
    }
    
    func digiGoldJson(request: ApiRequestable?)  -> String? {
        var resourceName: String?
        guard let path = request?.path else { return nil }
        resourceName = path
        if path.contains("aboutDigiGold") {
            resourceName = "DigiGold_About_Digital_Gold"
        } else if path.contains("digiGoldFaq") {
            resourceName = "DigiGold_FAQ"
        }  else if path.contains("digiGoldHowItWorks") {
            resourceName = "DigiGold_How_It_Works"
        } else if path.contains("digiGoldNonLoggedInSlots") {
            resourceName = "DigiGoldNonLoggedIn_Home_slot_list_API"
        }  else  if path.contains("digigold_l/SLOT_DIGIGOLD_FAQ") {
            resourceName = "DigiGold_FAQ"
        } else  if path.contains("digigold_l/SLOT_DIGIGOLD_DIGIGOLD_GIFT") {
            resourceName = "DigiGold_Gift"
        } else  if path.contains("digigold_l/SLOT_DIGIGOLD_EXCHANGE") {
            resourceName = "DigiGold_EXCHANGE"
        } else  if path.contains("digigold_l/SLOT_DIGIGOLD_TRANSACTION") {
            resourceName = "DigiGold_Transaction_detail"
        } else  if path.contains("digigold_l") {
            resourceName = "DigiGoldLoggedIn_Home_slot_list_API"
        }
        return resourceName
    }
    
    func digiGoldJsonBuySellSlot(request: ApiRequestable?)  -> String? {
        var resourceName: String?
        guard let path = request?.path else { return nil }
        resourceName = path
        if path.contains("digigoldBuySell/Benefits") {
            resourceName = "DigiGold_Benifits"
        } else if path.contains("digigoldBuySell") {
            resourceName = "DigiGoldBuySellPage"
        }
        return resourceName
    }

    
}
