//
//  ViewController.swift
//  Let’s Try
//
//  Created by Mohamed El-Naggar on 3/11/17.
//  Copyright © 2017 Mohamed El-Naggar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TextInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GOSegue" {
            let destination = segue.destination as! ViewController2
            destination.yourName = TextInput.text!
        }
    }
}
