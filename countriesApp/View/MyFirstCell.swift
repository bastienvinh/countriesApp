//
//  MyFirstCell.swift
//  countriesApp
//
//  Created by Bastien VINH on 05/01/2020.
//  Copyright © 2020 Bastien VINH. All rights reserved.
//

import UIKit

class MyFirstCell: UITableViewCell {

    @IBOutlet weak var flag: RoundedImage!
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var capitalLbl: UILabel!
    
    var country: Country! {
        didSet {
            flag.image = country.flag
            nameLbl.text = country.name
            capitalLbl.text = country.capital
        }
    }
    
    
}
