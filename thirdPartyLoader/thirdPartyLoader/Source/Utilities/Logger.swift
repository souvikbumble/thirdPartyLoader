//
//  Logger.swift
//  Titan
//
//  Created by Raghavendra Kamat on 28/08/18.
//  Copyright © 2020, TITAN LTD.
//  Modified under contract by Robosoft Technologies Pvt. Ltd.
//

import Foundation
let mainLogFile = "MainLogFile.txt"
let extensionLogFile = "ExtLogFile%d.txt"
let logfolder = "NotifiactionTestLogs"
let securityGroupID = "group.titan.tanishqapp"
let shouldEnableLog: Bool = false

enum LogLevel: Int {
    
    case verbose = 1
    case debug = 2
    case info = 3
    case warning = 4
    case error = 5
    case none = 6
    
    var emoji: String {
        switch self {
        case .verbose: return "😱"
        case .debug:   return "😱"
        case .info:    return "😱"
        case .warning: return "😱"
        case .error:   return "😱"
        case .none:    return "😱"
        }
    }
}

extension LogLevel: Comparable {
    static func <(lhs: LogLevel, rhs: LogLevel) -> Bool {
        return lhs.rawValue < rhs.rawValue
    }
}

struct Logger {
    #if DEBUG
    static let minimumLogLevel: LogLevel = .debug
    #else
    static let minimumLogLevel: LogLevel = .none
    #endif
    static func log(
        logLevel: LogLevel,
        _ message: @autoclosure () -> String,
        file: String = #file,
        line: Int = #line,
        function: StaticString = #function) {
        if logLevel >= minimumLogLevel {
            let fileName = (file as NSString).lastPathComponent
            print("\(logLevel.emoji) – \(fileName):\(line) – \(function) – \(message())")
        }
    }
}
var dateFormatter: DateFormatter = {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat  = "dd/MM/yyyy-hh:mm:ss.SSS"
    return dateFormatter
}()
extension Thread {
    var threadName: String {
        if let currentOperationQueue = OperationQueue.current?.name {
            return "OperationQueue: \(currentOperationQueue)"
        } else if let underlyingDispatchQueue = OperationQueue.current?.underlyingQueue?.label {
            return "DispatchQueue: \(underlyingDispatchQueue)"
        } else {
            let name = __dispatch_queue_get_label(nil)
            return String(cString: name, encoding: .utf8) ?? Thread.current.description
        }
    }
}

extension String {
    func appendLineToURL(fileURL: URL) throws {
        try (self + "\n").appendToURL(fileURL: fileURL)
    }

    func appendToURL(fileURL: URL) throws {
        let data = self.data(using: String.Encoding.utf8)!
        try data.append(fileURL: fileURL)
    }
}

extension Data {
    func append(fileURL: URL) throws {
        if let fileHandle = FileHandle(forWritingAtPath: fileURL.path) {
            defer {
                fileHandle.closeFile()
            }
            fileHandle.seekToEndOfFile()
            fileHandle.write(self)
        }
        else {
            try write(to: fileURL, options: .atomic)
        }
    }
}
//send isMainApp as false while loggin in extension
func verboseLog(_ messgae: @autoclosure () -> Any, file: String = #file, function: String = #function, line: Int = #line, date: Date = Date(), isMainApp:Bool = true) {
    guard shouldEnableLog else {
        return
    }
    let value =      """
    |*******************
    Time: \(dateFormatter.string(from: date)),
    Process:\(ProcessInfo.processInfo.processName)(\(ProcessInfo.processInfo.processIdentifier)),
    Thread: \(Thread.current) - \(Thread.current.threadName),
    Message: \(messgae())
    Called by \(file.components(separatedBy: "/").last ?? "") - \(function) at line \(line)
    *******************|
    """
    writetoFile(value, isMainApp: isMainApp)
}

private func writetoFile(_ value: String, isMainApp: Bool) {
    createFolderIfNot()
    isMainApp ? writetoMainFile(value) : writetoExtensionFile(value)
}

