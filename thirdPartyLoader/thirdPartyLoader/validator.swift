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
}
