//
//  ImageFunction.swift
//  Pods
//
//  Created by Tanakorn Phoochaliaw on 4/19/2560 BE.
//
//

import Foundation

public class ImageFunction {
    
    public class func resizeImageSquare(image: UIImage, newSize: CGFloat) -> UIImage {
        
        UIGraphicsBeginImageContext(CGSize(width: newSize, height: newSize))
        image.draw(in: CGRect(x: 0, y: 0, width: newSize, height: newSize))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage!
    }
    
    public class func resizeImageCustom(image: UIImage, width: CGFloat, height: CGFloat) -> UIImage {
        
        UIGraphicsBeginImageContext(CGSize(width: width, height: height))
        image.draw(in: CGRect(x: 0, y: 0, width: width, height: height))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage!
    }
    
}
