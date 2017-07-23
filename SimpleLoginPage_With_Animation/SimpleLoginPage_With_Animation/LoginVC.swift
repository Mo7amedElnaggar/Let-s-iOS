//
//  LoginVC.swift
//  TryPra
//
//  Created by Mohamed El-Naggar on 6/28/17.
//  Copyright © 2017 Mohamed El-Naggar. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var registerButton: UIButton!
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var passWordText: UITextField!
    @IBOutlet weak var userNameText: UITextField!
    
    var animateButton: Bool = true
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.registerButton.layer.cornerRadius = 3
        self.loginButton.layer.cornerRadius = 3
        
        
        self.userNameText.frame = CGRect(x: -1 * self.view.bounds.width, y: self.view.bounds.height / 2.0 - 35, width: self.view.bounds.width - 40, height: 50)
        
        self.passWordText.frame = CGRect(x: -1 * self.view.bounds.width, y: self.view.bounds.height / 2.0 + 35, width: self.view.bounds.width - 40, height: 50)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        
        if animateButton {
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseInOut, animations: {
            
                self.userNameText.frame = CGRect(x: 20, y: self.view.bounds.height / 2.0 - 35, width: self.view.bounds.width - 40, height: 50)

            
            }, completion: nil)
        
            UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveEaseInOut, animations: {
            
                self.passWordText.frame = CGRect(x: 20, y: self.view.bounds.height / 2.0 + 35, width: self.view.bounds.width - 40, height: 50)
            
            }, completion: nil)
            
            animateButton = false
        } else {
            
            guard let userName = userNameText.text , !userName.isEmpty else { return }
            guard let passWord = passWordText.text , !passWord.isEmpty else { return }
            
            API.tryToLogin(userName: userName, passWord: passWord, completion: { (err: Error?) in
                
                if err == nil {
                    // DONE
                    print("Login Successfully")
                } else {
                    // ERROR
                    print("Error" , err!)
                }
                
            })
            
        }
        
    }
    
}

