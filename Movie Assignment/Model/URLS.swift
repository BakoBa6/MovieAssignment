//
//  URLS.swift
//  Movie Assignment
//
//  Created by bako abdullah on 5/6/20.
//  Copyright © 2020 bako abdullah. All rights reserved.
//

import Foundation
enum URLS:String {
    case AllMoviesURL
    var url:URL {
        switch self{
        case .AllMoviesURL:
            return URL(string: "https://api.themoviedb.org/3/movie/popular")!
            
           }
       
        }
    static func returnParameters(forType type:URLS,withValue value:String)->[String:String]{
               switch type {
               case .AllMoviesURL:
                   return ["api_key":"8460d476d21be7e26a99234d8ca8de51","sort_by":"false", "page" : "1","include_video":"false","with_genres": "\(value)"]
               
               }
    }
}

