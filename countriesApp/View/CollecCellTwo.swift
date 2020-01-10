//
//  CollecCellTwo.swift
//  countriesApp
//
//  Created by Bastien VINH on 09/01/2020.
//  Copyright © 2020 Bastien VINH. All rights reserved.
//

import UIKit

class CollecCellTwo: UICollectionViewCell {
    
    @IBOutlet weak var countryLbl: UILabel!
    @IBOutlet weak var flagIV: UIImageView!
    
    var country: Country!
    
    func setupCell(_ country: Country) {
        self.country = country
        self.countryLbl.text = self.country.name
        self.flagIV.image = self.country.flag
        contentView.layer.cornerRadius = 25
        contentView.backgroundColor = UIColor(red: 230 / 255, green: 230 / 255, blue: 230 / 255, alpha: 1)
    }
    
}
