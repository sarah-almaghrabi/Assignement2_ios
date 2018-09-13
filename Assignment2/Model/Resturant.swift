//
//  Resturant.swift
//  Assignment2
//
//  Created by sarah almaghrabi on 11/9/18.
//  Copyright © 2018 sarah almaghrabi. All rights reserved.
//

import UIKit

class Resturant {
    
    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    // var rating: Int
    
    //MARK: Initialization
    
    init?(name: String, photo: UIImage?  ){
        
        // The name must not be empty
        guard !name.isEmpty else {
            return nil
        }
        
        
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        //self.rating = rating
        
    }
}
