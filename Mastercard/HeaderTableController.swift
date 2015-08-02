//
//  HeaderTableController.swift
//  Mastercard
//
//  Created by Jonathan Velazquez on 02/08/15.
//  Copyright (c) 2015 Abner Castro Aguilar. All rights reserved.
//

import UIKit

class HeaderTableController: UIViewController {

    @IBOutlet weak var lbl_title: UILabel!
    @IBOutlet weak var lbl_subtitle: UILabel!
    @IBOutlet weak var iv_background: UIImageView!
    
    var index:Int!
    var image:String!
    var tittle:String!
    var subtitle:String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        iv_background.image = UIImage(named: image)
        lbl_title.text = tittle
        lbl_subtitle.text = subtitle
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

    

}
