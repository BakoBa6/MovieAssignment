//
//  CategoryCollectionViewCell.swift
//  Movies Asignment
//
//  Created by bako abdullah on 2/5/20.
//  Copyright © 2020 bako abdullah. All rights res
import UIKit

class CategoryCell:UICollectionViewCell,UICollectionViewDataSource,UICollectionViewDelegate{
    
    @IBOutlet weak var movieCollectionView: UICollectionView!
    
    
    @IBOutlet weak var sectionName: UILabel!
    
    var category:MovieCategory?
   
    @IBAction func ViewAllPressed(_ sender: UIButton) {

    }
    override func awakeFromNib() {
        super.awakeFromNib()
        movieCollectionView.reloadData()
        movieCollectionView.dataSource = self
        movieCollectionView.delegate = self
        movieCollectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        let width = (contentView.frame.size.width-10)/3
        let height = contentView.frame.size.height*2
        let layout = movieCollectionView.collectionViewLayout as!UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: width, height: height)
        
    }
    //MARK: - collectionView delegate and datasource methods
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    return UICollectionViewCell()
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
    }
    
}
