//
//  CustomTabBarController.swift
//  MyLocations
//
//  Created by akhilesh kalaru on 4/1/15.
//  Copyright (c) 2015 mwsu. All rights reserved.
//

import Foundation
import UIKit

class LatLng{
    var LatVal:Double=0.0
    var LngVal:Double=0.0
}

class CustomTabBarController: UITabBarController {
    
    // Instantiate the one copy of the model data that will be accessed
    // by all of the tabs.
   // var model = ModelData()
    var Position=LatLng()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
}
