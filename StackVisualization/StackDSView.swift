//
//  StackDSView.swift
//  
//
//  Created by Mohamed El Naggar on 5/11/17.
//
//

import UIKit

class StackDSView: UIView {

    public var textVal: String {
        get {
            return "0"
        }
        set {
            label.text = newValue
        }
    }
    
    var label = UILabel()
    
    private func pathForDrawingCircle(archCenter: CGPoint , radius: CGFloat = 25) -> UIBezierPath {
        let path = UIBezierPath(arcCenter: archCenter, radius: radius, startAngle: 0.0, endAngle: CGFloat(2 * Double.pi), clockwise: true)
        
        UIColor.purple.set()
        path.fill()
        
        return path
    }
    
    func pathForDrawingLine(_ start: CGPoint , _ end: CGPoint) -> UIBezierPath {
        let path = UIBezierPath()
        
        path.move(to: start)
        path.addLine(to: end)
        path.close()
        
        UIColor.purple.set()
        path.fill()
        return path
    }

    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        self.backgroundColor = UIColor.white
        
        var archCenter: CGPoint {
            get {
                return CGPoint(x: bounds.midX, y: bounds.midY)
            }
        }
        
        pathForDrawingCircle(archCenter: archCenter).stroke()

        //->
        
        label.font = UIFont(name: label.font.fontName, size: 17.0 - CGFloat((label.text?.characters.count)!))
        
        label.frame = CGRect(x: archCenter.x - 5 * CGFloat((label.text?.characters.count)!) + (17 - label.font.pointSize) , y: archCenter.y - 20 , width: 40, height: 40)
        
        label.textColor = UIColor.white
        self.addSubview(label)
    }
}
