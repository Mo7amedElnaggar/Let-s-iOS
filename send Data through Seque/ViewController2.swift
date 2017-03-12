//
//  ViewController2.swift
//  Let’s Try
//
//  Created by Mohamed El-Naggar on 3/11/17.
//  Copyright © 2017 Mohamed El-Naggar. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var DisplayName: UILabel!
    var yourName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DisplayName.text = yourName
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
