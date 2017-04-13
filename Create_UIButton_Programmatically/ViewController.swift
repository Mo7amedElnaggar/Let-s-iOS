//
//  ViewController.swift
//  CodeDoor
//
//  Created by Mohamed El Naggar on 4/9/17.
//  Copyright © 2017 Mohamed El Naggar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // take an instance to UIButton Class
    // called 'butn'
    var butn = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // get Width and Height of the View
        let height = self.view.frame.height
        let width  = self.view.frame.width
        
        // prepare CGRect to UIButton to add it to 'butn'
        let ButtonFrame = CGRect(x: width / 2.0 - 60, y: height / 2.0 - 20, width: 120, height: 40)
        
        butn.frame = ButtonFrame // add button Frame as CGRect
        butn.backgroundColor = UIColor.orange // Change button background Color to 'Orange'
        butn.setTitleColor(UIColor.black, for: .normal) // set Text Color to 'BLACK'
        butn.setTitle("Naggar inc.", for: .normal) // set Text to Button
        
        // add Action to Button 
        // When you Click touch up Inside --> Excute "ButtonWasClicked" Function
        butn.addTarget(self, action: #selector(ViewController.buttonWasClicked(_:)), for: .touchUpInside)
        
        
        // add Button to our View
        self.view.addSubview(butn)
    }
    
    // function will be excuted when button had been clicked
    func buttonWasClicked(_ button: UIButton) {
        // Simple Alert function see it blew
        alertME("DONE" , "Successfully add Button Action")
    }
    
    private func alertME(_ title: String , _ message: String) {
        // prepare alert
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        // Add button Action to Alert
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        
        // present Alert to User
        self.present(alert, animated: true, completion: nil)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
