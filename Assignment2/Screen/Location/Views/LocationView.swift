//
//  LocationView.swift
//  Foody
//
//  Created by Youssra Douhi on 11/09/2018.
//  Copyright © 2018 Youssra Douhi. All rights reserved.
//

import UIKit
import CoreLocation

@IBDesignable class LocationView: BaseView {
    
    @IBOutlet weak var allowButton: UIButton!
    @IBOutlet weak var denyButton: UIButton!
    
    let locationManager = CLLocationManager()
    
    func setupLocationManager() {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
    }
    
    func checkLocationServices()
    {
        if CLLocationManager.locationServicesEnabled() {
            
            setupLocationManager()
            
        } else {
            // show alerte to user to turn your location on
        }
    }

    @IBAction func allowAction (_sender: UIButton)
    {
        locationManager.requestWhenInUseAuthorization()
        
        
        
    }
    
    @IBAction func denyAction (_sender: UIButton)
    {
        
    }

}

extension LocationView: CLLocationManagerDelegate {
    
    func locationManager(_ manager:CLLocationManager, didUpdateLocations locations: [CLLocation]){
        // we'll be back
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        //we'll be back
    }
    
    }

