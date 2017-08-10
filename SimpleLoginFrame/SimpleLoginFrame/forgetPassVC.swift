//
//  forgetPassVC.swift
//  SimpleLoginFrame
//
//  Created by Mohamed El-Naggar on 8/10/17.
//  Copyright © 2017 Mohamed El-Naggar. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField

class forgetPassVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        
    }
    
    
    // MARK: - Outlets
    @IBOutlet var containerView: UIView!
    @IBOutlet var sendButton: UIButton!
    @IBOutlet var emailTextField: SkyFloatingLabelTextField!
    @IBOutlet var forgetPassLabel: UILabel!
    
    
    // MARK: - Methods
    func setupView() {
        Helper.roundCorners(view: containerView, cornerRadous: 12.0)
        
        Helper.roundCorners(view: sendButton, cornerRadous: 12.0)
        
        Helper.roundCorners(view: forgetPassLabel, corners: [.topLeft , .topRight], cornerRadius: 12.0)
    }
    
    
    // MARK: - Actions
    @IBAction func sendButtonAction(_ sender: UIButton) {
        
        self.dismiss(animated: false, completion: nil)
        
    }
   
}
