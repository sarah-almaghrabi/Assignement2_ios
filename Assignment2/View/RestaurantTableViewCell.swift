//
//  RestaurantTableViewCell.swift
//  Foody
//
//  Created by Youssra Douhi on 11/09/2018.
//  Copyright © 2018 Youssra Douhi. All rights reserved.
//

import UIKit

class RestaurantTableViewCell: UITableViewCell {
    
 //   @IBOutlet weak var makerImageView: UIImageView!
  //   @IBOutlet weak var locationLabel: UILabel!

    @IBOutlet weak var restaurantNameLabel: UILabel!
    @IBOutlet weak var restaurantImageView: UIImageView!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
