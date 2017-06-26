//
//  ViewController.swift
//  PlayLocalVideo
//
//  Created by Mohamed El-Naggar on 6/24/17.
//  Copyright © 2017 Mohamed El-Naggar. All rights reserved.
//

import UIKit

struct videoOptions {
    let title: String
    let image: UIImage
}

class ViewController: UIViewController {
    
    @IBOutlet weak var videosTableView: UITableView!
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    
    // Name , Image of Video
    var videoUtility = [
        videoOptions(title: "Title 1", image: UIImage(named: "videoScreenshot01")!) ,
        videoOptions(title: "Title 2", image: UIImage(named: "videoScreenshot02")!) ,
        videoOptions(title: "Title 3", image: UIImage(named: "videoScreenshot03")!) ,
        videoOptions(title: "Title 4", image: UIImage(named: "videoScreenshot04")!) ,
        videoOptions(title: "Title 5", image: UIImage(named: "videoScreenshot05")!) ,
        videoOptions(title: "Title 6", image: UIImage(named: "videoScreenshot06")!)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        videosTableView.dataSource = self
        videosTableView.tableFooterView = UIView()
        
        videosTableView.separatorStyle = .none
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playLocalVideo(_ sender: UIButton) {
        
        let playVC = AVPlayerVC()
        
        self.present(playVC   , animated: true) {
            
            playVC.playVideo()
        
        }
        
    }
}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videoUtility.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = videosTableView.dequeueReusableCell(withIdentifier: "VideoCell", for: indexPath) as? videoCell else {
            
            
            return UITableViewCell()
        }
        
        cell.setVideoProperity(videoUtility[indexPath.row])
        
        return cell
    }
}
