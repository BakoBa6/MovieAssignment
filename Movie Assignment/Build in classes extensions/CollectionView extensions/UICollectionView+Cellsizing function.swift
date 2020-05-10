//
//  UICollectionView+Cellsizing function.swift
//  Movie Assignment
//
//  Created by bako abdullah on 5/8/20.
//  Copyright © 2020 bako abdullah. All rights reserved.
//

import UIKit
extension UICollectionView{
    func setCollectionViewCellSize(width:CGFloat,height:CGFloat){
        let layout = self.collectionViewLayout as? UICollectionViewFlowLayout
        let size = returnSize(width: width, height: height)
        layout?.itemSize = size
    }
    private func returnSize(width:CGFloat,height:CGFloat)->CGSize{
        return CGSize(width: width, height: height)
    }
}
