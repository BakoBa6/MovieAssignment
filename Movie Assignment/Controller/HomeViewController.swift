//
//  ViewController.swift
//  Movie Assignment
//
//  Created by bako abdullah on 5/6/20.
//  Copyright © 2020 bako abdullah. All rights reserved.
//

import UIKit
import Kingfisher
import SwiftyJSON
class HomeViewController: UIViewController {
    
    let categories = [  MovieCategory(genreID: "28", categoryTitle: "Action")
        ,MovieCategory(genreID: "16", categoryTitle: "Animation")
        ,MovieCategory(genreID: "35", categoryTitle: "Comedy"),
         MovieCategory(genreID: "18", categoryTitle: "Drama"),
         MovieCategory(genreID: "27", categoryTitle: "Horror"),
         MovieCategory(genreID: "10752", categoryTitle: "War")]
    override func viewDidLoad() {
        super.viewDidLoad()
        loadMovieData()
        print("loaded")
    }
    func loadMovieData(){
        //requesting data from API
        APIRequest.sharedAPIRequest.requestData(fromUrl:URLS.AllMoviesURL.url, withParameters: URLS.returnParameters(forType: .AllMoviesURL, withValue: "28")) { [weak self](json) in
            if let json = json{
                self?.parseMovieJSON(json: json)
            }
        }
        
    }
    
    
    private func parseMovieJSON(json:JSON){
        for category in categories{
            JSONParser.sharedParser.parseJSON(fromJSON: json) { [weak self](json) in
                if let json = json{
                    let result = json["results"].arrayValue
                    for i in 0...result.count{
                        let title = json["results"][i]["title"].stringValue
                        let posterPath = json["results"][i]["poster_path"].stringValue
                        let posterURL = "https://image.tmdb.org/t/p/w500/\(posterPath)"
                        let overview = json["results"][i]["overview"].stringValue
                        let dateProduced = json["results"][i]["release_date"].stringValue
                        let rating = json["results"][i]["vote_average"].stringValue
                        let movieId = json["results"][i]["id"].stringValue
                        let movie = self?.getMovie(title: title, posterURL: posterURL, overview: overview, dateProduced: dateProduced, rating: rating, movieId: movieId)
                        self?.addMovieToCategory(movie: movie, toCategory: category)
                    }
                }
            }
           
        }
        
    }
    //get a movie instance
    private func getMovie(title:String,posterURL:String,overview:String, dateProduced:String,rating:String,movieId:String)->Movie{
        let movie = Movie(movieTitle: title, posterUrl: posterURL, rating: rating, overview: overview, dateProduced: dateProduced, movieId: movieId)
        return movie
    }
    private func addMovieToCategory(movie: Movie?,toCategory category:MovieCategory) {
        category.categoryMovies.append(movie!)
    }
}


