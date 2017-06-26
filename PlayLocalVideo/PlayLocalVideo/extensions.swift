//
//  extensions.swift
//  PlayLocalVideo
//
//  Created by Mohamed El-Naggar on 6/24/17.
//  Copyright © 2017 Mohamed El-Naggar. All rights reserved.
//

import Foundation
import UIKit



extension UIView {
    
    func roundCorners(corners: UIRectCorner , raduis: CGFloat) {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: raduis, height: raduis))
        
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
    
    func backgroundShadow(_ color: UIColor , _ opacity: Float , _ shadowOffset: CGSize , radius: CGFloat , _ shoudRasterize: Bool) {
        
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOffset = shadowOffset
        self.layer.shadowRadius = radius
        self.layer.shadowOpacity = opacity
        
        self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        self.layer.shouldRasterize = shoudRasterize
        
    }
    
}
