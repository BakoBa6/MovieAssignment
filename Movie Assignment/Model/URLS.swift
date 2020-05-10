//
//  URLS.swift
//  Movie Assignment
//
//  Created by bako abdullah on 5/6/20.
//  Copyright © 2020 bako abdullah. All rights reserved.
//

import Foundation
enum URLS:String {
    case AllMoviesURL = "https://api.themoviedb.org/3/movie/popular"
    case moviePosterURL = "https://image.tmdb.org/t/p/w500/"
    //get the parameters for the url request of the chosen enum case
    static func returnParameters(forType type:URLS,withValue value:String)->[String:String]{
        switch type {
        case .AllMoviesURL:
            return ["api_key":"8460d476d21be7e26a99234d8ca8de51","sort_by":"false", "page" : "1","include_video":"false","primary_release_date.gte":"2019-01-01","with_genres": "\(value)"]
        case .moviePosterURL:
            return [:]
        }
    }
    // get the url of the chosen enum case
    static func getURLFromEnumRawValue(forType type:URLS,withAdditionalValue additionalValue:String? = nil)->URL{
        switch type {
        case .AllMoviesURL:
            return URL(string: type.rawValue )!
        case .moviePosterURL:
            if let additionalValue = additionalValue{
                return URL(string: String(describing:"\(type.rawValue)\(additionalValue))"))!
            }else{
                return URL(string: type.rawValue)!
            }
        }
        
    }
    //return the string value of the chosen enum case url
    static func getUrlStringForEnumCase(forType type:URLS,withAdditionalValue additionalValue:String? = nil)->String{
        switch type {
        case .AllMoviesURL:
            return type.rawValue
        case .moviePosterURL:
            if let additionalValue = additionalValue{
                return String(describing:type.rawValue+additionalValue)
            }else{
                return type.rawValue
            }
            
        }
    }
}

