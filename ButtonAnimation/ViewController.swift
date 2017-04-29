//
//  ViewController.swift
//  CodeDoor
//
//  Created by Mohamed El Naggar on 4/9/17.
//  Copyright © 2017 Mohamed El Naggar. All rights reserved.
//
import UIKit
import CoreData

class ViewController: UIViewController {


    @IBOutlet weak var buttonConstraint1: NSLayoutConstraint!
    
    @IBOutlet weak var buttonConstraint2: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonConstraint1.constant -= view.bounds.width
        buttonConstraint2.constant -= view.bounds.width

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 0.5 , delay: 0, options: .curveEaseOut , animations: {
            self.buttonConstraint1.constant += self.view.bounds.width
            self.view.layoutIfNeeded()
        }, completion: nil)
        
        UIView.animate(withDuration: 0.5 , delay: 0.2, options: .curveEaseOut , animations: {
            self.buttonConstraint2.constant += self.view.bounds.width
            self.view.layoutIfNeeded()
        }, completion: nil)
        
    }
    var newCha = 1
    @IBAction func AnimatedButton2(_ sender: Any) {
        if newCha == 1 {
            UIView.animate(withDuration: 0.5, delay: 0, options: .beginFromCurrentState , animations: {
                self.buttonConstraint1.constant -= self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
            newCha = 2
        } else {
            UIView.animate(withDuration: 0.5, delay: 0, options: .beginFromCurrentState , animations: {
                self.buttonConstraint1.constant += self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
            newCha = 1
        }
        
        
        
    }
    
    @IBAction func AnimatedButton1(_ sender: Any) {
        if newCha == 1 {
            UIView.animate(withDuration: 0.5, delay: 0, options: .beginFromCurrentState , animations: {
                self.buttonConstraint2.constant -= self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
            newCha = 2
        } else {
            UIView.animate(withDuration: 0.5, delay: 0, options: .beginFromCurrentState , animations: {
                self.buttonConstraint2.constant += self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
            newCha = 1
        }
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

