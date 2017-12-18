//
//  ValidateFunction.swift
//  CyberseSwift
//
//  Created by Tanakorn Phoochaliaw on 18/12/2560 BE.
//

import UIKit

public class ValidateFunction {
    
    public class func isEnglishString(textString: NSString) -> Bool {
        do {
            let regex = try NSRegularExpression(pattern: "^[a-zA-Z]*$", options: .caseInsensitive)
            return regex.firstMatch(in: (textString as String), options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSMakeRange(0, (textString as String).count)) != nil
        } catch {
            return false
        }
    }
}
