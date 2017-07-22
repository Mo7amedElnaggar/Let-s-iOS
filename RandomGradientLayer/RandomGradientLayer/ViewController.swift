//
//  ViewController.swift
//  RandomGradientLayer
//
//  Created by Mohamed El-Naggar on 7/19/17.
//  Copyright © 2017 Mohamed El-Naggar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var gradientLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        // Gradient Layer Setup
        gradientLayer.frame = self.view.bounds
        
        let color1 = UIColor(red: 1, green: 0, blue: 0, alpha: 0.4).cgColor
        let color2 = UIColor(red: 0, green: 1, blue: 0, alpha: 0.4).cgColor
        let color3 = UIColor(red: 0, green: 0, blue: 1, alpha: 0.4).cgColor
        
        gradientLayer.colors = [color1 , color2 , color3]
        gradientLayer.locations = [0.30 , 0.60 , 0.90]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        
        self.view.layer.addSublayer(gradientLayer)
        
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        // Random Background Color
        let redValue = CGFloat(drand48())
        let greenValue = CGFloat(drand48())
        let blueValue = CGFloat(drand48())
        
        self.view.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
    }
}

