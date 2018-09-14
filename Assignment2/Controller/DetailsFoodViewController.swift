//
//  DetailsFoodViewController.swift
//  Foody
//
//  Created by Youssra Douhi on 11/09/2018.
//  Copyright © 2018 Youssra Douhi. All rights reserved.
//

import UIKit
import MapKit

class DetailsFoodViewController: UIViewController {
 var artworks: [Artwork] = []
    var resturantID : Int?
    @IBOutlet weak var resName: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var rating: UILabel!
    @IBOutlet weak var location: UILabel!
    
    @IBOutlet weak var restMapView: MKMapView!
    let regionRadius: CLLocationDistance = 1000

    var resturant : Resturant?
    override func viewDidLoad() {
        super.viewDidLoad()
         resturant = Model().getResturants()[ resturantID! ]
        resName .text = resturant?.name
        price.text =  resturant?.price
        rating.text =  NSString(format: "%.2f", (resturant?.rating)!) as String
        let temp = String(format:"%f", (resturant?.location_lat)!) +
            String(format:"%f", (resturant?.location_long)!)
        location.text = temp
        
        
        
        // set initial location for the map
        let initialLocation =  CLLocation (latitude: (resturant?.location_lat)!, longitude: (resturant?.location_long)!)
        centerMapOnLocation(location: initialLocation)
        
        restMapView.addAnnotations(artworks)
        // show the location on map
        let artwork = Artwork(title: (resturant?.name)!,
                              coordinate: CLLocationCoordinate2D(latitude: (resturant?.location_lat)!,  longitude: (resturant?.location_long)!))
        restMapView.addAnnotation(artwork)
        
        
        
    
    }
    
  
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        checkLocationAuthorizationStatus()
    }
    
    // MARK: - CLLocationManager
    
    let locationManager = CLLocationManager()
    func checkLocationAuthorizationStatus() {
        if CLLocationManager.authorizationStatus() == .authorizedAlways {
            restMapView.showsUserLocation = true
        } else {
            locationManager.requestAlwaysAuthorization()
        }
    }
    
    // MARK: - Helper methods
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                  regionRadius, regionRadius)
        restMapView.setRegion(coordinateRegion, animated: true)
    }
    
    
}


    

 



