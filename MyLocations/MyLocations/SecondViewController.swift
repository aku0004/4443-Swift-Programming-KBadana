//
//  SecondViewController.swift
//  MyLocations
//
//  Created by Terry Griffin on 3/24/15.
//  Copyright (c) 2015 mwsu. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class SecondViewController: UIViewController {
    
    
    var latVal:Double=0
    var lngVal:Double=0

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        let PostnVal = (self.tabBarController as CustomTabBarController).Position
        latVal=PostnVal.LatVal
        lngVal=PostnVal.LngVal
        println("******************")
        println(latVal)
        println(lngVal)
        println("******************")
        // 1
        let location = CLLocationCoordinate2D(
            latitude: latVal,//51.50007773,
            longitude: lngVal
        )
        // 2
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
        
        //3
        let annotation = MKPointAnnotation()
        annotation.setCoordinate(location)
        annotation.title = "Big Ben"
        annotation.subtitle = "London"
        mapView.addAnnotation(annotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

