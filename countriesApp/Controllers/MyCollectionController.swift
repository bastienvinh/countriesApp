//
//  MyCollectionController.swift
//  countriesApp
//
//  Created by Bastien VINH on 08/01/2020.
//  Copyright © 2020 Bastien VINH. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class MyCollectionController: UICollectionViewController {
    
//    var countries: [Country] = CountryGetter().getAllCountries()
    var continents: [Continent] = CountryGetter().getContinents()
    var countrySelected: Country?

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let layout = UICollectionViewFlowLayout()
//        layout.itemSize = CGSize(width: 150, height: 150)
//        layout.minimumLineSpacing = 45
//        layout.minimumInteritemSpacing = 20
//        layout.scrollDirection = .horizontal
        
        collectionView.collectionViewLayout = MyFlowLayout(size: CGSize(width: 150, height: 150), lineSpacing: 45, itemSpacing: 20, direction: .vertical, headerSize: CGSize(width: collectionView.frame.width, height: 75))
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "CollecPush", let next = segue.destination as? DetailController {
            next.country = countrySelected
            
        }
    }
    

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return continents.count
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return continents[section].countries.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollecOne", for: indexPath) as? MyCollecCellOne {
            
            cell.country = continents[indexPath.section].countries[indexPath.item]
            
            return cell
        }
    
        // Configure the cell
    
        return UICollectionViewCell()
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        countrySelected = continents[indexPath.section].countries[indexPath.item]
        performSegue(withIdentifier: "CollecPush", sender: nil)
    }
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "header", for: indexPath) as! CollectionHeaderReusableView
            
            header.str = continents[indexPath.section].name
            return header
        default: return UICollectionReusableView()
        }
        
        
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
