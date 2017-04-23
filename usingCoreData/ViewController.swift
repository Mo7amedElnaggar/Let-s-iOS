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
    
    @IBOutlet weak var textName: UITextField!
    
    @IBOutlet weak var switchLove: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func saveFriendData(_ sender: Any) {
    
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
    
        
        
        do {
            let friendData = Favorite(context: context)
            if  textName.text != "" {
                friendData.name = textName.text
                friendData.loveIt = switchLove.isOn
                
                textName.text = ""
                switchLove.isOn = false 
                
            } else {
                alertME("Error", "Enter your Friend Name")
            }
            
            try appDelegate.saveContext()
            
            alertME("DONE" , "your Data saved Successfully")
        } catch {
            alertME("Error", "There is Error While Saving")
        }
    }
    
    private func alertME(_ title: String , _ message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
}

