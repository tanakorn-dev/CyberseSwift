//
//  ValidateFunction.swift
//  CyberseSwift
//
//  Created by Tanakorn Phoochaliaw on 18/12/2560 BE.
//

import UIKit

public class ValidateFunction {
    
    public class func isEnglishName(textString: NSString, isFirstname: Bool) -> Bool {
        do {
            var rex = "^[a-zA-Z]*$"
            
            if isFirstname == true {
                rex = "^[a-zA-Z ]*$"
            }
            
            let regex = try NSRegularExpression(pattern: rex, options: .caseInsensitive)
            return regex.firstMatch(in: (textString as String), options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSMakeRange(0, (textString as String).count)) != nil
        } catch {
            return false
        }
    }
}
