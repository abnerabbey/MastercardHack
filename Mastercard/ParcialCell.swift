//
//  ParcialCell.swift
//  Mastercard
//
//  Created by Jonathan Velazquez on 01/08/15.
//  Copyright (c) 2015 Abner Castro Aguilar. All rights reserved.
//

import UIKit

class ParcialCell: UITableViewCell {

    @IBOutlet weak var iv_cover: UIImageView!
    @IBOutlet weak var lbl_title: UILabel!
    @IBOutlet weak var lbl_subtitle: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
    @IBAction func more(sender: UIButton) {
    }

    
    func setCell(cover:String,title:String,subtitle:String){
        
        iv_cover.image = UIImage(named: cover)
        lbl_title.text = title
        lbl_subtitle.text = subtitle
        
    }
}
