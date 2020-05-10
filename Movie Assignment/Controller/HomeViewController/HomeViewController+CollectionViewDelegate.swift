//
//  HomeViewController+CollectionViewDelegate.swift
//  Movie Assignment
//
//  Created by bako abdullah on 5/7/20.
//  Copyright © 2020 bako abdullah. All rights reserved.
//

import UIKit
extension HomeViewController:UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("tapped")
    }
}
