//
//  Extension+Date.swift
//  Solutio
//
//  Created by Allan Gonzales on 07/09/2017.
//  Copyright © 2017 Developer. All rights reserved.
//

import UIKit

//MARK: - Date
extension Date {
    var iso8601: String {
        return Formatter.iso8601.string(from: self)
    }
    
    var formattedDate: String? {
        let formatter = Formatter.def
        formatter.dateFormat = "dd MMMM YYYY"
        return formatter.string(from: self)
    }
    
    var addOneDate: Date {
        return Calendar.current.date(byAdding: .day, value: 1, to: self)!
    }
}

extension Calendar {
    static let iso8601 = Calendar(identifier: .iso8601)
    
    
    
}


//MARK: - Formatter
extension Formatter {
    static let iso8601: DateFormatter = {
        let formatter = DateFormatter()
        formatter.calendar = Calendar(identifier: .iso8601)
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSXXXXX"
        return formatter
    }()
    
    static let def: DateFormatter = {
        let formatter = DateFormatter()
        formatter.calendar = Calendar.current
        formatter.locale = Calendar.current.locale
        formatter.timeZone = Calendar.current.timeZone
        return formatter
    }()
}
