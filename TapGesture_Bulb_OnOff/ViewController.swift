//
//  ViewController.swift
//  Let’s Try
//
//  Created by Mohamed El-Naggar on 3/11/17.
//  Copyright © 2017 Mohamed El-Naggar. All rights reserved.
//

import UIKit
//import AVFoundation

class ViewController: UIViewController {
    
    var lightOn: Bool = false

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var lableLight: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Adding GesturesRecognizer to imageView
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.changeLight))
        
        imageView.addGestureRecognizer(gestureRecognizer)
        imageView.isUserInteractionEnabled = true
    }
    
    func changeLight(){
        if lightOn == true {
            imageView.image = UIImage(named: "LightOff.png")
            lableLight.text = "Light is Off"
            lightOn = false
        } else {
            imageView.image = UIImage(named: "LightOn.png")
            lableLight.text = "Light is On"
            lightOn = true
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

