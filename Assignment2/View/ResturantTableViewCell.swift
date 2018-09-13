//
//  ResturantTableViewCell.swift
//  Assignment2
//
//  Created by sarah almaghrabi on 7/9/18.
//  Copyright © 2018 sarah almaghrabi. All rights reserved.
//

import UIKit

class ResturantTableViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var resturantImage: UIImageView!
    
 
     override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
