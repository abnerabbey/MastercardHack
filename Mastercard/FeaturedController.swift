//
//  FeaturedController.swift
//  Mastercard
//
//  Created by Jonathan Velazquez on 01/08/15.
//  Copyright (c) 2015 Abner Castro Aguilar. All rights reserved.
//

import UIKit

class FeaturedController: UIViewController,UITableViewDelegate,UITableViewDataSource,UIPageViewControllerDataSource,UIPageViewControllerDelegate {

    
    
    @IBOutlet weak var tb_featured: UITableView!
    
    
    var subtitles:[String]! = []
    var tittles:[String]! = []
    var cover:[String]! = []
    var pageTittle:[String] = []
    var pageViewController: UIPageViewController!
    var pageSubtitle:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        subtitles = ["Cumbia","Mariachi","Indie","Pop","Trova","Rock"]
        
        tittles = ["Top 10 Cumbia Latina", "Mariachi desde Garibaldi","Indie Rock la nueva era!","Ritmo popero","Trovandooo","Rock: evolucion atraves del tiempo"]
        cover = ["mc-cover-cumbia","mc-cover-mariachi","mc-cover-indie","mc-cover-pop","mc-cover-trova","mc-cover-rock"]
        pageTittle = ["a","b","c","d"]
        pageSubtitle = ["1","2","3","4"]
        
        tb_featured.delegate = self
        tb_featured.dataSource = self
        
        
        
        pageViewController = self.storyboard?.instantiateViewControllerWithIdentifier("PVC") as! UIPageViewController
        var initViewController = self.getViewControllerByIndex(0) as! HeaderTableController
        pageViewController.dataSource = self
        pageViewController.delegate = self
        var vcArray = [initViewController]
        pageViewController.setViewControllers(vcArray, direction: .Forward, animated: true, completion: nil)
        
        
        pageViewController.view.frame = CGRect(x: 0, y: 0, width: tb_featured.frame.width, height: 180)
        self.addChildViewController(pageViewController)
        
        tb_featured.tableHeaderView = pageViewController.view
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
    

    
    func getViewControllerByIndex(index:Int) -> UIViewController{
        
        
        if ((self.pageTittle.count == 0) || (index >= self.pageTittle.count)) {
            return HeaderTableController()
        }
        
        var vc = self.storyboard?.instantiateViewControllerWithIdentifier("HeaderTableController") as! HeaderTableController
        vc.index = index
        vc.tittle =  pageTittle[index]
        vc.subtitle = pageSubtitle[index]
        vc.image = "mc-cover-mariachi"
        return vc
    }

    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! HeaderTableController).index as Int
        
        if (index == NSNotFound){
            return nil
        }
        
        index++
        
        if (index == self.pageTittle.count){
            return nil
        }
        
        return self.getViewControllerByIndex(index)
    }

    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! HeaderTableController).index as Int
        
        if (index == 0 || index == NSNotFound){
            return nil
        }
        
        index--
        
        return self.getViewControllerByIndex(index)
        
    }
    
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int{
        return self.pageTittle.count
    }
    
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int{
        return 0
    }

    
    
    
}




