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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        tb_featured.delegate = self
        tb_featured.dataSource = self
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tb_featured.dequeueReusableCellWithIdentifier("ParcialCell") as! ParcialCell
        
        return cell
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    
}




