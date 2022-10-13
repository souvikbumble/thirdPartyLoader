//
//  StringExtension.swift
//  Titan
//
//  Created by Kavitha on 09/01/18.
//  Copyright © 2018, Cognizant Technology Solutions.
//  Written under contract by Robosoft Technologies Pvt. Ltd.
//

import UIKit
import CommonCrypto


struct StringConstants {
    static let emailRegularExpression = "[a-zA-Z0-9\\+\\.\\_\\%\\-\\+]{1,256}" +
    "\\@" +
    "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}" +
    "(" +
        "\\." +
        "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25}" +
    ")+"
    static let predicateFormat = "SELF MATCHES %@"
    static let mobileNumberMaxLength = 30
}

extension String {
    
    var isNumber: Bool {
        return !isEmpty && rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil
    }
    
    public var boolValue: Bool {
        switch self {
        case "true", "Available", "1", "TRUE", "True", "Yes", "YES":
            return true
        default:
            return false
        }
    }
    public var availabilityBoolValue: Bool {
        switch self {
        case "Backorderable":
            return true
        default:
            return boolValue
        }
    }
    public var intValue: Int {
        return (self as NSString).integerValue
    }
    public var doubleValue: Double {
        return (self as NSString).doubleValue
    }

    // to get slot layout type from slot string
//    var slotTileType: SlotTileType? {
//        return SlotTileType(rawValue: self)
//    }
//
//    func currencyType() -> CurrencyType {
//        guard let currencyType = CurrencyType(rawValue: self) else {
//            return .rupee
//        }
//        return currencyType
//    }
//
//    func metalType() -> MetalType? {
//        return MetalType(rawValue: self)
//    }
//
//    func schemeType() -> SchemeTabs {
//        guard let schemeType = SchemeTypeTabs(rawValue: self) else {
//            return .goldenHarvest
//        }
//        return schemeType == .goldenHarvest ? .goldenHarvest : .rivaahAshirwaad
//    }
    
    var htmlDecodedString: String? {
        
        guard (self != "") else { return self }
        
        var newStr = self
        // from https://en.wikipedia.org/wiki/List_of_XML_and_HTML_character_entity_references
        let entities = [ //a dictionary of HTM/XML entities.
            "&quot;"    : "\"",
            "&amp;"     : "&",
            "&apos;"    : "'",
            "&lt;"      : "<",
            "&gt;"      : ">",
            "&deg;"     : "º",
            ]
        
        for (name,value) in entities {
            newStr = newStr.replacingOccurrences(of: name, with: value)
        }
        return newStr
    }
    
//    var html2AttributedString: NSAttributedString? {
//        guard !self.isEmptyOrWhitespace(),
//            let htmlDecoded = htmlDecodedString, htmlDecoded.count > 0 else { return nil }
//        return Data(htmlDecoded.utf8).html2AttributedString
//    }
    
//    var html2String: String {
//        return html2AttributedString?.string ?? self
//    }
    /**
     Returns the localized string
     
     - returns: String
     */
//    func localized() -> String {
//        // change to pass the selected language
//        let localizedResourceName = localizationResourceName()
//        if let path = Bundle.main.path(forResource: localizedResourceName, ofType: LanguageFolderConstants.lProjType), let bundle = Bundle(path: path) {
//            return bundle.localizedString(forKey: self, value: nil, table: nil)
//        } else if let path = Bundle.main.path(forResource: LanguageFolderConstants.english, ofType: LanguageFolderConstants.lProjType), let bundle = Bundle(path: path) {
//            return bundle.localizedString(forKey: self, value: nil, table: nil)
//        }
//        return self
//    }
    
    /// This method returns Class name as String
    ///
    /// - Parameter objectClass: AnyClass
    /// - Returns: String
    static func getStringOfClass(objectClass: AnyClass) -> String {
        let className = String(describing: objectClass.self)
        return className
    }
    
    /**
     Returns true if  email id is valid; false otherwise
     
     - parameter emailInput: String
     
     - returns: Bool
     */
    func isValidEmail() -> Bool {
        let emailRegExpression = StringConstants.emailRegularExpression
        let emailTest = NSPredicate(format: StringConstants.predicateFormat, emailRegExpression)
        return emailTest.evaluate(with: self)
    }
    /**
     Returns true if phone number meets max length condition; false otherwise
     
     - parameter mobileInput: String
     
     - returns: Bool
     */
    func isValidMobileNumber() -> Bool {
        return (self.count > StringConstants.mobileNumberMaxLength)
    }
    
