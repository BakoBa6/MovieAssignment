//
//  HomeViewController+CollectionViewDatasource.swift
//  Movie Assignment
//
//  Created by bako abdullah on 5/8/20.
//  Copyright © 2020 bako abdullah. All rights reserved.
//

import UIKit
extension HomeViewController:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        if selectedCategory != nil{
            return 1
        }else{
         return categories.count
        }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let categoryCell = categoryCollectionView.dequeueReusableCell(withReuseIdentifier: "categoryCell", for: indexPath) as! CategoryCell
        categoryCell.categoryTitleLabel.text = getCategoryTitle(forIndexPath: indexPath)
        if let selectedCategory = selectedCategory{
            categoryCell.category = selectedCategory
            categoryCell.categoryTitleLabel.text = selectedCategory.categoryTitle
        }else{
            categoryCell.category = categories[indexPath.item]
            categoryCell.categoryTitleLabel.text = categories[indexPath.item].categoryTitle
        }
        categoryCell.movieCollectionView.reloadData()
        categoryCell.movieCollectionView.setCollectionViewCellSize(width: getDesiredWidth(), height: getDesiredHeight())
        return categoryCell
    }
    //MARK: - helper methodes
    private func getCategoryTitle(forIndexPath indexPath:IndexPath)->String{
        return categories[indexPath.item].categoryTitle
    }
    private func getDesiredWidth()->CGFloat{
        let width = (view.frame.size.width-10)/3
        return width
    }
    private func getDesiredHeight()->CGFloat{
        let height = view.frame.size.height/4
        return height
    }
}
