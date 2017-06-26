//
//  videoCell.swift
//  PlayLocalVideo
//
//  Created by Mohamed El-Naggar on 6/24/17.
//  Copyright © 2017 Mohamed El-Naggar. All rights reserved.
//

import UIKit

class videoCell: UITableViewCell {

    @IBOutlet weak var videoImageView: UIImageView!
    
    @IBOutlet weak var videoName: UILabel!
    
    @IBOutlet weak var cellView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
        cellView.roundCorners(corners: [.allCorners], raduis: 10)
        cellView.backgroundShadow(UIColor.green, 0.8, .zero, radius: 10, true)
    }
    
    func setVideoProperity(_ videoOption: videoOptions) {
        self.videoName.text = videoOption.title
        self.videoImageView.image = videoOption.image
    }
}
