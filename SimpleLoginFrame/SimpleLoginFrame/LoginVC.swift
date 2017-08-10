//
//  LoginVC.swift
//  SimpleLoginFrame
//
//  Created by Mohamed El-Naggar on 8/10/17.
//  Copyright © 2017 Mohamed El-Naggar. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        Helper.roundCorners(view: loginButton, cornerRadous: 10.0)
        Helper.roundCorners(view: signUpButton, cornerRadous: 10.0)
    }

    
    // MARK: - Outlets
    
    @IBOutlet var userNameTF: SkyFloatingLabelTextField!
    @IBOutlet var passwordTF: SkyFloatingLabelTextField!
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var signUpButton: UIButton!
    
    
    
    // MARK: - Method
    
    
    // MARK: - Actions
    @IBAction func forgetPassword(_ sender: UIButton) {
        
        let forgetVC = self.storyboard?.instantiateViewController(withIdentifier: "forgetPassVC") as! forgetPassVC
        
        
        forgetVC.modalPresentationStyle = .overCurrentContext
        
        self.present(forgetVC , animated: false, completion: nil)
    
    }
    
    @IBAction func loginAction(_ sender: UIButton) {
        
        
        
    }
    
    
    @IBAction func signUpAction(_ sender: Any) {
        
        
    }
    
    
    
}

