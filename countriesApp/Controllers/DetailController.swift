//
//  DetailController.swift
//  countriesApp
//
//  Created by Bastien VINH on 04/01/2020.
//  Copyright © 2020 Bastien VINH. All rights reserved.
//

import UIKit

class DetailController: UIViewController {
    
    var country: Country?

    @IBOutlet weak var iv: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var capitalLbl: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let newCountry = country else { return }
        iv.image = newCountry.flag
        nameLbl.text = newCountry.name
        capitalLbl.text = newCountry.capital
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
