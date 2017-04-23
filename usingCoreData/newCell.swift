//
//  newCell.swift
//  CodeDoor
//
//  Created by Mohamed El Naggar on 4/23/17.
//  Copyright © 2017 Mohamed El Naggar. All rights reserved.
//

import UIKit

class newCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var loveIt: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCell(name: String , love: Bool) {
        nameLabel.text = name
        loveIt.isOn = love
    }
    
}
