//
//  User.swift
//  Assignment2
//
//  Created by sarah almaghrabi on 10/9/18.
//  Copyright © 2018 sarah almaghrabi. All rights reserved.
//

import Foundation
class User{
    var name:String = ""
    var password:String = ""
    var email:String = ""
    var favList : [String : Resturant] = [:]
    init() {
        
    }
    
    init(name:String,password:String,email:String) {
        self.name = name
        self.password = password
        self.email = email
    }
    
    func addToFavList(resturant : Resturant ){
        favList[resturant.name] = resturant
    }
}
