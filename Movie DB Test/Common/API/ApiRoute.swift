//
//  ApiRoute.swift
//  Movie DB Test
//
//  Created by John Edwin Guerrero Ayala on 6/10/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import Foundation

enum ApiRoute { case

    auth,
    genres,
    movie(id: Int),
    topRated,
    upComing,
    popular,
    onlineSearch

    var path: String {
        switch self {
        case .auth: return "auth"
        case .genres: return "genre/movie/list"
        case .movie(let id): return "movie/\(id)"
        case .topRated: return "movie/top_rated"
        case .upComing: return "movie/upcoming"
        case .popular: return "movie/popular"
        case .onlineSearch: return "search/movie"
        }
    }

    func url(for environment: ApiEnvironment) -> String {
        return "\(environment.baseUrl)/\(path)"
    }
}
