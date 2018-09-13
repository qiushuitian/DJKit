//
//  UIApplication+DJAdd.swift
//  DJUIKit
//
//  Created by qiushuitian on 2018/9/13.
//  Copyright © 2018 qiushuitian. All rights reserved.
//

import Foundation
import UIKit

extension UIApplication {
    
    public func documentsURL() -> URL? {
        return FileManager
            .default
            .urls(for: FileManager.SearchPathDirectory.documentDirectory,
                                        in: FileManager.SearchPathDomainMask.userDomainMask)
            .last
    }
    
    public func documentsPath() -> String? {
        return NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory,
                                                   FileManager.SearchPathDomainMask.userDomainMask, true).first
    }
    
//
//
//    - (NSURL *)documentsURL {
//    return [[[NSFileManager defaultManager]
//    URLsForDirectory:NSDocumentDirectory
//    inDomains:NSUserDomainMask] lastObject];
//    }
//
//    - (NSString *)documentsPath {
//    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
//    }
//
//    func cachesURL() -> URL {
//
//    }
//
//    func cachesPath() -> String {
//
//    }
//
//    func libraryURL() -> URL {
//
//    }
//
//    func libraryPath() -> String {
//
//    }
//
//    func appBundleName() -> String {
//
//    }
//
//    func appBundleID() -> String {
//
//    }
//
//    func appVersion() -> String {
//
//    }
//
//    func appBuildVersion() -> String {
//
//    }
//
//    func isPirated() -> Bool {
//
//    }
//
//    func isBeingDebugged() -> Bool {
//
//    }
//
//    func memoryUsage() -> Int64 {
//
//    }
//
//    func cpuUsage() -> Float {
//
//    }
//
//    func isAppExtension() -> Bool{
//
//    }
//
//    func sharedExtensionApplication() -> UIApplication? {
//
//    }

}
