//
//  ViewController.swift
//  CodeDoor
//
//  Created by Mohamed El Naggar on 4/9/17.
//  Copyright © 2017 Mohamed El Naggar. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getVideo(videoID: "RmHqOSrkZnk")
    }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    private func getVideo(videoID: String) {
        let url = URL(string: "https://www.youtube.com/embed/\(videoID)")
        webView.loadRequest(URLRequest(url: url!))
    }
    
}

