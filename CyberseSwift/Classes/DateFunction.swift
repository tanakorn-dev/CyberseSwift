//
//  DateFunction.swift
//  CyberseSwift
//
//  Created by Tanakorn Phoochaliaw on 3/4/2561 BE.
//

import UIKit

public class DateFunction {
    
    public class func dateStringStyle(dateString: String) -> String {
        
//        2018-03-25
        let dateArr = dateString.components(separatedBy: "-")
        
        return "\(self.dayCheckDigit(day: dateArr[2])) \(self.monthShortForm(month: dateArr[1])) \(dateArr[0])"
    }
    
    class func dayCheckDigit(day: String) -> String {
        if day == "01" {
            return "1"
        }
        else if day == "02" {
            return "2"
        }
        else if day == "03" {
            return "3"
        }
        else if day == "04" {
            return "4"
        }
        else if day == "05" {
            return "5"
        }
        else if day == "06" {
            return "6"
        }
        else if day == "07" {
            return "7"
        }
        else if day == "08" {
            return "8"
        }
        else if day == "09" {
            return "9"
        }
        else {
            return day
        }
    }
    
    class func monthShortForm(month: String) -> String {
        if month == "01" {
            return "Jan"
        }
        else if month == "02" {
            return "Feb"
        }
        else if month == "03" {
            return "Mar"
        }
        else if month == "04" {
            return "Apr"
        }
        else if month == "05" {
            return "May"
        }
        else if month == "06" {
            return "Jun"
        }
        else if month == "07" {
            return "Jul"
        }
        else if month == "08" {
            return "Aug"
        }
        else if month == "09" {
            return "Sep"
        }
        else if month == "10" {
            return "Oct"
        }
        else if month == "11" {
            return "Nov"
        }
        else {
            return "Dec"
        }
    }
    
    class func monthForm(month: String) -> String {
        if month == "01" {
            return "January"
        }
        else if month == "02" {
            return "February"
        }
        else if month == "03" {
            return "March"
        }
        else if month == "04" {
            return "April"
        }
        else if month == "05" {
            return "May"
        }
        else if month == "06" {
            return "June"
        }
        else if month == "07" {
            return "July"
        }
        else if month == "08" {
            return "August"
        }
        else if month == "09" {
            return "September"
        }
        else if month == "10" {
            return "October"
        }
        else if month == "11" {
            return "November"
        }
        else {
            return "December"
        }
    }
}
