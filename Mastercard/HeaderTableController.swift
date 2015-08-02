//
//  HeaderTableController.swift
//  Mastercard
//
//  Created by Jonathan Velazquez on 02/08/15.
//  Copyright (c) 2015 Abner Castro Aguilar. All rights reserved.
//

import UIKit
import MapKit

class HeaderTableController: UIViewController,MKMapViewDelegate {

    @IBOutlet weak var lbl_title: UILabel!
    @IBOutlet weak var lbl_subtitle: UILabel!
    @IBOutlet weak var iv_background: UIImageView!
    @IBOutlet weak var map: MKMapView!
    
    @IBOutlet weak var blur: UIVisualEffectView!
    var index:Int!
    var image:String!
    var tittle:String!
    var subtitle:String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        iv_background.image = UIImage(named: image)
        lbl_title.text = tittle
        map.delegate = self
        var region = MKCoordinateRegionMakeWithDistance(CLLocationCoordinate2D(latitude: 20.6539517, longitude: -87.067881), 10000, 10000)
        map.setRegion(region, animated: true)
        map.hidden = true
        lbl_subtitle.text = subtitle
        
    }
    
    override func viewWillAppear(animated: Bool) {
        if index == 1{
            map.hidden = false
            lbl_subtitle.hidden = true
            lbl_title.hidden = true
            blur.alpha = 0.1
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    

}
