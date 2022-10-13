//
//  DateExtension.swift
//  Titan
//
//  Created by Kavitha on 09/01/18.
//  Copyright © 2018, Cognizant Technology Solutions.
//  Written under contract by Robosoft Technologies Pvt. Ltd.
//

import UIKit

enum DateFormat: String {
    case format1 = "dd MMM yyyy" /// dd mmm yyyy
    case format2 = "dd MMM" /// dd mmm
    case format3 = "dd-MM-yyyy_HH:mm:ss" /// dd-MM-yyyy+hh:mm:ss
    case format4 = "yyyy-MM-dd" /// yyyy-MM-dd
    case format5 = "yyyy-MM-dd'T'HH:mm:ss.SSSZ" /// dd mmm
    case format6 = "dd MMM, yyyy" /// dd mmm yyyy
    case format7 = "yyyy-MM-dd'T'HH:mm:ss.SSSSSSSSSZ" /// "2017-12-19T18:30:00.000000000Z"
    case format8 = "d MMMM yyyy"
    case format9 = "dd-MM-yyyy"
    case format10 = "dd/MM/yyyy"
    case format11 = "yyyy-MM-dd HH:mm:ss" //"2018-03-22 04:00:00"
    case format12 = "dd MMM yy"
    case format13 = "yyyy-MM-dd'T'HH:mm:ss.SS" //"2018-03-22 04:00:00"
    case format14 = "MM/yy"   //"03/20"
    case format15 = "h:mm a" //"04:00 AM"
    case format16 = "HH:mm" //"04:00"
    case format17 = "yyyy-MM-dd HH:mm:ss.SSS" /// "2017-12-19 18:30:00.000"
    case format18 = "MM/dd/yyyy HH:mm:ss a" /// "8/21/2020 12:00:00 AM"
    case format19 = "yyyy-MM-dd'T'HH:mm:ssZZZZZ" ///"2021-11-30T12:25:08+05:30"
    case format20 = "dd" ///"2021-11-30T12:25:08+05:30"   -----> 30  o/p date only
    case format21 = "MM" ///"2021-11-30T12:25:08+05:30"   -----> 11 o/p month only
    case format22 = "yyyy-MM-dd'T'HH:mm:ssZ" /// "2022-07-07T03:29:36Z"
}

extension Date {
    static func systemDate() -> Date {
        return Date()
    }
    
    /// Returns date string created from timestamp in seconds in input date format
    ///
    /// - Parameters:
    ///   - timestampInSeconds: Double
    ///   - dateFormat: DateFormat
    /// - Returns: String
    static func dateString(fromTimestampInMilliSeconds: Double, output dateFormat: DateFormat) -> String {
        return Date.dateString(from: fromTimestampInMilliSeconds/1000.0, output: dateFormat)
    }
    
    /// Returns date string created from timestamp in seconds in input date format
    ///
    /// - Parameters:
    ///   - timestampInSeconds: Double
    ///   - dateFormat: DateFormat
    /// - Returns: String
    static func dateString(from timestampInSeconds: Double, output dateFormat: DateFormat) -> String {
        if let date = Date.date(from: timestampInSeconds) {
            return date.dateString(with: dateFormat)
        }
        return ""
    }

    /// Returns date string created from the string
    ///
    /// - Parameters:
    ///   - string: input date String
    ///   - inputDateFormat: the DateFormat of input date string
    ///   - outputDateFormat: the DateFormat of output date string
    /// - Returns: String
    static func dateString(from string: String, inputDateFormat: DateFormat, outputDateFormat: DateFormat) -> String {
        if let date = Date.date(from: string, dateFormat: inputDateFormat) {
            return date.dateString(with: outputDateFormat)
        }
        return ""
    }
    
    /// - Parameters:
    ///   - string: input date String
    ///   - inputDateFormat: the DateFormat of input date string
    ///   - outputDateFormat: the DateFormat of output date 
    /// - Returns: Date
    static func stringToDate(format : DateFormat, string : String?) -> Date? {
        if let string = string {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = format.rawValue
            dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
            let date = dateFormatter.date(from: string)
            return date
        }
        return nil
    }
    
