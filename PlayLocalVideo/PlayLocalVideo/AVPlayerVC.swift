//
//  AVPlayerVC.swift
//  PlayLocalVideo
//
//  Created by Mohamed El-Naggar on 6/24/17.
//  Copyright © 2017 Mohamed El-Naggar. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class AVPlayerVC: AVPlayerViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func playVideo() {
        if let path = Bundle.main.path(forResource: "VideoNmae", ofType: "mp4") {
            let player = AVPlayer(url: URL(fileURLWithPath: path))
            player.play()
        } else {
            // ERROR
            print("Error")
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
