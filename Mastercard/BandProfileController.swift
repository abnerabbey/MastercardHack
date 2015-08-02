//
//  BandProfileController.swift
//  Mastercard
//
//  Created by Jonathan Velazquez on 02/08/15.
//  Copyright (c) 2015 Abner Castro Aguilar. All rights reserved.
//

import UIKit

class BandProfileController: UIViewController ,YTPlayerViewDelegate{

    
    @IBOutlet weak var player: YTPlayerView!
    
    @IBOutlet weak var lbl_bandName: UILabel!
    @IBOutlet weak var lbl_bandDescription: UILabel!
    @IBOutlet weak var iv_picOne: UIImageView!
    @IBOutlet weak var iv_picTwo: UIImageView!
    @IBOutlet weak var iv_picThree: UIImageView!
    @IBOutlet weak var lbl_nameOne: UILabel!
    @IBOutlet weak var lbl_nameTwo: UILabel!
    @IBOutlet weak var lbl_nameThree: UILabel!
    
    @IBOutlet weak var sv: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        sv.contentSize.height = 800
        self.edgesForExtendedLayout = UIRectEdge.None
        iv_picOne.layer.cornerRadius = 50
        iv_picOne.clipsToBounds = true
        iv_picTwo.layer.cornerRadius = 50
        iv_picTwo.clipsToBounds = true
        iv_picThree.layer.cornerRadius = 50
        iv_picThree.clipsToBounds = true
        
        player.delegate = self
        player.loadWithVideoId("YqeW9_5kURI")
        prepareView()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(animated: Bool) {
        player.playVideo()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
    @IBAction func contratar(sender: UIButton) {
        
    }
    
    
    func prepareView(){
        
        lbl_bandName.text = "Artista"
        lbl_bandDescription.text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        iv_picOne.image = UIImage(named: "A")
        iv_picTwo.image = UIImage(named: "A")
        iv_picThree.image = UIImage(named: "A")
        lbl_nameOne.text = "Nombre"
        lbl_nameTwo.text = "Nombre"
        lbl_nameThree.text = "Nombre"
        
        
    }

}