private func writetoMainFile(_ value: String) {
    if let url = FileManager.default.containerURL(forSecurityApplicationGroupIdentifier: securityGroupID)?
        .appendingPathComponent(logfolder).appendingPathComponent(mainLogFile) {
        do {
            try value.appendLineToURL(fileURL: url)
            //uncomment this to print the content
            //let result = try String(contentsOf: url as URL, encoding: String.Encoding.utf8)
            debugPrint("Logged: \(value)")
            debugPrint(url.absoluteString)
        }
        catch {
            debugPrint("Could not write to file")
        }
    }
}
private func writetoExtensionFile(_ value: String) {
    if let url = FileManager.default.containerURL(forSecurityApplicationGroupIdentifier: securityGroupID)?
        .appendingPathComponent(logfolder).appendingPathComponent(String(format: extensionLogFile, ProcessInfo.processInfo.processIdentifier)) {
        do {
            try value.appendLineToURL(fileURL: url)
            //uncomment this to print the content
            //let result = try String(contentsOf: url as URL, encoding: String.Encoding.utf8)
            debugPrint("Logged: \(value)")
            debugPrint(url.absoluteString)
        }
        catch {
            debugPrint("Could not write to file")
        }
    }
}
private func createFolderIfNot() {
    if var logpath = FileManager.default.containerURL(forSecurityApplicationGroupIdentifier: securityGroupID)?
        .appendingPathComponent(logfolder).absoluteString {
        var isDir : ObjCBool = true
        logpath = logpath.replacingOccurrences(of: "file:///", with: "/")
        if !FileManager.default.fileExists(atPath: logpath, isDirectory: &isDir) {
            do {
                try FileManager.default.createDirectory(atPath: logpath, withIntermediateDirectories: true, attributes: nil)
            } catch {
                debugPrint("create folder failed")
            }
        }
    }
}
//clear log button action
func clearAllLogFiles() {
    if var logpath = FileManager.default.containerURL(forSecurityApplicationGroupIdentifier: securityGroupID)?
        .appendingPathComponent(logfolder).absoluteString {
        var isDir : ObjCBool = true
        logpath = logpath.replacingOccurrences(of: "file:///", with: "/")

        if FileManager.default.fileExists(atPath: logpath, isDirectory: &isDir) {
            do {
                try FileManager.default.removeItem(atPath: logpath)
                debugPrint("clear successfull")
            } catch {
                debugPrint("delete folder failed")
            }
        }
    }
}

func getfileContents(handler:((Bool, String?) -> Void)) {
    if var logpath = FileManager.default.containerURL(forSecurityApplicationGroupIdentifier: securityGroupID)?
        .appendingPathComponent(logfolder).absoluteString {
        do {
            logpath = logpath.replacingOccurrences(of: "file:///", with: "/")
            let folders = try FileManager.default.contentsOfDirectory(atPath: logpath + "/")
            var string = ""
            for item in folders {
                string += try String(contentsOfFile: logpath + "/\(item)", encoding: .utf8)
            }
            handler(true, string)
        }catch{handler(false, nil)}
    }
}

//MARK: different section
//pass the string it will write to file and share the file path
func writetoTempPath(_ string: String) -> String? {
    let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
    let docDirectoryPath = paths[0]
    let logPath = docDirectoryPath.appendingPathComponent("NotificationLogFile.txt")
    do {
        try  string.write(to: logPath, atomically: true, encoding: .utf8)
        return logPath.absoluteString
    } catch {
        debugPrint("write file failed")
    }
    return nil
}
//after successfull share pass the file url to delete temp file
func clearTempFile(_ string: String) {
    let logpath = string.replacingOccurrences(of: "file:///", with: "/")

    if FileManager.default.fileExists(atPath: logpath) {
        do {
            try FileManager.default.removeItem(atPath: logpath)
        } catch {
            debugPrint("delete temp file failed")
        }
    }
}
