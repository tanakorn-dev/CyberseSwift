//
//  TextFunction.swift
//  Pods
//
//  Created by Tanakorn Phoochaliaw on 4/19/2560 BE.
//
//

import Foundation

public class TextFunction {
    
    public class func numberToCurency(amount: NSNumber) -> String {
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.positiveFormat = "#,##0.00"
        
        return "\(formatter.string(from: amount)!)"
    }
    
    public class func numberToCurencyNoDecimal(amount: NSNumber) -> String {
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.positiveFormat = "#,##0"
        
        return "\(formatter.string(from: amount)!)"
    }
    
}
