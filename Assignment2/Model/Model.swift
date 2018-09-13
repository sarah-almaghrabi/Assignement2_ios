//
//  Model.swift
//  Assignment2
//
//  Created by sarah almaghrabi on 10/9/18.
//  Copyright © 2018 sarah almaghrabi. All rights reserved.
//

import Foundation
class Model{

    var users : [String: User] = [:]

    
    init(){
        //users = ["test@test.com" :  User.init(name: "test", password: "test", email: "test@test.com") ]
       // users[user.email] =  user
   }
 
   
    func addUser( user : User){
        users[user.email] =  user
        
    }
    
    func isUserExisit(email : String) -> Bool {
        return ((users[email] != nil) ? true:false)
    
    }
    func getUser(email : String) -> User {
        return users[email]!
    }
    func updatePass( user : User , pass : String){
        users[user.email]?.password = pass
    }
    
    func getResturants() -> [Resturant]{
        return Data().loadSampleResturant()
    }
    
}
