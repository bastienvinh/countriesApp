//
//  CollectionHeaderReusableView.swift
//  countriesApp
//
//  Created by Bastien VINH on 10/01/2020.
//  Copyright © 2020 Bastien VINH. All rights reserved.
//

import UIKit

class CollectionHeaderReusableView: UICollectionReusableView {

    @IBOutlet weak var headerLbl: UILabel!
    
    var str: String! {
        didSet {
            headerLbl.text = str
        }
    }
    
}
