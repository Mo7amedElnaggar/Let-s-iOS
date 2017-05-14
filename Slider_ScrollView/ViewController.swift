//
//  ViewController.swift
//  CodeDoor
//
//  Created by Mohamed El Naggar on 4/9/17.
//  Copyright © 2017 Mohamed El Naggar. All rights reserved.
//

import UIKit

class ViewController: UIViewController  {
    
    @IBOutlet weak var mainScrollView: UIScrollView!
    
    var imageset = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageset = [ UIImage(named: "1.jpg")! , UIImage(named: "2.jpg")! , UIImage(named: "3.jpg")! , UIImage(named: "4.jpg")! ]
        
        for i in 0..<imageset.count {
            let imageView = UIImageView()
            
            imageView.image = imageset[i]
            imageView.contentMode = .scaleAspectFit
            
            let xPosition = self.mainScrollView.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: self.mainScrollView.frame.width, height: self.mainScrollView.frame.height)
        
            
            mainScrollView.contentSize.width = self.mainScrollView.frame.width * CGFloat(i + 1)
            
            mainScrollView.addSubview(imageView)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
}
