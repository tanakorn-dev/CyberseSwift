//
//  ViewController.swift
//  CyberseSwift
//
//  Created by tanakorn-dev on 12/18/2017.
//  Copyright (c) 2017 tanakorn-dev. All rights reserved.
//

import UIKit
import CyberseSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        self.backLabel.textColor = ColorFunction.colorFromRGB(rgbValue: 0xbb3af4)
        
        print("\(TextFunction.numberToCurency(amount: 3))")
        print("\(TextFunction.numberToCurency(amount: 3.3))")
        print("\(TextFunction.numberToCurency(amount: 3.33))")
        print("\(TextFunction.numberToCurency(amount: 3000))")
        
//        let newImage01 = ImageFunction.resizeImageSquare(image: UIImage(), newSize: 20)
//        let newImage02 = ImageFunction.resizeImageCustom(image: UIImage(), width: 100, height: 50)
        
        print(PhoneNumberFunction.phoneNumberStringStyle(phoneNumberString: "0906634663"))
        print(PhoneNumberFunction.phoneNumberStringStyle(phoneNumberString: "1443"))
        print(PhoneNumberFunction.phoneNumberStringStyle(phoneNumberString: "123ABC"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

