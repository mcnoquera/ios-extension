//
//  Default.swift
//  Solutio
//
//  Created by Allan Gonzales on 8/27/17.
//  Copyright © 2017 Developer. All rights reserved.
//

import UIKit

class Default: NSObject {
    
    static let defaults = UserDefaults.standard
    
    //MARK: - Save object
    /*
     * Save object with specific key in user defaults
     */
    static func saveObject(_ id: Any, key:String) {
        
        defaults.set(NSKeyedArchiver.archivedData(withRootObject: id), forKey: key)
        defaults.synchronize()
    }
    
    //MARK: - Save object
    /*
     * Save object with specific key in user defaults
     */
    static func saveString(_ id: String, key:String) {
        defaults.set(id, forKey: key)
        defaults.synchronize()
        
    }
    
    static func removeString(_ key: String) {
        defaults.removeObject(forKey: key)
        defaults.synchronize()
    }
    
    static func removeObject(_ key: String) {
        defaults.removeObject(forKey: key)
        defaults.synchronize()
    }

    static func saveObject(_ key: String, object: Any?) {
        defaults.set(object, forKey: key)
        defaults.synchronize()
    }
    
    //MARK: - Get Class
    /*
     * Returns class for specific key in user defaults
     */
    static func getClass(_ key: String) -> Any? {
        if let user = defaults.object(forKey: key) {
            let unarchive = NSKeyedUnarchiver.unarchiveObject(with: user as! Data)
            return unarchive as AnyObject
        } else {
            return nil
        }
    }
    
    //MARK: - Get Object
    /*
     * Returns class for specific key in user defaults
     */
    static func getObject(_ key: String) -> Any? {
        if let user = defaults.object(forKey: key) {
            return user
        } else {
            return nil
        }
    }
    
    //MARK: - Get String
    /*
     * Returns string for specific key in user defaults
     */
    static func getString(key: String) -> String? {
        if let string = defaults.string(forKey: key) {
            return string
        }
        return nil
    }
    
    static func clear() {
        let appDomain = Bundle.main.bundleIdentifier!
        UserDefaults.standard.removePersistentDomain(forName: appDomain)
    }
}
