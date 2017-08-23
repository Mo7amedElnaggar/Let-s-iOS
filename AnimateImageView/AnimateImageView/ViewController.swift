//
//  ViewController.swift
//  AnimateImageView
//
//  Created by Mohamed El-Naggar on 8/17/17.
//  Copyright © 2017 Mohamed El-Naggar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        roateImageView()
        
    }

    
    func roateImageView() {
        UIView.animate(withDuration: 1 , delay: 0, options: .curveEaseInOut, animations: {
            
            self.imageView.transform = self.imageView.transform.rotated(by: CGFloat(3.14159))
            self.imageView.transform = self.imageView.transform.rotated(by: CGFloat(3.14159))


        }) { (success: Bool) in
            if success {
                print("DONE")
            } else {
                print("NOT DONE")
            }
        }
        
        let width = imageView.frame.width
        let height = imageView.frame.height
        imageView.frame = CGRect(x: self.view.bounds.midX , y: self.view.bounds.midY, width: 0, height: 0)
        
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseInOut, animations: {
            
            self.imageView.frame = CGRect(x: self.view.bounds.midX - width / 2.0, y: self.view.bounds.midY - height / 2.0, width: width, height: height)
            
        }) { (success: Bool) in
            if success {
                print("DONE TANI")
            } else {
                print("ERROR TANI")
            }
        }
        
    }


}

