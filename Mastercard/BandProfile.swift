//
//  BandProfile.swift
//  Mastercard
//
//  Created by Jonathan Velazquez on 02/08/15.
//  Copyright (c) 2015 Abner Castro Aguilar. All rights reserved.
//

import Foundation
class BandProfile {
    var bandName:String!
    var bandDescription:String!
    var bandVideo:String!
    var bandPicOne:String!
    var bandPicTwo: String!
    var bandPicThree:String!
    var bandNameOne:String!
    var bandNameTwo:String!
    var bandNameThree:String!

    init(name:String,description:String,video:String, picone:String,pictwo:String,picthree:String,nameone:String,nametwo:String,nameThree:String){
        bandName = name
        bandDescription = description
        bandVideo = video
        bandPicOne = picone
        bandPicTwo = pictwo
        bandPicThree = picthree
        bandNameOne = nameone
        bandNameTwo = nametwo
        bandNameThree = nameThree
        
    }
    
}