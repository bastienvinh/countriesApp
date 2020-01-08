//
//  MyTableView.swift
//  countriesApp
//
//  Created by Bastien VINH on 06/01/2020.
//  Copyright © 2020 Bastien VINH. All rights reserved.
//

import UIKit

class MyTableView: UITableView {

    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    func setup() {
        backgroundColor = .systemIndigo
    }

}
