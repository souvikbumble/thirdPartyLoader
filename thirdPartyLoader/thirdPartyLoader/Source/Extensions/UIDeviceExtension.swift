//
//  UIDeviceExtension.swift
//  Titan
//
//  Created by Kavitha on 09/01/18.
//  Copyright © 2018, Cognizant Technology Solutions.
//  Written under contract by Robosoft Technologies Pvt. Ltd.
//

import UIKit

enum ScreenType: String {
    case iPhone4
    case iPhone5
    case iPhone6
    case iPhone6Plus
    case iPhoneX
    case unknown
}
/// UIDevice extension
extension UIDevice {
    var screenType: ScreenType {
        guard UIDevice.isiPhone() else { return .unknown }
        switch UIScreen.main.nativeBounds.height {
        case 960:
            return .iPhone4
        case 1136:
            return .iPhone5
        case 1334:
            return .iPhone6
        case 1920:
            fallthrough
        case 2208:
            return .iPhone6Plus
        case 2436:
            return .iPhoneX
        default:
            return .unknown
        }
    }
   
    class func isIphoneX() -> Bool {
        return (UIDevice.current.screenType == .iPhoneX)
    }
    /**
     Returns true if device is iPhone 5 model; false otherwise
     
     - returns: Bool
     */
    class func isIphone5() -> Bool {
        return (UIDevice.current.screenType == .iPhone5)
    }
    /**
     Returns true if device is iPhone 6 model; false otherwise
     
     - returns: Bool
     */
    class func isIphone6() -> Bool {
        return (UIDevice.current.screenType == .iPhone6)
    }
    /**
     Returns true if device is iPhone 4 model; false otherwise
     
     - returns: Bool
     */
    class func isIphone4() -> Bool {
        return (UIDevice.current.screenType == .iPhone4)
    }
    
    /**
     Returns true if device is iPhone 6 Plus model; false otherwise
     
     - returns: Bool
     */
    class func isIphone6Plus() -> Bool {
        return (UIDevice.current.screenType == .iPhone6Plus)
    }
    /// Returns true if iPad
    class func isiPad() -> Bool {
        return (UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad)
    }
    /// Returns true if iPad Retina
//    class func isiPadRetina() -> Bool {
//        return (UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad) && UIScreen.is2x()
//    }
    /// Returns true if iPhone
    class func isiPhone() -> Bool {
        return (UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone)
    }
    /// returns true if device orientation is portrait
    class func isPortrait() -> Bool {
        return UIDevice.current.orientation.isPortrait
    }
    /// returns true if device orientation is landscape
    class func isLandscape() -> Bool {
        return UIDevice.current.orientation.isLandscape
    }
    /// returns true if statusBar orientation is portrait
    class func isStatusBarPortrait() -> Bool {
        return UIApplication.shared.statusBarOrientation.isPortrait
    }
    /// returns true if statusBar orientation is landscape
    class func isStatusBarLandscape() -> Bool {
        return UIApplication.shared.statusBarOrientation.isLandscape
    }
    
    class func launchImage() -> UIImage? {
        
        return UIImage.init(named: "LaunchImg")
    }

