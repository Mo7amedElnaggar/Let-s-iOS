//
//  Helper.swift
//  SimpleLoginFrame
//
//  Created by Mohamed El-Naggar on 8/10/17.
//  Copyright © 2017 Mohamed El-Naggar. All rights reserved.
//

import Foundation
import UIKit


class Helper {
    
    class func roundCorners(view: UIView , cornerRadous: CGFloat , borderWidth: CGFloat = 0.0 , borderColor: UIColor = .white) {
        
        view.layer.cornerRadius = cornerRadous
        view.layer.borderWidth = borderWidth
        view.layer.borderColor = borderColor.cgColor
        view.layer.masksToBounds = true
        
    }
    
    class func roundCorners(view: UIView , corners: UIRectCorner, cornerRadius: CGFloat) {
        
        let path = UIBezierPath(roundedRect: view.bounds , byRoundingCorners: corners, cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))
        
        let mask = CAShapeLayer()
        
        mask.path = path.cgPath
        
        view.layer.mask = mask
    }

}
