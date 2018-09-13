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
        
        guard let rest1 = Resturant(name: "Tahinah ", photo: photo1 ) else {
            fatalError("Unable to instantiate resturant")
        }
        
        guard let rest2 = Resturant(name: "Fish and Ships", photo: photo2) else {
            fatalError("Unable to instantiate resturant")
        }
        
        guard let rest3 = Resturant(name: "Italian Cousine", photo: photo3) else {
            fatalError("Unable to instantiate resturant")
        }
        
        resturants += [rest1, rest2, rest3]
        
        return resturants
    }
    
}
