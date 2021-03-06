# CyberseSwift

[![CI Status](http://img.shields.io/travis/tanakorn-dev/CyberseSwift.svg?style=flat)](https://travis-ci.org/tanakorn-dev/CyberseSwift)
[![Version](https://img.shields.io/cocoapods/v/CyberseSwift.svg?style=flat)](http://cocoapods.org/pods/CyberseSwift)
[![License](https://img.shields.io/cocoapods/l/CyberseSwift.svg?style=flat)](http://cocoapods.org/pods/CyberseSwift)
[![Platform](https://img.shields.io/cocoapods/p/CyberseSwift.svg?style=flat)](http://cocoapods.org/pods/CyberseSwift)

## Requirements

## Installation

CyberseSwift is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'CyberseSwift'
```

And import CyberseSwift into the class that wants to make use of the library.

```objc
import CyberseSwift
```

## Example

## Color Function

- UIColorFromRGB

```objc
self.backLabel.textColor = ColorFunction.colorFromRGB(rgbValue: 0xbb3af4)
```

## Text Function

- numberToCurency

```objc
self.number01.text = TextFunction.numberToCurency(amount: 3)  // return 3.00
self.number02.text = TextFunction.numberToCurency(amount: 3.3)  // return 3.30
self.number03.text = TextFunction.numberToCurency(amount: 3.33)  // return 3.33
self.number04.text = TextFunction.numberToCurency(amount: 3000)  // return 3,000.00
self.number05.text = TextFunction.numberToCurency(amount: 3.3333)  // return 3.33
```

## Image Function

- resizeImageSquare

```objc
let newImage01 = ImageFunction.resizeImageSquare(image: UIImage(), newSize: 20)  // New image size = 20x20
```

- resizeImageCustom

```objc
let newImage02 = ImageFunction.resizeImageCustom(image: UIImage(), width: 100, height: 50)  // New image size = 100x50
```

## Phone Number Function

- phoneNumberStringStyle

```objc
print(PhoneNumberFunction.phoneNumberStringStyle(phoneNumberString: "0901234567")) // 090 123 4567
print(PhoneNumberFunction.phoneNumberStringStyle(phoneNumberString: "1443")) // 1443
print(PhoneNumberFunction.phoneNumberStringStyle(phoneNumberString: "123ABC")) // WRONG FORMAT
```

## Validate Function

- isEnglishName

```objc
// First Naame
print("\(ValidateFunction.isEnglishName(textString: "AbcTccc", isFirstname: true))") // True
print("\(ValidateFunction.isEnglishName(textString: "Abc Tccc", isFirstname: true))") // True
print("\(ValidateFunction.isEnglishName(textString: "Abc123", isFirstname: true))") // False
print("\(ValidateFunction.isEnglishName(textString: "Abcธงชัย", isFirstname: true))") // False

// Last Name
print("\(ValidateFunction.isEnglishName(textString: "AbcTccc", isFirstname: false))") // True
print("\(ValidateFunction.isEnglishName(textString: "Abc Tccc", isFirstname: false))") // False
print("\(ValidateFunction.isEnglishName(textString: "Abc123", isFirstname: false))") // False
print("\(ValidateFunction.isEnglishName(textString: "Abcธงชัย", isFirstname: false))") // False
```

- isEmail

```objc
print("\(ValidateFunction.isEmail(candidate: "abcd@gmail.com"))") // True
print("\(ValidateFunction.isEmail(candidate: "abcd@cdf.co"))") // True
print("\(ValidateFunction.isEmail(candidate: "abcd@gmail"))") // False
print("\(ValidateFunction.isEmail(candidate: "abcd@"))") // False
print("\(ValidateFunction.isEmail(candidate: "abcd"))") // False
```

## Phone code Function

- withCountryCode
```objc
print("\(PhoneCodeFunction.withCountryCode(countryCode: "TH"))") // 66
print("\(PhoneCodeFunction.withCountryCode(countryCode: "AW"))") // 297
```

## Credit Card Function

- creditCardStringStyle
```objc
print(CreditCardFunction.creditCardStringStyle(creditCardString: "1234567890123456")) // 1234 5678 9012 3456
```

- expDateStyle
```objc
print(CreditCardFunction.expDateStyle(expDateString: "0221")) // 02/21
```

## Author

tanakorn-dev, tanakorn@setscope.com

## License

CyberseSwift is available under the MIT license. See the LICENSE file for more info.
