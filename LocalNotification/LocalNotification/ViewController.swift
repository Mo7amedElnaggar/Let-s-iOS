//
//  ViewController.swift
//  LocalNotification
//
//  Created by Mohamed El-Naggar on 6/22/17.
//  Copyright © 2017 Mohamed El-Naggar. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func pushNotification(_ sender: UIButton) {
        
        // SET notification Content
        let content = UNMutableNotificationContent()
        content.title = "The 5 Seconds Alert"
        content.subtitle = "The are up Now"
        content.body = "Hi , The 5 Seocnd is Now"
        content.badge = 1 // Doesn’t Work for me :"D
        
        // Push Notification after 5 seconds from UIBarButtonItem Was Clicked
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5 , repeats: false)
        
        // REQUEST
        let request = UNNotificationRequest(identifier: "Timer", content: content, trigger: trigger)
        
        
        UNUserNotificationCenter.current().add(request) { (error) in
            if error == nil {
                // DONE
            } else {
                // ERROR
            }
        }
        
    }
    
    
    
    
    
}

