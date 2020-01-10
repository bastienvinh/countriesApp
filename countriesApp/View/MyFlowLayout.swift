//
//  MyFlowLayout.swift
//  countriesApp
//
//  Created by Bastien VINH on 09/01/2020.
//  Copyright © 2020 Bastien VINH. All rights reserved.
//

import UIKit

class MyFlowLayout: UICollectionViewFlowLayout {
    
    override init() {
        super.init()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    init(size: CGSize, lineSpacing: CGFloat, itemSpacing: CGFloat, direction: UICollectionView.ScrollDirection, headerSize : CGSize?) {
        super.init()
        itemSize = size
        minimumLineSpacing = lineSpacing
        minimumInteritemSpacing = itemSpacing
        scrollDirection = direction
        headerReferenceSize = headerSize ?? CGSize(width: 0, height: 0)
    }
}
