//
//  AlamofireMovieService.swift
//  Movie DB Test
//
//  Created by John Edwin Guerrero Ayala on 6/10/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import Foundation
import Alamofire

class AlamofireMovieService: AlamofireService, MovieService {
    func searchMovieBy(title: String, completion: @escaping MoviesResult) {
        getRequest(at: .onlineSearch, params: ["query": title]).responseDecodable(completionHandler: { (response: DataResponse<ApiMovie>) in
            var movies = [Movie]()

            switch response.result {
            case .success(let value):
                movies = value.results
                completion(movies, value, nil)

            case .failure(let responseError):
                completion(movies, nil, responseError)
            }
        })
    }

    func getTopRatedMovies(page: Int = 1, completion: @escaping MoviesResult) {
        getRequest(at: .topRated, params: ["page": page]).responseDecodable(completionHandler: { (response: DataResponse<ApiMovie>) in
            var movies = [Movie]()

            switch response.result {
            case .success(let value):
                movies = value.results
                completion(movies, value, nil)

            case .failure(let responseError):
                completion(movies, nil, responseError)
            }
        })
    }

    func getMovieGenres(completion: @escaping GenresResult) {
        getRequest(at: .genres).responseDecodable(completionHandler: { (response: DataResponse<ApiGenres>) in
            var genres = [Genre]()

            switch response.result {
            case .success(let value):
                genres = value.genres
                completion(genres, nil)

            case .failure(let responseError):
                completion(genres, responseError)

            }
        })
    }

    func getMovie(id: Int, completion: @escaping MovieResult) {
        getRequest(at: .movie(id: id)).responseDecodable(completionHandler: { (response: DataResponse<Movie>) in
            var movie:Movie?

            switch response.result {
            case .success(let value):
                movie = value
                completion(movie, nil)

            case .failure(let responseError):
                completion(movie, responseError)

            }
        })
    }

    func getPopularMovies(page: Int = 1, completion: @escaping MoviesResult) {
        getRequest(at: .popular, params: ["page": page]).responseDecodable(completionHandler: { (response: DataResponse<ApiMovie>) in
            var movies = [Movie]()

            switch response.result {
            case .success(let value):
                movies = value.results
                completion(movies, value, nil)

            case .failure(let responseError):
                completion(movies, nil, responseError)
            }
        })
    }

    func getUpcomingMovies(page: Int = 1, completion: @escaping MoviesResult) {
        getRequest(at: .upComing, params: ["page": page]).responseDecodable(completionHandler: { (response: DataResponse<ApiMovie>) in
            var movies = [Movie]()

            switch response.result {
            case .success(let value):
                movies = value.results
                completion(movies, value, nil)

            case .failure(let responseError):
                completion(movies, nil, responseError)
            }
        })
    }
}
