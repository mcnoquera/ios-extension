//
//  Extension+Data.swift
//  Solutio
//
//  Created by Mark Angelo Noquera on 18/09/2017.
//  Copyright © 2017 Developer. All rights reserved.
//

import UIKit


//MARK: - Data
extension Data {
    
    func toJSON() -> Any? {
        do {
            return try JSONSerialization.jsonObject(with: self, options: .allowFragments)
        } catch {
            return nil
        }
    }
    
    func toDictionary() -> [String: Any]? {
        do {
            return try JSONSerialization.jsonObject(with: self, options: []) as? [String: Any]
        } catch {
            print(error.localizedDescription)
        }
        return nil
    }
    
}
