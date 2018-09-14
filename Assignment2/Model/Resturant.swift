//
//  Resturant.swift
//  Assignment2
//
//  Created by sarah almaghrabi on 11/9/18.
//  Copyright © 2018 sarah almaghrabi. All rights reserved.
//

import UIKit
import MapKit
class Resturant {
    
    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating : Float
    var price : String
    var location_lat : Double
    var location_long : Double
    let coordinate: CLLocationCoordinate2D
    // var rating: Int
    
    //MARK: Initialization
    
    init(name: String, photo: UIImage? ,  rating :  Float , price : String , location_lat : Double ,location_long : Double ){
        
        
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.rating = rating
        self.price = price
        self.location_lat = location_lat
        self.location_long = location_long
        self.coordinate = CLLocationCoordinate2D(latitude: location_lat, longitude:  location_long)
        
    }
}
