//
//  Validator.swift
//  thirdPartyLoader
//
//  Created by Souvik Maiti on 09/10/22.
//

import Foundation

public struct Validator {
    public static func validEmail(_ email: String) -> Bool {
        
        // email validate
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
    public static func sayHello() {
        
        print("i am WORKING on it.")
    }
    
    public func getSplashScreenAPiCall(splashAPIManager: ApiManager){
        var manager = splashAPIManager
        
        splashAPIManager.getSplashScreenDetails().done { response in
            print(response)
//            self.splashResponse = response
//            if let asserts = self.splashResponse?.assets {
//                //self.downloadAndSaveImages(splashImageUrl: asserts.at(index: 0)?.itemThumbnail ?? "")
//            }
        }.catch { error in
            if let appError = error as? AppError {
                Logger.log(logLevel: .verbose, "Unable to load splash screen \(appError.localizedErrorDescription)")
            }
        }.finally {
            
        }
    }
    
}
