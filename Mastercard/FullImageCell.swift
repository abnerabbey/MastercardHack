//
//  FullImageCell.swift
//  Mastercard
//
//  Created by Jonathan Velazquez on 01/08/15.
//  Copyright (c) 2015 Abner Castro Aguilar. All rights reserved.
//

import UIKit

class FullImageCell: UITableViewCell {

    @IBOutlet weak var iv_fullCover: UIImageView!
    @IBOutlet weak var lbl_tittle: UILabel!
    @IBOutlet weak var lbl_subtitle: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
