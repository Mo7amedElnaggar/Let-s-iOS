//
//  ViewController.swift
//  CodeDoor
//
//  Created by Mohamed El Naggar on 4/9/17.
//  Copyright © 2017 Mohamed El Naggar. All rights reserved.
//
import UIKit

class ViewController: UIViewController  {
    
    @IBOutlet weak var textField: UITextField!
    var stack = Stack()
  
    @IBOutlet weak var textFieldLayout: NSLayoutConstraint!
    
    var frameLastView: CGRect?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.text = "0"
        textField.layer.borderColor = UIColor.purple.cgColor
        textField.layer.borderWidth = 4
        textField.layer.cornerRadius = 5.0
        
        frameLastView = CGRect(x: self.view.bounds.midX - 30, y: 0, width: 60, height: 60)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    var currentPush = 0
    
    @IBAction func buttonsClick(_ sender: UIButton) {
        
        if sender.currentTitle == "Push" {
            if currentPush == 0 {
                animateView(150)
                currentPush = 1
            } else {
                animateView(-150)
                
                let currentViewFrame = CGRect(x: -1 * (frameLastView?.minX)!, y: (frameLastView?.maxY)! + 10    , width: 60, height: 60)
                let newView = StackDSView(frame: currentViewFrame)
                
                newView.textVal = textField.text!
                newView.backgroundColor = UIColor.white
                
                UIView.animate(withDuration: 1, delay: 0, options: .curveEaseInOut, animations: {
                    newView.frame = CGRect(x: (self.frameLastView?.minX)!, y: (self.frameLastView?.maxY)! + 10, width: 60, height: 60)
                }, completion: nil)
                
                self.view.addSubview(newView)
                stack.push(item: textField.text!)
                
                frameLastView = newView.frame
                currentPush = 0
            }
        } else if sender.currentTitle == "Pop" {
            
            if stack.items.count > 0 {
                let lastView = self.view.subviews.last!
                
                UIView.animate(withDuration: 1, delay: 0, options: .curveEaseInOut, animations: {
                    
                    lastView.frame = CGRect(x: -1.0 * (self.frameLastView?.minX)!, y: lastView.frame.minY, width: 60, height: 60)
                    
                }, completion: { (success) in
                    if success {
                        self.stack.pop()
                        lastView.removeFromSuperview()
                    }
                })
            }
            
        } else {
            
            alert("Error", "لسه معملتهاش كسل بعيد عنك xD")
        }
    }
    
    private func animateView(_ const: Int) {
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseInOut, animations: {
            self.textFieldLayout.constant += CGFloat(const)
            self.view.layoutIfNeeded()
        }, completion: nil)
        
    }
    
    
    private func alert(_ title: String , _ message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    
}
