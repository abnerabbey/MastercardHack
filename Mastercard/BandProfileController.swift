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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        player.delegate = self
        player.loadWithVideoId("YqeW9_5kURI")
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(animated: Bool) {
        player.playVideo()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
