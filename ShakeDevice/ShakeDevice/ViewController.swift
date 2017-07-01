//
//  ViewController.swift
//  ShakeDevice
//
//  Created by Mohamed El-Naggar on 7/1/17.
//  Copyright © 2017 Mohamed El-Naggar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var shakedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        shakedLabel.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if event?.subtype == .motionShake {
            UIView.animate(withDuration: 3, delay: 0, options: .curveEaseIn, animations: {
                
                
                self.shakedLabel.isHidden = false
                self.view.backgroundColor = UIColor.brown
                

            }, completion: { (success) in
                if success {
                    
                    UIView.animate(withDuration: 3, delay: 0, options: .curveEaseOut, animations: {
                        
                        self.view.backgroundColor = .white
                        self.shakedLabel.isHidden = true
                        
                    }, completion: nil)
                    
                    
                }
            })
            
        }
    }
    
}

