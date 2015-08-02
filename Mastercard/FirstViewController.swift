//
//  FirstViewController.swift
//  Mastercard
//
//  Created by Abner Castro Aguilar on 01/08/15.
//  Copyright (c) 2015 Abner Castro Aguilar. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, LIVBubbleButtonDelegate {
    
    var arrayBubbles: [UIImage]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayBubbles = [UIImage(named: "banda")!, UIImage(named: "cumbia")!, UIImage(named: "indie")!, UIImage(named: "latino")!, UIImage(named: "mariachi")!, UIImage(named: "pop")!, UIImage(named: "rock")!, UIImage(named: "trova")!]

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(animated: Bool) {
        
        var bubbleMenu = LIVBubbleMenu(point: self.view.center, radius: 150, menuItems: arrayBubbles, inView: self.view)
        bubbleMenu.delegate = self
        bubbleMenu.easyButtons = false
        bubbleMenu.bubbleStartAngle = 0.0
        bubbleMenu.bubbleTotalAngle = 180.0
        bubbleMenu.show()
        
    }
    

}