    /**
     Returns date from given time interval
     
     - parameter timestamp: Double; timestamp in seconds
     */
    static func date(from timestampInSeconds: Double) -> Date? {
        var date: Date?
        if timestampInSeconds > 0 {
            date = Date(timeIntervalSince1970: timestampInSeconds)
        }
        return date
    }
    /**
     Returns date for the input date string and input date format
     
     - parameter dateString: String
     - parameter dateFormat: DateFormat
     
     - returns: String
     */
    static func date(from dateString: String, dateFormat: DateFormat) -> Date? {
        let dateFormatter: DateFormatter = Date.dateFormatter(for: dateFormat)
        var date: Date?
        date = dateFormatter.date(from: dateString) as Date?
        return date ?? nil
    }
    
    /**
     Returns string in the input format for the NSDate
     
     - parameter dateFormat: NMDateFormat
     
     - returns: String
     */
    func dateString(with dateFormat: DateFormat) -> String {
        let dateFormatter: DateFormatter = Date.dateFormatter(for: dateFormat)
        return dateFormatter.string(from: self as Date)
    }

    func age() -> Int? {
        let ageComponents = Calendar.current.dateComponents([.year], from: self, to: Date.systemDate())
        let age = ageComponents.year
        Logger.log(logLevel: .verbose, "\(age ?? 0)")
        return age
    }
    
    static func dayOfToday() -> Int? {
        let components = Calendar.current.dateComponents([.weekday], from: Date.systemDate())
        let day = components.weekday
        return day
    }
    /**
     Returns date formatter for the input date format string
     
     - parameter dateFormat: DateFormat
     
     - returns: DateFormatter
     */
    fileprivate static func dateFormatter(for dateFormat: DateFormat) -> DateFormatter {
        let dateFormatter = DateFormatter()
        var dateFormatString: String = DateFormat.format1.rawValue
        
        switch dateFormat {
        case .format1:
            dateFormatString = DateFormat.format1.rawValue
        case .format2:
            dateFormatString = DateFormat.format2.rawValue
        case .format3:
            dateFormatString = DateFormat.format3.rawValue
        case .format4:
            dateFormatString = DateFormat.format4.rawValue
        case .format5:
            dateFormatString = DateFormat.format5.rawValue
        case .format6:
            dateFormatString = DateFormat.format6.rawValue
        case .format7:
            dateFormatString = DateFormat.format7.rawValue
        case .format8:
            dateFormatString = DateFormat.format8.rawValue
        case .format9:
            dateFormatString = DateFormat.format9.rawValue
        case .format10:
            dateFormatString = DateFormat.format10.rawValue
        case .format11:
            dateFormatString = DateFormat.format11.rawValue
        case .format12:
            dateFormatString = DateFormat.format12.rawValue
        case .format13:
            dateFormatString = DateFormat.format13.rawValue
        case .format14:
            dateFormatString = DateFormat.format14.rawValue
        case .format15:
            dateFormatString = DateFormat.format15.rawValue
        case .format16:
            dateFormatString = DateFormat.format16.rawValue
        case .format17:
            dateFormatString = DateFormat.format17.rawValue
        case .format18:
            dateFormatString = DateFormat.format18.rawValue
        case .format19:
            dateFormatString = DateFormat.format19.rawValue
        case .format20:
            dateFormatString = DateFormat.format20.rawValue
        case .format21:
            dateFormatString = DateFormat.format21.rawValue
        case .format22:
            dateFormatString = DateFormat.format22.rawValue
        }
        dateFormatter.dateFormat = dateFormatString
        return dateFormatter
    }
    
   static func dateOfBirthMaxDate() -> Date? {
        guard let date = Calendar.current.date(byAdding: .year, value: -18, to: Date()) else {
            return nil
        }
      return date
    }
    static func dateOfBirthMinDate() -> Date? {
        guard let date = Calendar.current.date(byAdding: .year, value: -150, to: Date()) else {
            return nil
        }
        return date
    }
    static func anniversaryMinDate() -> Date? {
        guard let date = Calendar.current.date(byAdding: .year, value: -150, to: Date()) else {
            return nil
        }
        return date
    }
    
