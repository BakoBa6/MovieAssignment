//
//  MovieCategory.swift
//  Movies Asignment
//
//  Created by bako abdullah on 2/3/20.
//  Copyright © 2020 bako abdullah. All rights reserved.
//

import Foundation
class MovieCategory {
    var genreID:String
    var categoryTitle:String
    var categoryMovies:[Movie] = []
    
    init(genreID:String,categoryTitle:String) {
        self.genreID = genreID
        self.categoryTitle = categoryTitle
    }
    
}
