//
//  ColorUtils.swift
//  Solutio
//
//  Created by Developer on 14/08/2017.
//  Copyright © 2017 Developer. All rights reserved.
//

import UIKit

//MARK: - UIColor
extension UIColor {
    
    struct Solutio {
        // Single color
        static let gray = UIColor(hexString: "#f5f6f9")
        static let dealHeaderBlue = UIColor(red: 70/255.0, green: 151/255.0, blue: 173/255.0, alpha: 1.0)
        static let tabBarTintColor = UIColor(red: 0/255.0, green: 168/255.0, blue: 246/255.0, alpha: 1.0)
        static let buttonGreenBackgroundColor = UIColor(red: 100/255.0, green: 185/255.0, blue: 73/255.0, alpha: 1.0)
        static let fontColorGreen = UIColor(red: 113/255.0, green: 191/255.0, blue: 88/255.0, alpha: 1.0)
        static let lightGrayBackgroundColor = UIColor(red: 245/255.0, green: 246/255.0, blue: 249/255.0, alpha: 1.0)
        static let buttonLightBlueBackgroundColor = UIColor(red: 72/255.0, green: 160/255.0, blue: 220/255.0, alpha: 1.0)
        
        // initials color
        static let initialDefault = UIColor(red: 199/255.0, green: 199/255.0, blue: 204/255.0, alpha: 1.0)
        
        // Gradient
        static let gradientGreenBackgroundColor: [UIColor] =
            [UIColor(red: 123/255.0, green: 195/255.0, blue: 99/255.0, alpha: 1.0),
             UIColor(red: 145/255.0, green: 200/255.0, blue: 75/255.0, alpha: 1.0)]
        static let gradientGreenNavigationColor =
            [UIColor(red: 145/255.0, green: 200/255.0, blue: 75/255.0, alpha: 1.0),
             UIColor(red: 144/255.0, green: 200/255.0, blue: 76/255.0, alpha: 1.0),
             UIColor(red: 123/255.0, green: 195/255.0, blue: 99/255.0, alpha: 1.0)]
        static let gradientGreenBackgroundProfileColor =
            [UIColor(red: 142/255.0, green: 199/255.0, blue: 77/255.0, alpha: 0.95),
             UIColor(red: 76/255.0, green: 162/255.0, blue: 205/255.0, alpha: 0.95)]
        
    }
    
    struct CVCalendarColor {
        static let selectedText = UIColor.white
        static let text = UIColor.black
        static let textDisabled = UIColor.gray
        static let selectionBackground = UIColor(red: 0.2, green: 0.2, blue: 1.0, alpha: 1.0)
        static let sundayText = UIColor(red: 1.0, green: 0.2, blue: 0.2, alpha: 1.0)
        static let sundayTextDisabled = UIColor(red: 1.0, green: 0.6, blue: 0.6, alpha: 1.0)
        static let sundaySelectionBackground = sundayText
    }
    
}

//MARK: - CAGradientLayer
extension CAGradientLayer {
    convenience init(frame: CGRect, colors: [UIColor]) {
        self.init()
        self.frame = frame
        self.colors = []
        for color in colors {
            self.colors?.append(color.cgColor)
        }
        startPoint = CGPoint(x: 0, y: 1)
        endPoint = CGPoint(x: 0, y: 1)
    }
    
    func createGradientImage() -> UIImage? {
        
        var image: UIImage? = nil
        UIGraphicsBeginImageContext(bounds.size)
        if let context = UIGraphicsGetCurrentContext() {
            render(in: context)
            image = UIGraphicsGetImageFromCurrentImageContext()
        }
        UIGraphicsEndImageContext()
        return image
    }
}
