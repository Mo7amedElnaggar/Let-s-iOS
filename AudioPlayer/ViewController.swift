//
//  ViewController.swift
//  CodeDoor
//
//  Created by Mohamed El Naggar on 4/9/17.
//  Copyright © 2017 Mohamed El Naggar. All rights reserved.
//
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            
            let audioPath = Bundle.main.path(forResource: "SameOldLove", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
            
        } catch {
            alertME("Error" , "Error While Playing Your Music , Try again")
        }
    }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func playAudioClicked(_ sender: UIButton) {
        if sender.currentTitle == "Play Audio" {
            player.play()
        } else {
            player.pause()
        }
    }
    
    func alertME(_ title: String , _ message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
}