    /**
     Returns the trimmed string by removing white space and new line characters
     
     - returns: String
     */
    func trimmedString() -> String {
        return trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines)
    }
    
    func removeWhiteSpaces() -> String {
        return self.replacingOccurrences(of: " ", with: "")
    }
    /**
     Returns the Bool value of String contains Empty or whitespace
     
     - returns: Bool
     */
    func isEmptyOrWhitespace() -> Bool {
        if(self.isEmpty) {
            return true
        }
        let whitespaceSet = CharacterSet.whitespaces
        return (self.trimmingCharacters(in: whitespaceSet) == "")
    }
    
    func isSpace() -> Bool {
        return (self == " ")
    }
    
    func stringByRemovingSpace() -> String {
        let whitespaceSet = CharacterSet.whitespaces
        return self.trimmingCharacters(in: whitespaceSet)
    }
    /// Returns langauge specific localized folder name
//    fileprivate func localizationResourceName() -> String {
//        let appLang = CommonUtility.appLanguage()
//        var selectedLanguage: String  =  LanguageFolderConstants.english
//        switch appLang {
//        case AppLanguage.hindi:
//            selectedLanguage =  LanguageFolderConstants.hindi
//        default:
//            selectedLanguage = LanguageFolderConstants.english
//        }
//
//        return selectedLanguage
//    }
    
    func percentageOffString() -> String {
        return self + "% off"
    }
    
    func strikeThroughText() -> NSAttributedString? {
        var attributeString: NSMutableAttributedString =  NSMutableAttributedString(string: "")
        if !self.isEmpty {
            attributeString =  NSMutableAttributedString(string: self)
            attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSRange(location: 0, length: attributeString.length))
        }
         return attributeString
    }
    
    func isZero() -> Bool {
        return self.doubleValue == 0
    }
    
//    func formattedCurrency() -> String? {
//        return formattedCurrency(currencyType: AppSessionManager.sharedInstance.currencyType ?? .rupee)
//    }
//    func formattedCurrency(currencyType: CurrencyType?) -> String? {
//        var formattedString: String?
//        let amount = self.doubleValue
//        let currencyFormatter = NumberFormatter()
//        currencyFormatter.usesGroupingSeparator = true
//        // localize to your grouping and decimal separator
//        currencyFormatter.locale = .current
//        if currencyType == .rupee {
//            currencyFormatter.locale = Locale(identifier: "en_IN")
//            currencyFormatter.numberStyle = .decimal
//            let formatVal = currencyFormatter.string(from: NSNumber(value: abs(self.intValue)))
//            if formatVal != nil {
//                formattedString = String(format: "₹ %@", formatVal!)
//            }
//
//        } else if currencyType == .dollar {
//            currencyFormatter.locale = Locale(identifier: "en_US")
//            currencyFormatter.numberStyle = .currency
//
//            formattedString = currencyFormatter.string(from: NSNumber(value: abs(self.doubleValue)))
//            if formattedString != nil {
//                formattedString = formattedString?.replacingOccurrences(of: "$", with: "$ ")
//            }
//        }
//        if formattedString != nil && amount < 0 {
//            formattedString = "-" + formattedString!
//        }
//        return formattedString?.removeWhiteSpaces()
//    }
//
//    func formattedDoubleCurrency() -> String? {
//        return formattedDoubleCurrency(currencyType: AppSessionManager.sharedInstance.currencyType ?? .rupee)
//    }
//
//    func formattedDoubleCurrency(currencyType: CurrencyType?) -> String? {
//        var formattedString: String?
//        let amount = self.doubleValue
//        let currencyFormatter = NumberFormatter()
//        currencyFormatter.usesGroupingSeparator = true
//        // localize to your grouping and decimal separator
//        currencyFormatter.locale = .current
//        if currencyType == .rupee {
//            currencyFormatter.locale = Locale(identifier: "en_IN")
//            currencyFormatter.numberStyle = .decimal
//            currencyFormatter.minimumFractionDigits = 2
//            currencyFormatter.maximumFractionDigits = 2
//            let formatVal = currencyFormatter.string(from: NSNumber(value: abs(self.doubleValue)))
//            if formatVal != nil {
//                formattedString = String(format: "₹ %@", formatVal!)
//            }
//        } else if currencyType == .dollar {
//            currencyFormatter.locale = Locale(identifier: "en_US")
//            currencyFormatter.numberStyle = .currency
//
//            formattedString = currencyFormatter.string(from: NSNumber(value: abs(self.doubleValue)))
//            if formattedString != nil {
//                formattedString = formattedString?.replacingOccurrences(of: "$", with: "$ ")
//            }
//        }
//        if formattedString != nil && amount < 0 {
//            formattedString = "-" + formattedString!
//        }
//        return formattedString?.removeWhiteSpaces()
//    }
//
//    func substring(with nsrange: NSRange) -> String? {
//        guard let range = Range(nsrange, in: self) else { return nil }
//        return String(self[range])
//    }
//    // to bold a part of string in the sentence
//    func bold(string: String?, fontSize: CGFloat) -> NSAttributedString {
//        let attributedString = NSMutableAttributedString(string: self, attributes: nil)
//        if let highlightText = string {
//            let range = (self as NSString).range(of: highlightText)
//            attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont.genericFont(fontSize: fontSize, fontWeight: .regular), range: range)
//        }
//        return NSAttributedString(attributedString: attributedString)
//    }
//
//    var  urlEncodedString: String? {
//        let allowedCharacterSet = (CharacterSet(charactersIn: CharacterSetConstant.urlDisallowedCharacters).inverted)
//        let encodedStr = addingPercentEncoding(withAllowedCharacters: allowedCharacterSet)
//        return encodedStr
//    }
    
    func separate(every stride: Int = 4, with separator: Character = " ") -> String {
        return String(enumerated().map { $0 > 0 && $0 % stride == 0 ? [separator, $1] : [$1]}.joined())
    }
    
    func nsRange(from range: Range<Index>) -> NSRange {
        let startPos = self.distance(from: self.startIndex, to: range.lowerBound)
        let endPos = self.distance(from: self.startIndex, to: range.upperBound)
        return NSMakeRange(startPos, endPos - startPos)
    }
    
    func formatAmountValue() -> String? {
        var text = self
        text = text.replacingOccurrences(of: "₹", with: "")
        text = text.replacingOccurrences(of: ",", with: "")
        text = text.trimmedString()
        return text
    }
    
    ///To get digts only
    public var decimaldigitString: String {
        filter { ("0"..."9").contains($0) || (".").contains($0)}
    }
    
    func htmlAttributedString() -> NSAttributedString? {

        guard let data = self.data(using: .utf8) else {
            return nil
        }

        guard let attributedString = try? NSAttributedString(
            data: data,
            options: [.documentType: NSAttributedString.DocumentType.html],
            documentAttributes: nil
            ) else {
            return nil
        }

        return attributedString
    }

    var digits: String {
        return components(separatedBy: CharacterSet.decimalDigits.inverted)
            .joined()
    }
    
