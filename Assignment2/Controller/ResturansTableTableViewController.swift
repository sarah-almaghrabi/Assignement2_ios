//
//  ResturansTableTableViewController.swift
//  Assignment2
//
//  Created by sarah almaghrabi on 11/9/18.
//  Copyright © 2018 sarah almaghrabi. All rights reserved.
//

import UIKit

class ResturansTableTableViewController: UITableViewController {

    //MARK: Properties
    var selectedResturant : Int?
    var resturants = Model().getResturants()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
       //   self.navigationItem.rightBarButtonItem = self.editButtonItem
   }

    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resturants.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "RestaurantTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? RestaurantTableViewCell  else {
            fatalError("The dequeued cell is not an instance of ResturantTableViewCell.")
        }
        
        // Fetches the appropriate meal for the data source layout.
        let resturant = resturants[indexPath.row]
        cell.restaurantNameLabel.text = resturant.name
        cell.restaurantImageView.image = resturant.photo
 
        return cell
        }
   
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedResturant = indexPath.row
        performSegue(withIdentifier: "ResDetailsSegue", sender: self)
    }
    
    //Pass selected resturant to DetailsFoodViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "ResDetailsSegue" {
            if let dv = segue.destination as? DetailsFoodViewController {
                dv.resturantID = selectedResturant
            }
        }
    }
    
    
   
    
   
    
}
