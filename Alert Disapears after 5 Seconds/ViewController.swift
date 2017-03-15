//
//  ViewController.swift
//  Let’s Try
//
//  Created by Mohamed El-Naggar on 3/11/17.
//  Copyright © 2017 Mohamed El-Naggar. All rights reserved.
//

import UIKit
//import CoreData


class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func buttonAlert(_ sender: Any) {
        alertMe("Alert" , "Wait 5 Seconds and this alert Will disappear Automatically😀")
    }
    
    func alertMe(_ title: String , _ message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        self.present(alert, animated: true, completion: nil)
        
        let aTime = DispatchTime.now() + 5
        DispatchQueue.main.asyncAfter(deadline: aTime){
            alert.dismiss(animated: true, completion: nil)
        }
    }
}
