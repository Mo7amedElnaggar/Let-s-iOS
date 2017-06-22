//
//  secondVC.swift
//  githubAPI
//
//  Created by Mohamed El-Naggar on 6/22/17.
//  Copyright © 2017 Mohamed El-Naggar. All rights reserved.
//

import UIKit

class secondVC: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var imageIsDownloadingLabel: UILabel!
    @IBOutlet weak var namedLabel: UILabel!
    
    var image: UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        imageView.image = image

    }

}
