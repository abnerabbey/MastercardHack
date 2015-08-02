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
    var pageImage:[String] = []
    var bands:[BandProfile] = []
    var index:Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        subtitles = ["Cumbia","Mariachi","Indie","Pop","Trova","Rock"]
        
        tittles = ["Top 10 Cumbia Latina", "Mariachi desde Garibaldi","Indie Rock la nueva era!","Ritmo popero","Trovandooo","Rock: evolucion atraves del tiempo"]
        cover = ["mc-cover-cumbia","mc-cover-mariachi","mc-cover-indie","mc-cover-pop","mc-cover-trova","mc-cover-rock"]
        pageTittle = ["a","b","c","d"]
        pageSubtitle = ["1","2","3","4"]
        pageImage = ["mc-header-A","mc-header-B","mc-header-C","mc-header-D","mc-header-E","mc-header-F",]
        
        bands.append(BandProfile(name: "Guns and Roses", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", video: "8SbUC-UaAxE", picone: "A", pictwo: "A", picthree: "A", nameone: "Antonio De La Mora", nametwo: "Joaquin Alvarado", nameThree: "Roberto Perez"))
        bands.append(BandProfile(name: "Guns and Roses", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", video: "8SbUC-UaAxE", picone: "A", pictwo: "A", picthree: "A", nameone: "Antonio De La Mora", nametwo: "Joaquin Alvarado", nameThree: "Roberto Perez"))
        bands.append(BandProfile(name: "Guns and Roses", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", video: "8SbUC-UaAxE", picone: "A", pictwo: "A", picthree: "A", nameone: "Antonio De La Mora", nametwo: "Joaquin Alvarado", nameThree: "Roberto Perez"))
        bands.append(BandProfile(name: "Guns and Roses", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", video: "8SbUC-UaAxE", picone: "A", pictwo: "A", picthree: "A", nameone: "Antonio De La Mora", nametwo: "Joaquin Alvarado", nameThree: "Roberto Perez"))
        bands.append(BandProfile(name: "Guns and Roses", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", video: "8SbUC-UaAxE", picone: "A", pictwo: "A", picthree: "A", nameone: "Antonio De La Mora", nametwo: "Joaquin Alvarado", nameThree: "Roberto Perez"))
        bands.append(BandProfile(name: "Guns and Roses", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", video: "8SbUC-UaAxE", picone: "A", pictwo: "A", picthree: "A", nameone: "Antonio De La Mora", nametwo: "Joaquin Alvarado", nameThree: "Roberto Perez"))
        
        
        tb_featured.delegate = self
        tb_featured.dataSource = self
        
        
        
        
        
        pageViewController = self.storyboard?.instantiateViewControllerWithIdentifier("PVC") as! UIPageViewController
        var initViewController = self.getViewControllerByIndex(0) as! HeaderTableController
        pageViewController.dataSource = self
        pageViewController.delegate = self
        var vcArray = [initViewController]
        pageViewController.setViewControllers(vcArray, direction: .Forward, animated: true, completion: nil)
        pageViewController.hidesBottomBarWhenPushed = true
        pageViewController.view.frame = CGRect(x: 0, y: 0, width: tb_featured.frame.width, height: 180)
        self.addChildViewController(pageViewController)
        
        var pager:UIPageControl = UIPageControl()
        
        for i in self.pageViewController.view.subviews {
            if i.isKindOfClass(UIPageControl){
                pager = i as! UIPageControl
            }
        }
        
        pager.hidden = true
        
        
        tb_featured.tableHeaderView = pageViewController.view
        // Do any additional setup after loading the view.
        
        self.navigationController?.navigationBar.hidden = true
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
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        //var nView = self.storyboard?.instantiateViewControllerWithIdentifier("BandProfileController") as! BandProfileController
        
        //nView.prepareView(bands[indexPath.row].bandName, bandDescription: bands[indexPath.row].bandDescription, picOne: bands[indexPath.row].bandPicOne, picTwo: bands[indexPath.row].bandPicTwo, picThree: bands[indexPath.row].bandPicThree, nameOne: bands[indexPath.row].bandNameOne, nameTwo: bands[indexPath.row].bandNameTwo, nameThree: bands[indexPath.row].bandNameThree)
        //self.performSegueWithIdentifier("showDetail", sender: self)
        //self.navigationController?.pushViewController(nView, animated: true)
        
        index = indexPath.row
        self.performSegueWithIdentifier("showDetail", sender: self)
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            //var nView = segue.destinationViewController as! BandProfileController
            
           // nView.prepareView("Artista", bandDescription: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", picOne: "A", picTwo: "A", picThree: "A", nameOne: "Nombre", nameTwo: "Nombre", nameThree: "Nombre")
            //self.performSegueWithIdentifier("showDetail", sender: self)
        }
    }
    
    

    
    func getViewControllerByIndex(index:Int) -> UIViewController{
        
        
        if ((self.pageTittle.count == 0) || (index >= self.pageTittle.count)) {
            return HeaderTableController()
        }
        
        var vc = self.storyboard?.instantiateViewControllerWithIdentifier("HeaderTableController") as! HeaderTableController
        vc.index = index
        vc.tittle =  pageTittle[index]
        vc.subtitle = pageSubtitle[index]
        vc.image = pageImage[index]

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




