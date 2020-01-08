//
//  CellTwo.swift
//  countriesApp
//
//  Created by Bastien VINH on 05/01/2020.
//  Copyright © 2020 Bastien VINH. All rights reserved.
//

import UIKit

class CellTwo: UITableViewCell {

    var country: Country!
    
    
    @IBOutlet weak var flagIV: ShadowView!
    @IBOutlet weak var nameLbl: UILabel!
    
    func setupCell(_ country: Country) {
        self.country = country
        flagIV.image = self.country.flag
        nameLbl.text = self.country.name
        
    }

}
