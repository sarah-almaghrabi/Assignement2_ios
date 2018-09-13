//
//  BaseView.swift
//  Foody
//
//  Created by Youssra Douhi on 11/09/2018.
//  Copyright © 2018 Youssra Douhi. All rights reserved.
//

import UIKit


@IBDesignable class BaseView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configure()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.configure()
    }
    
    func configure()
    {
        
    }
    
    
}