//    func getTargetCategoryId() -> String? {
//        let comp = self.components(separatedBy: "-")
//        guard comp.count > 2, !(comp.at(index: 2)?.isEmptyOrWhitespace() ?? true) else { return nil }
//        let subArray = Array(comp.dropFirst(2))
//        return subArray.joined(separator: "-")
//    }
    
    func maskedCharacter( _ afterIndex: Int, _ newChar: Character, isEmail : Bool) -> String? {
        var chars = Array(self)
        var indexOfAmpersand = 0
        if let i = self.firstIndex(of: "@") {
            indexOfAmpersand = i.utf16Offset(in:self)
        }
        if !isEmail && self.count == 10 {
            for i in afterIndex..<(self.count - 3){
                chars[i] = newChar
            }
            return String(chars)
            
        }else if isEmail && indexOfAmpersand >= 6 {
            for i in afterIndex..<(indexOfAmpersand - 2){
                chars[i] = newChar
            }
            return String(chars)
            
        }else if isEmail && (indexOfAmpersand < 6 && indexOfAmpersand > 1){
            for i in 1..<(indexOfAmpersand - 1){
                chars[i] = newChar
            }
            return String(chars)
        }else {
            return self
        }
    }
    
//    func getFontType(fontWeight: String,fontSize: CGFloat) -> UIFont {
//
//        switch self.lowercased() {
//        case "playfair":
//            return UIFont.englishFont(fontSize: fontSize, fontWeight: fontWeight.getFontWeight())
//        case "raleway":
//            return UIFont.ralewayFont(fontSize: fontSize, fontWeight: fontWeight.getFontWeight())
//        case "roboto":
//            switch fontWeight.lowercased() {
//            case "bold":
//                return UIFont.RobotoBold(fontSize)
//            default:
//                return UIFont.RobotoRegular(fontSize)
//            }
//        case "lato":
//            return UIFont.genericFont(fontSize: fontSize, fontWeight: fontWeight.getFontWeight())
//        default:
//            return UIFont.genericFont(fontSize: fontSize, fontWeight: fontWeight.getFontWeight())
//        }
//    }
//
//    func getFontWeight() -> FontWeight {
//
//        switch self.lowercased() {
//        case "regular":
//            return FontWeight.regular
//        case "bold":
//            return FontWeight.bold
//        case "medium":
//            return FontWeight.medium
//        case "thin":
//            return FontWeight.thin
//        case "light":
//            return FontWeight.light
//        case "ultralight":
//            return FontWeight.ultraLight
//        case "black":
//            return FontWeight.black
//        case "italic":
//            return FontWeight.italic
//        case "semibold":
//            return FontWeight.semibold
//        default:
//            return FontWeight.regular
//        }
//    }
    
    func lastIndexOfString(_ string: String) -> Int? {
            guard let index = range(of: string, options: .backwards)?.upperBound else
            { return nil }
            return distance(from: startIndex, to: index)
        }

}
