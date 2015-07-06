//
//  CustomHeaderCell.swift
//  InventoryApp
//
//  Created by Pankaj Goyal on 6/30/15.
//  Copyright (c) 2015 TWC. All rights reserved.
//

import UIKit

class CustomHeaderCell: UITableViewCell {

    
    @IBOutlet weak var sectionHeader: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
