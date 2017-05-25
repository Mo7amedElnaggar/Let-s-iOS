//
//  firstVC.swift
//
//  Created by Mohamed El Naggar on 5/23/17.
//  Copyright © 2017 Mohamed El Naggar. All rights reserved.
//

import UIKit
import TextFieldEffects


class firstVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func seconVCAction(_ sender: UIButton) {
        
        guard let window = UIApplication.shared.keyWindow else { return }
        
        let secondViewController = storyboard?.instantiateViewController(withIdentifier: "secondVC")
    
        window.rootViewController = secondViewController
        
        
        UIView.transition(with: window, duration: 0.5, options: .transitionCurlDown , animations: nil, completion: nil)
    }
}
