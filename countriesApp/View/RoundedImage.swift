//
//  RoundedImage.swift
//  countriesApp
//
//  Created by Bastien VINH on 05/01/2020.
//  Copyright © 2020 Bastien VINH. All rights reserved.
//

import UIKit

class RoundedImage: UIImageView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    func setup() {
        self.layer.cornerRadius = self.frame.width / 2
        self.layer.borderColor = UIColor.systemTeal.cgColor
        self.layer.borderWidth = 4
        contentMode = .scaleAspectFill
    }
    
    func updateRadius(radius: CGFloat) {
        layer.cornerRadius = radius
    }

}
