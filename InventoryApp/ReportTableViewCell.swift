//
//  ReportTableViewCell.swift
//  InventoryApp
//
//  Created by Pankaj Goyal on 6/24/15.
//  Copyright (c) 2015 TWC. All rights reserved.
//

import UIKit

class ReportTableViewCell: UITableViewCell {

    @IBOutlet weak var barcodeId: UILabel!
    @IBOutlet weak var truckImg: UIImageView!
    @IBOutlet weak var icomsImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
