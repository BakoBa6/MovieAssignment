//
//  CollectionView + RealodInMainThread Extension.swift
//  Movie Assignment
//
//  Created by bako abdullah on 5/9/20.
//  Copyright © 2020 bako abdullah. All rights reserved.
//

import UIKit
extension UICollectionView{
    func reloadDataInMainThread(){
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
}
