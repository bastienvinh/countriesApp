//
//  ShadowView.swift
//  countriesApp
//
//  Created by Bastien VINH on 05/01/2020.
//  Copyright © 2020 Bastien VINH. All rights reserved.
//

import UIKit

class ShadowView: UIImageView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayer()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupLayer()
    }
    
    func setupLayer() {
        clipsToBounds = false
        
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowRadius = 4
        self.layer.shadowOpacity = 0.75
        self.layer.shadowOffset = CGSize(width: 2, height: 3)
    }

}
