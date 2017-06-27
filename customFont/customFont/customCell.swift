//
//  customCell.swift
//  customFont
//
//  Created by Mohamed El-Naggar on 6/24/17.
//  Copyright © 2017 Mohamed El-Naggar. All rights reserved.
//

import UIKit

class customCell: UITableViewCell {

    @IBOutlet weak var cellLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
