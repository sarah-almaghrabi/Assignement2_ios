//
//  favViewController.swift
//  Assignment2
//
//  Created by Youssra Douhi on 13/09/2018.
//  Copyright © 2018 sarah almaghrabi. All rights reserved.
//

import Foundation
import UIKit

var restaurantList = ["Mc Donald", "Pizza hut", "sushi hub"]

class FavViewController: UIViewController, UITabBarDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var myTabView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(restaurantList.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  UITableViewCell(style: UITableViewCellStyle.default , reuseIdentifier: "cell")
        cell.textLabel?.text = restaurantList[indexPath.row]
        
        return(cell)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            restaurantList.remove(at: indexPath.row)
            myTabView.reloadData()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        myTabView.reloadData()
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
