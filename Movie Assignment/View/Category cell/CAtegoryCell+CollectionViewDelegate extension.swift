//
//  CAtegoryCell+CollectionViewDelegate extension.swift
//  Movie Assignment
//
//  Created by bako abdullah on 5/8/20.
//  Copyright © 2020 bako abdullah. All rights reserved.
//

import UIKit
extension CategoryCell:UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("tapped")
    }
}
