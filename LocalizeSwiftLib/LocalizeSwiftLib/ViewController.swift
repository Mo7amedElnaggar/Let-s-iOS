//
//  ViewController.swift
//  LocalizeSwiftLib
//
//  Created by Mohamed El-Naggar on 8/14/17.
//  Copyright © 2017 Mohamed El-Naggar. All rights reserved.
//

import UIKit
import Localize_Swift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet var aboutLabel: UILabel!
    @IBOutlet var navTitle: UINavigationItem!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.setAttributes), name: NSNotification.Name( LCLLanguageChangeNotification), object: nil)
    
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        NotificationCenter.default.removeObserver(self)
        
    }
    
    func setAttributes() {
        
        aboutLabel.text = "aboutLabel".localized()
        navTitle.title = "navTitle".localized()
        
        
    }
    
    @IBAction func changeLanguage(_ sender: UIBarButtonItem) {
        
        if Localize.currentLanguage() == "ar" {
            Localize.setCurrentLanguage("en")
            aboutLabel.textAlignment = .left
        } else {
            Localize.setCurrentLanguage("ar")
            aboutLabel.textAlignment = .right
        }
        
        
    }
    
}

