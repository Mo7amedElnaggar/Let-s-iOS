//
//  ViewController.swift
//  LocalizationApp
//
//  Created by Mohamed El-Naggar on 8/12/17.
//  Copyright © 2017 Mohamed El-Naggar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func changeLanguage(_ sender: UIBarButtonItem) {
        
        if sender.title == "Ar" {
            
            UserDefaults.standard.set(["ar"], forKey: "AppleLanguages")
            UserDefaults.standard.synchronize()
            
            exit(EXIT_SUCCESS)
        
        } else {
            UserDefaults.standard.set(["en"], forKey: "AppleLanguages")
            UserDefaults.standard.synchronize()
            
            exit(EXIT_SUCCESS)
        }
        
    }


}

