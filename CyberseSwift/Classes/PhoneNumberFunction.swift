//
//  PhoneNumberFunction.swift
//  CommonFunctionSwift
//
//  Created by Tanakorn Phoochaliaw on 18/12/2560 BE.
//

import UIKit

public class PhoneNumberFunction {
    
    public class func phoneNumberStringStyle(phoneNumberString: NSString) -> NSString {
        
        let str = phoneNumberString
        let replaced = str.replacingOccurrences(of: " ", with: "")
        
        if self.isNumber(numberString: (replaced as NSString)) == true {
            let characters = Array(replaced)
            
            if (characters.count > 3) && (characters.count <= 10) && characters[0] == "0" {
                var index = 0
                var newPhoneString = ""
                
                for i in 0 ..< characters.count {
                    
                    if (index == 3) || (index == 6) {
                        newPhoneString.append(" ")
                    }
                    newPhoneString.append(characters[i])
                    index = index + 1
                }
                
                return newPhoneString as NSString
            }
            else {
                return replaced as NSString
            }
        }
        else {
            return ""
        }
    }
    
    public class func phoneNumberMinusStyle(phoneNumberString: NSString) -> NSString {
        
        let str = phoneNumberString
        let replaced = str.replacingOccurrences(of: " ", with: "")
        
        if self.isNumber(numberString: (replaced as NSString)) == true {
            let characters = Array(replaced)
            
            if (characters.count > 3) && (characters.count <= 10) && characters[0] == "0" {
                var index = 0
                var newPhoneString = ""
                
                for i in 0 ..< characters.count {
                    
                    if (index == 3) || (index == 6) {
                        newPhoneString.append("-")
                    }
                    newPhoneString.append(characters[i])
                    index = index + 1
                }
                
                return newPhoneString as NSString
            }
            else {
                return replaced as NSString
            }
        }
        else {
            return ""
        }
    }
    
    public class func isNumber(numberString: NSString) -> Bool {
        do {
            let regex = try NSRegularExpression(pattern: "^[0-9]*$", options: .caseInsensitive)
            return regex.firstMatch(in: (numberString as String), options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSMakeRange(0, (numberString as String).count)) != nil
        } catch {
            return false
        }
    }

}