    var hasNotch: Bool {
        if #available(iOS 11.0, *) {
            let bottom = UIApplication.shared.keyWindow?.safeAreaInsets.bottom ?? 0
            return bottom > 0
        } else {
            return false
        }

    }
    
    class var modelName: String {
        var systemInfo = utsname()
        uname(&systemInfo)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8, value != 0 else { return identifier }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }

        switch identifier {
        case "iPod1,1":                                 return "iPod Touch 1"
        case "iPod2,1":                                 return "iPod Touch 2"
        case "iPod3,1":                                 return "iPod Touch 3"
        case "iPod4,1":                                 return "iPod Touch 4"
        case "iPod5,1":                                 return "iPod Touch 5"
        case "iPod7,1":                                 return "iPod Touch 6"
        case "iPod9,1":                                 return "iPod Touch 7"

        case "iPhone3,1":                               return "iPhone 4(GSM)"
        case "iPhone3,2":                               return "iPhone 4(GSM / 2012)"
        case "iPhone3,3":                               return "iPhone 4(CDMA)"
        case "iPhone4,1":                               return "iPhone 4s"
        case "iPhone5,1":                               return "iPhone 5(GSM)"
        case "iPhone5,2":                               return "iPhone 5(GSM+CDMA)"
        case "iPhone5,3":                               return "iPhone 5c(GSM)"
        case "iPhone5,4":                               return "iPhone 5c(GSM+CDMA)"
        case "iPhone6,1":                               return "iPhone 5s(GSM)"
        case "iPhone6,2":                               return "iPhone 5s(GSM+CDMA)"
        case "iPhone7,1":                               return "iPhone 6 Plus(GSM+CDMA"
        case "iPhone7,2":                               return "iPhone 6(GSM+CDMA)"
        case "iPhone8,1":                               return "iPhone 6s(GSM+CDMA)"
        case "iPhone8,2":                               return "iPhone 6s Plus(GSM+CDMA)"
        case "iPhone8,4":                               return "iPhone SE"
        case "iPhone9,1":                               return "iPhone 7(Global)"
        case "iPhone9,2":                               return "iPhone 7 Plus(Global)"
        case "iPhone9,3":                               return "iPhone 7(GSM)"
        case "iPhone9,4":                               return "iPhone 7 Plus(GSM)"
        case "iPhone10,1":                              return "iPhone 8"
        case "iPhone10,2":                              return "iPhone 8 Plus"
        case "iPhone10,4":                              return "iPhone 8"
        case "iPhone10,5":                              return "iPhone 8 Plus"
        case "iPhone10,3":                              return "iPhone X"
        case "iPhone10,6":                              return "iPhone X"
        case "iPhone11,2":                              return "iPhone XS"
        case "iPhone11,4":                              return "iPhone XS Max"
        case "iPhone11,6":                              return "iPhone XS Max"
        case "iPhone11,8":                              return "iPhone XR"
        case "iPhone12,1":                              return "iPhone 11"
        case "iPhone12,3":                              return "iPhone 11 Pro"
        case "iPhone12,5":                              return "iPhone 11 Pro Max"
        case "iPhone12,8":                              return "iPhone SE 2"
        case "iPhone13,1":                              return "iPhone 12 Mini"
        case "iPhone13,2":                              return "iPhone 12"
        case "iPhone13,3":                              return "iPhone 12 Pro"
        case "iPhone13,4":                              return "iPhone 12 Pro Max"

        case "iPad1,1":                                 return "iPad"
        case "iPad2,1":                                 return "iPad 2(WiFi)"
        case "iPad2,2":                                 return "iPad 2(GSM)"
        case "iPad2,3":                                 return "iPad 2(CDMA)"
        case "iPad2,4":                                 return "iPad 2(WiFi Rev A)"
        case "iPad2,5":                                 return "iPad Mini 1G(WiFi)"
        case "iPad2,6":                                 return "iPad Mini 1G(GSM)"
        case "iPad2,7":                                 return "iPad Mini 1G(GSM+CDMA)"
        case "iPad3,1":                                 return "iPad 3(WiFi)"
        case "iPad3,2":                                 return "iPad 3(GSM+CDMA)"
        case "iPad3,3":                                 return "iPad 3(GSM)"
        case "iPad3,4":                                 return "iPad 4(WiFi)"
        case "iPad3,5":                                 return "iPad 4(GSM)"
        case "iPad3,6":                                 return "iPad 4(GSM+CDMA)"
        case "iPad4,1":                                 return "iPad Air(WiFi)"
        case "iPad4,2":                                 return "iPad Air(GSM)"
        case "iPad4,3":                                 return "iPad Air(GSM+CDMA)"
        case "iPad5,3":                                 return "iPad Air 2(WiFi)"
        case "iPad5,4":                                 return "iPad Air 2(GSM+CDMA)"
        case "iPad4,4":                                 return "iPad Mini 2G(WiFi)"
        case "iPad4,5":                                 return "iPad Mini 2G(GSM)"
        case "iPad4,6":                                 return "iPad Mini 2G(GSM+CDMA)"
        case "iPad4,7":                                 return "iPad Mini 3G(WiFi)"
        case "iPad4,8":                                 return "iPad Mini 3G(GSM)"
        case "iPad4,9":                                 return "iPad Mini 3G(GSM+CDMA)"
        case "iPad5,1":                                 return "iPad Mini 4"
        case "iPad5,2":                                 return "iPad Mini 4"
        case "iPad6,3":                                 return "iPad Pro 9.7-inch"
        case "iPad6,4":                                 return "iPad Pro 9.7-inch"
        case "iPad6,7":                                 return "iPad Pro 12.9-inch"
        case "iPad6,8":                                 return "iPad Pro 12.9-inch"
        case "iPad6,11":                                return "iPad 2017"
        case "iPad6,12":                                return "iPad 2017"
        case "iPad7,1":                                return "iPad Pro 12.9-inch 2017"
        case "iPad7,2":                                return "iPad Pro 12.9-inch 2017"
        case "iPad7,3":                                return "iPad Pro 10.5-inch 2017"
        case "iPad7,4":                                return "iPad Pro 10.5-inch 2017"
        case "iPad7,5":                                return "iPad 6th Gen"
        case "iPad7,6":                                return "iPad 6th Gen"
        case "iPad7,11":                                return "iPad 7th Gen"
        case "iPad7,12":                                return "iPad 7th Gen"
        case "iPad8,1":                                return "iPad Pro 11 inch 3rd Gen"
        case "iPad8,2":                                return "iPad Pro 11 inch 3rd Gen"
        case "iPad8,3":                                return "iPad Pro 11 inch 3rd Gen"
        case "iPad8,4":                                return "iPad Pro 11 inch 3rd Gen"
        case "iPad8,5":                                return "iPad Pro 12.9 inch 3rd Gen"
        case "iPad8,6":                                return "iPad Pro 12.9 inch 3rd Gen"
        case "iPad8,7":                                return "iPad Pro 12.9 inch 3rd Gen"
        case "iPad8,8":                                return "iPad Pro 12.9 inch 3rd Gen"
        case "iPad8,9":                                return "iPad Pro 11 inch 4th Gen"
        case "iPad8,10":                                return "iPad Pro 11 inch 4th Gen"
        case "iPad8,11":                                return "iPad Pro 12.9 inch 4th Gen"
        case "iPad8,12":                                return "iPad Pro 12.9 inch 4th Gen"
        case "iPad11,1":                                return "iPad Mini 5"
        case "iPad11,2":                                return "iPad Mini 5"
        case "iPad11,3":                                return "iPad Air 3"
        case "iPad11,4":                                return "iPad Air 3"
        case "iPad11,6":                                return "iPad 8th Gen"
        case "iPad11,7":                                return "iPad 8th Gen"
        case "iPad13,1":                                return "iPad Air 4"
        case "iPad13,2":                                return "iPad Air 4"

        case "i386", "x86_64":                          return "Simulator"
        default:                                        return identifier
        }
    }
    
    class var statusBarHeight: CGFloat {
        let statusBarSize = UIApplication.shared.statusBarFrame.size
        return Swift.min(statusBarSize.width, statusBarSize.height)
    }
    
    class var osName: String {
        let operatingSysName: String = {
            #if os(iOS)
                return "iOS"
            #elseif os(watchOS)
                return "watchOS"
            #elseif os(tvOS)
                return "tvOS"
            #elseif os(macOS)
                return "OS X"
            #elseif os(Linux)
                return "Linux"
            #else
                return "Unknown"
            #endif
        }()
        return operatingSysName
    }
    class var osVersion: String {
        let operatingSysVersion: String = {
            let version = ProcessInfo.processInfo.operatingSystemVersion
            let versionString = "\(version.majorVersion).\(version.minorVersion).\(version.patchVersion)"
            return versionString
        }()
        return operatingSysVersion
    }
    
    class func systemVersionGreaterThenEquatTo(version: String) -> Bool {
        return UIDevice.current.systemVersion.compare(version, options: .numeric) != .orderedAscending
    }
    
    class func systemVersionLessThen(version: String) -> Bool {
        return UIDevice.current.systemVersion.compare(version, options: .numeric) == .orderedAscending
    }
}
