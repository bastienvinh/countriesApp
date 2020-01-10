//
//  MyCollecCellOne.swift
//  countriesApp
//
//  Created by Bastien VINH on 08/01/2020.
//  Copyright © 2020 Bastien VINH. All rights reserved.
//

import UIKit

class MyCollecCellOne: UICollectionViewCell {
    
    @IBOutlet weak var roundedIV: RoundedImage!
    
    var country: Country! {
        didSet {
            roundedIV.image = country.flag
            roundedIV.updateRadius(radius: frame.width / 2)
        }
    }
    
}