    public var timeAgo: String {
        let components = self.dateComponents()
        
        if let year = components.year, year > 0 {
            if year < 2 {
                return "Last year"
            } else {
                return "\(year)" + " " + "years ago"
            }
        }
        
        if let month = components.month, month > 0 {
            if month < 2 {
                return "Last month"
            } else {
                return "\(month)" + " " + "months ago"
            }
        }
        
        // TODO: localize for other calanders
        if let day = components.day {
            if day >= 7 {
                let week = day / 7
                if week < 2 {
                    return "Last week"
                } else {
                    return "\(week)" + " " + "weeks ago"
                }
            } else if day > 0 {
                if day < 2 {
                    return "Yesterday"
                } else {
                    return "\(day)" + " " + "days ago"
                }
            }
        }
        
        if let hour = components.hour, hour > 0 {
            if hour < 2 {
                return "An hour ago"
            } else {
                return "\(hour)" + " " + "hours ago"
            }
        }
        
        if let minute = components.minute, minute > 0 {
            if minute < 2 {
                return "A minute ago"
            } else {
                return "\(minute)" + " " + "minutes ago"
            }
        }
        
        if let second = components.second, second > 0 {
            if second < 5 {
                return "Just now"
            } else {
                return "\(second)" + " " + "seconds ago"
            }
        }
        
        return ""
    }
    
    func dateComponents() -> DateComponents {
        return Calendar.current.dateComponents([.second, .minute, .hour, .day, .month, .year], from: self, to: Date())
    }
    
    func formattedTime() -> String {
        return self.timeAgo
    }
    
    static func serviceMinDate() -> Date? {
        guard let date = Calendar.current.date(byAdding: .day, value: 1, to: Date()) else {
            return nil
        }
        return date
    }
    
    static func serviceMaxDate() -> Date? {
        guard let date = Calendar.current.date(byAdding: .month, value: 1, to: Date()) else {
            return nil
        }
        return date
    }
    
    var hour: Int { return Calendar.current.component(.hour, from: self) }
    var minute: Int { return Calendar.current.component(.minute, from: self) }
//    var nextHourQuarter: Date {
//        return  Calendar.current.date(bySettingHour: hour, minute: minute.nextHourQuarter, second: 0, of: self)!
//    }

//    static func getTimeInSeconds(date: Date?) -> String {
//        let seconds = date?.dateComponents().second ?? 0
//        let minutes = (date?.dateComponents().minute ?? 0) * 60
//        let totalSecs = minutes + seconds
//        return totalSecs.stringValue
//    }
    
    func offsetFrom(date: Date) -> (Int, Int) {
        
        let dayHourMinuteSecond: Set<Calendar.Component> = [.day, .hour, .minute, .second]
        let difference = NSCalendar.current.dateComponents(dayHourMinuteSecond, from: date, to: self)
        
        let seconds = difference.second ?? 0
        let minutes = difference.minute ?? 0
        
        if let minute = difference.minute, minute > 0 { return (minutes, seconds) }
        if let second = difference.second, second > 0 { return (minutes, seconds) }
        return (0, 0)
    }
    

    func dayOffsetFrom(date: Date) -> Int {
        
        let dayHourMinuteSecond: Set<Calendar.Component> = [.day, .hour, .minute, .second]
        let difference = NSCalendar.current.dateComponents(dayHourMinuteSecond, from: date, to: self)
        
        let days = difference.day ?? 0
        
        if let day = difference.day, day > 0 { return days }
        return 0
}

    func getTimer(date: Date) -> (Int,Int,Int,Int) {
        let dayHourMinuteSecond: Set<Calendar.Component> = [.day, .hour, .minute, .second]
        let difference = NSCalendar.current.dateComponents(dayHourMinuteSecond, from: date, to: self)
        
        let seconds = difference.second ?? 0
        let minutes = difference.minute ?? 0
        let hours = difference.hour ?? 0
        let days = difference.day ?? 0
        
        if let minute = difference.minute, minute > 0 { return (days,hours,minutes, seconds) }
        if let second = difference.second, second > 0 { return (days,hours,minutes, seconds) }
        return (0, 0,0,0)
    }
}
