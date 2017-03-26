//
//  ViewController.swift
//  Mego
//
//  Created by Mohamed El-Naggar on 3/21/17.
//  Copyright © 2017 Mohamed El-Naggar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timerLabel: UILabel!
    
    var timer = Timer()
    var counter = 20
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timerLabel.text = "\(counter)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timerLabelView), userInfo: nil, repeats: true)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // function that Timer call it every Second to Execute something
    func timerLabelView(){
        counter -= 1
        timerLabel.text = "\(counter)"
        if(counter == 1){
            timer.invalidate() // stop timer from invoking this 'timerLabelView' Function
            timerLabel.text = "Time is Ended"
            timerLabel.textColor = UIColor.red
        }
    }
}

