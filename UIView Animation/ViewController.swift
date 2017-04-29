//
//  ViewController.swift
//  CodeDoor
//
//  Created by Mohamed El Naggar on 4/9/17.
//  Copyright © 2017 Mohamed El Naggar. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    
  
    
    let simpleView = UIView()
    let button = UIButton()
    
    @IBInspectable var getColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addButton()
        
        addUIView()
    }
    
    private func addButton() {
        
        
        
        button.setTitle("▶︎", for: .normal)
        
        button.frame = CGRect(x: 10, y: 20, width: 50, height: 50)
        button.setTitleColor(UIColor.purple, for: .normal)
        button.titleLabel?.font = UIFont(name: "Helvetica", size: 30)
        
        button.addTarget(self, action: #selector(ViewController.buttonClicked), for: .touchUpInside)
        
        self.view.addSubview(button)
    }
    
    private func addUIView() {
        
        
        simpleView.frame = CGRect(x: -self.view.bounds.width / 3.0, y: 0, width: self.view.bounds.width / 3.0, height: self.view.bounds.height)
        
        simpleView.backgroundColor = getColor
        
        self.view.addSubview(simpleView)
        
    }
    
    var countShow = 0
    
    func buttonClicked() {
        if countShow == 0 {
            
            button.setTitle("◀︎", for: .normal)
            
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
                self.simpleView.frame = CGRect(x: 0 , y: 0, width: self.view.bounds.width / 3.0, height: self.view.bounds.height)
                self.button.frame =  CGRect(x: self.view.frame.width / 3.0 + 10, y: 20, width: 50, height: 50)
                self.view.layoutIfNeeded()
            }, completion: nil)
        } else {
            
            button.setTitle("▶︎", for: .normal)
            
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
                self.simpleView.frame = CGRect(x: -self.view.frame.width / 3.0 , y: 0, width: self.view.bounds.width / 3.0, height: self.view.bounds.height)
                self.button.frame =  CGRect(x: 10, y: 20, width: 50, height: 50)
                self.view.layoutIfNeeded()
            }, completion: nil)
        }
    
        countShow = 1 - countShow
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

