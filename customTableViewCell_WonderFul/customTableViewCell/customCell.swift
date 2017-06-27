//
//  customCell.swift
//  customTableViewCell
//
//  Created by Mohamed El-Naggar on 6/23/17.
//  Copyright © 2017 Mohamed El-Naggar. All rights reserved.
//

import UIKit

class customCell: UITableViewCell {

    @IBOutlet weak var labelName: UILabel!
    
    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet weak var ImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        makeImageViewCircle()
        makeUIViewShadow()
        
        // Configure the view for the selected state
    }
    
    private func makeImageViewCircle() {
        ImageView.layer.borderWidth  = 1.0
        ImageView.layer.masksToBounds = false
        ImageView.layer.borderColor = UIColor.white.cgColor
        ImageView.layer.cornerRadius = ImageView.bounds.width / 2.0
        ImageView.clipsToBounds = true
    }
    
    private func makeUIViewShadow() {
        containerView.layer.shadowColor = UIColor.green.cgColor
        containerView.layer.shadowOpacity =  0.7
        containerView.layer.shadowOffset = .zero
        containerView.layer.shadowRadius = 20
        containerView.layer.shadowPath = UIBezierPath(rect: containerView.bounds).cgPath
        containerView.layer.shouldRasterize = true
    }

}
