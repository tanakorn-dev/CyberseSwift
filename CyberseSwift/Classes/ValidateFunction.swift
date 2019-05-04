//
//  ValidateFunction.swift
//  CyberseSwift
//
//  Created by Tanakorn Phoochaliaw on 18/12/2560 BE.
//

import UIKit

public class ValidateFunction {
    
    public class func isEnglishName(candidate: NSString, isFirstname: Bool) -> Bool {
        var rex = "^[a-zA-Z]*$"
        
        if isFirstname == true {
            rex = "^[a-zA-Z ]*$"
        }
        
        return NSPredicate(format: "SELF MATCHES %@", rex).evaluate(with: candidate)
    }
    
    public class func isEmail(candidate: String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        return NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluate(with: candidate)
    }
    
    public class func isThaiPhone(candidate: String) -> Bool {
        let thaiPhoneRegex = "0+[986]{1}+[0-9]{8}"
        return NSPredicate(format: "SELF MATCHES %@", thaiPhoneRegex).evaluate(with: candidate)
    }
    
    public class func isPassword(candidate: String) -> Bool {
        let passwordRegex = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)[a-zA-Z\\d]{8,16}$"
        return NSPredicate(format: "SELF MATCHES %@", passwordRegex).evaluate(with: candidate)
    }
}
