//
//  Extension+Controller.swift
//  Solutio
//
//  Created by Allan Gonzales on 07/09/2017.
//  Copyright © 2017 Developer. All rights reserved.
//

import UIKit

//MARK: - UINavigationBar
extension UINavigationBar {
    func setGradientBackground(colors: [UIColor]) {
        var updatedFrame = bounds
        updatedFrame.size.height += 20
        let gradientLayer = CAGradientLayer(frame: updatedFrame, colors: colors)
        setBackgroundImage(gradientLayer.createGradientImage(), for: UIBarMetrics.default)
    }
}

//MARK: - UINavigationController
extension UINavigationController {
    
    func setNavigationControllerGradientScheme() {
        self.navigationBar.setGradientBackground(colors: UIColor.Solutio.gradientGreenBackgroundColor)
        self.navigationBar.tintColor = .white
        self.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
    }
    
}
