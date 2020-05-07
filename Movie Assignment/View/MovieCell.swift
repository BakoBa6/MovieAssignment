//
//  CollectionViewCell.swift
//  Movies Asignment
//
//  Created by bako abdullah on 2/3/20.
//  Copyright © 2020 bako abdullah. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var posterImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 15
    }
    
}
