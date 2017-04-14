//
//  FaceView.swift
//  CodeDoor
//
//  Created by Mohamed El Naggar on 4/14/17.
//  Copyright © 2017 Mohamed El Naggar. All rights reserved.
//

import UIKit

class FaceView: UIView {
    
    var scale: CGFloat = 0.90
    let mouthCurvature: Double = 0.0
    
    private var skullRadius: CGFloat {
        return min(bounds.size.height , bounds.size.width) / 2 * scale
    }
    
    private var skullCenter: CGPoint {
        return CGPoint(x: bounds.midX, y: bounds.midY)
    }
    
    private struct Ratios {
        static let SkullRatioToEyeOffset: CGFloat = 3
        static let SkullRatioToEyeRadius: CGFloat = 10
        static let SkullRatioToMouthWidth: CGFloat = 1
        static let SkullRatioToMouthHeight: CGFloat = 3
        static let SkullRatioToMouthOffset: CGFloat = 3
    }
    
    private enum Eye {
        case Left
        case Right
    }
    
    private func getEyeCenter(eye: Eye) -> CGPoint {
        let eyeOffset = skullRadius / Ratios.SkullRatioToEyeOffset
        var eyeCenter = skullCenter
        eyeCenter.y -= eyeOffset
        
        switch eye {
            case .Left : eyeCenter.x -= eyeOffset
            case .Right : eyeCenter.x += eyeOffset
        }
        
        return eyeCenter
    }
    
    private func pathForEye(eye: Eye) -> UIBezierPath {
        let eyeRadius = skullRadius / Ratios.SkullRatioToEyeRadius
        let eyeCenter = getEyeCenter(eye: eye)
        
        return pathForCircleCenteredAtPoint(midPoint: eyeCenter, withRadius: eyeRadius)
    }
    
    
    private func pathForCircleCenteredAtPoint(midPoint: CGPoint , withRadius radius: CGFloat) -> UIBezierPath
    {
        let path = UIBezierPath(arcCenter: midPoint, radius: radius, startAngle: 0.0, endAngle: CGFloat(2 * Double.pi), clockwise: false)
        
        path.lineWidth = 5.0
        return path
    }
    
    private func pathForMouth() -> UIBezierPath {
        let mouthWidth = skullRadius / Ratios.SkullRatioToMouthWidth
        let mouthHeight = skullRadius / Ratios.SkullRatioToMouthHeight
        let mouthOffset = skullRadius / Ratios.SkullRatioToMouthOffset
        
        let mouthRect = CGRect(x: skullCenter.x - mouthWidth / 2 , y: skullCenter.y + mouthOffset, width: mouthWidth, height: mouthHeight)
        
        let simleOffset = CGFloat(max(-1 , min(mouthCurvature , 1))) * mouthRect.height
        let start = CGPoint(x: mouthRect.minX , y: mouthRect.minY)
        let end = CGPoint(x: mouthRect.maxX, y: mouthRect.minY)
        let cp1 = CGPoint(x: mouthRect.minX + mouthRect.width / 3, y: mouthRect.minY + simleOffset)
        let cp2 = CGPoint(x: mouthRect.maxX - mouthRect.width / 3, y: mouthRect.minY + simleOffset)
        
        let path = UIBezierPath()
        path.move(to: start)
        path.addCurve(to: end, controlPoint1: cp1, controlPoint2: cp2)
        path.lineWidth = 5.0
        return path
    }

    override func draw(_ rect: CGRect) {
        UIColor.purple.set()
        pathForCircleCenteredAtPoint(midPoint: skullCenter, withRadius: skullRadius).stroke()
        pathForEye(eye: .Left).stroke()
        pathForEye(eye: .Right).stroke()
        pathForMouth().stroke()
    }

}
