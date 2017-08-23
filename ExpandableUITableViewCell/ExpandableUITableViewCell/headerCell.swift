//
//  headerCell.swift
//  MalekElSouq
//
//  Created by Mohamed El-Naggar on 8/23/17.
//  Copyright © 2017 Mohamed El-Naggar. All rights reserved.
//

import UIKit

class headerCell: UITableViewCell {

    @IBOutlet var labelName: UILabel!
    @IBOutlet var btnExpandable: UIButton!
    
    var isExpandalbe: Bool = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
