//
//  ViewController.swift
//  Assignment2
//
//  Created by sarah almaghrabi on 6/9/18.
//  Copyright © 2018 sarah almaghrabi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //View variables
    var model : Model = Model()
    var isLogin: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        model.addUser( user: User.init(name: "test", password: "test", email: "test@test.com"))
        
        print("ViewController---Login status: \(isLogin)")

    }
    
   
    
    @IBAction func createAccount(_ sender: UIButton) {
        performSegue(withIdentifier: "createAccountSegue", sender: self)
    
    }
   
    
    //Pass object model and Login status to LogInController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "loginSegue" {
            if let vc = segue.destination as? LogInController {
                vc.model = model
                vc.isLogin = isLogin
            }
        }
    }
    
    @IBAction func logIn(_ sender: UIButton) {
        performSegue(withIdentifier: "loginSegue", sender: self)
    }
    

    @IBAction func searchButton(_ sender: UIButton) {
        
        performSegue(withIdentifier: "NearestResturantsSegue", sender: self)
        
    }

}

