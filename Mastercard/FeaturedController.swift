//
//  FeaturedController.swift
//  Mastercard
//
//  Created by Jonathan Velazquez on 01/08/15.
//  Copyright (c) 2015 Abner Castro Aguilar. All rights reserved.
//

import UIKit

class FeaturedController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    
    @IBOutlet weak var tb_featured: UITableView!
    var subtitles:[String]! = []
    var tittles:[String]! = []
    var cover:[String]! = []
    override func viewDidLoad() {
        super.viewDidLoad()

        subtitles = ["Cumbia","Mariachi","Indie","Pop","Trova","Rock"]
        
        tittles = ["Top 10 Cumbia Latina", "Mariachi desde Garibaldi","Indie Rock la nueva era!","Ritmo popero","Trovandooo","Rock: evolucion atraves del tiempo"]
        cover = ["mc-cover-cumbia","mc-cover-mariachi","mc-cover-indie","mc-cover-pop","mc-cover-trova","mc-cover-rock"]
        tb_featured.delegate = self
        tb_featured.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.row < 2 {
            var cell = tb_featured.dequeueReusableCellWithIdentifier("ParcialCell") as! ParcialCell
            cell.setCell(cover[indexPath.row], title: tittles[indexPath.row], subtitle: subtitles[indexPath.row])
            return cell
        }else{
            
            var cell = tb_featured.dequeueReusableCellWithIdentifier("FullImageCell") as! FullImageCell
            cell.setCell(cover[indexPath.row], title: tittles[indexPath.row], subtitle: subtitles[indexPath.row])
            return cell
        }
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tittles.count
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 80
    }
    
}




