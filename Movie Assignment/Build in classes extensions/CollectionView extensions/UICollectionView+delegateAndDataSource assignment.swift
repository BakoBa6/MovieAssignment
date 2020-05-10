//
//  UICollectionView+delegateAndDataSource assignment.swift
//  Movie Assignment
//
//  Created by bako abdullah on 5/8/20.
//  Copyright © 2020 bako abdullah. All rights reserved.
//

import UIKit
extension UICollectionView{
    func setDelegateAndDatasource<T:AnyObject>(toObject object:T){
        self.delegate = object.self as? UICollectionViewDelegate
        self.dataSource = object.self as? UICollectionViewDataSource
    }
}
