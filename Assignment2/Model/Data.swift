//
//  Data.swift
//  Assignment2
//
//  Created by sarah almaghrabi on 13/9/18.
//  Copyright © 2018 sarah almaghrabi. All rights reserved.
//


import UIKit

class  Data {
    
    var resturants : [Resturant] = []
    
    func loadSampleResturant() -> [Resturant] {
        
        let photo1 = UIImage(named: "rest1")
        let photo2 = UIImage(named: "rest2")
        let photo3 = UIImage(named: "rest3")
     
        let rest1 = Resturant(name: "Tahinah ", photo: photo1, rating: (3.9), price: "$$", location_lat: (-37.814968), location_long: (144.956818)  )
        
        let rest2 = Resturant(name: "Fish and chips", photo: photo2, rating: (4.2 ), price: "$", location_lat: (-37.810098), location_long: (144.956452) )
        
       
        let rest3 = Resturant(name: "Italian Cousine", photo: photo3, rating: (3.2), price: "$$", location_lat:(-37.819548), location_long: (144.960009)  )
        
        resturants += [rest1, rest2, rest3]
        
        return resturants
    }
    
}
