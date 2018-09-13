//
//  DetailsFoodViewController.swift
//  Foody
//
//  Created by Youssra Douhi on 11/09/2018.
//  Copyright © 2018 Youssra Douhi. All rights reserved.
//

import UIKit

class DetailsFoodViewController: UIViewController {

    var resturantID : Int?
    @IBOutlet weak var resName: UILabel!
    @IBOutlet weak var name: UILabel!
    var resturant : Resturant?
    override func viewDidLoad() {
        super.viewDidLoad()

        resturant = Model().getResturants()[ resturantID! ]
        resName .text = resturant?.name
        
    }
    
    


}
