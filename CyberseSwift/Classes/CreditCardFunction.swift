//
//  CreditCardFunction.swift
//  CyberseSwift
//
//  Created by Tanakorn Phoochaliaw on 6/1/2561 BE.
//

import UIKit

public class CreditCardFunction {
    
    public class func creditCardStringStyle(creditCardString: NSString) -> NSString {
        
        let str = creditCardString
        let replaced = str.replacingOccurrences(of: " ", with: "")
        
        if PhoneNumberFunction.isNumber(numberString: (replaced as NSString)) == true {
            let characters = Array(replaced)

            var index = 0
            var newCCString = ""
            
            for i in 0 ..< characters.count {
                if i < 16 {
                    if (index == 4) || (index == 8) || (index == 12) {
                        newCCString.append(" ")
                    }
                    
                    newCCString.append(characters[i])
                    index = index + 1
                }
            }
            
            return newCCString as NSString
        }
        else {
            return "WRONG FORMAT"
        }
    }
    
    public class func expDateStyle(expDateString: NSString) -> NSString {
        
        let str = expDateString
        let replaced = str.replacingOccurrences(of: "/", with: "")
        
        if PhoneNumberFunction.isNumber(numberString: (replaced as NSString)) == true {
            let characters = Array(replaced)
            
            var index = 0
            var newExpString = ""
            
            for i in 0 ..< characters.count {
                if i < 4 {
                    if (index == 2) {
                        newExpString.append("/")
                    }
                    
                    newExpString.append(characters[i])
                    index = index + 1
                }
            }
            
            return newExpString as NSString
        }
        else {
            return "WRONG FORMAT"
        }
    }
    
    public class func cvvStyle(cvvString: NSString) -> NSString {
    
        if PhoneNumberFunction.isNumber(numberString: cvvString) == true {
            let characters = Array(cvvString as String)
            var newCvvString = ""
            
            for i in 0 ..< characters.count {
                if i < 3 {
                    newCvvString.append(characters[i])
                }
            }
            
            return newCvvString as NSString
        }
        else {
            return "WRONG FORMAT"
        }
    }
    
    public class func cardNameStyle(cardNameString: NSString) -> NSString {
        
        let characters = Array(cardNameString as String)
        var newCvvString = ""
        
        if characters.count <= 22 {
            return cardNameString
        }
        else {
            for i in 0 ..< characters.count {
                if i < 22 {
                    newCvvString.append(characters[i])
                }
            }
            
            return newCvvString as NSString
        }
    }
}
