//
//  SplashScreenAPIManager.swift
//  TanishqJewellery
//
//  Created by Monali Das on 29/12/21.
//  Copyright © 2021 TITAN LTD.
//  Written under contract by Robosoft Technologies Pvt. Ltd. All rights reserved.
//

import PromiseKit
import os

extension ApiManager {
    func getSplashScreenDetails() -> Promise<SplashScreenResponse> {
        return Promise { seal in
            let request = PrivacyPolicyRequest.splashScreen
            executeRequest(request: request, type: SplashScreenResponse.self, cachePolicy: CachePolicy.network) { (response: ApiResponse?, error: Error?) in
                Logger.log(logLevel: .verbose, response.debugDescription)
                if error != nil {
                    seal.resolve(nil, AppError.customError(error: error!))
                } else {
                    seal.resolve(response?.result, response?.apiError)
                }
            }
        }
    }
}

