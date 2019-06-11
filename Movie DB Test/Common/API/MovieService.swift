//
//  MovieService.swift
//  Movie DB Test
//
//  Created by John Edwin Guerrero Ayala on 6/10/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import Foundation

typealias MovieResult = (_ movie: Movie?, _ error: Error?) -> Void
typealias MoviesResult = (_ movies: [Movie],_ apiMovieResponse: ApiMovie?, _ error: Error?) -> Void
typealias GenresResult = (_ movies: [Genre], _ error: Error?) -> Void

protocol MovieService: class {

    func getMovieGenres(completion: @escaping GenresResult)
    func getMovie(id: Int, completion: @escaping MovieResult)
    func getTopRatedMovies(page: Int, completion: @escaping MoviesResult)
    func getPopularMovies(page: Int, completion: @escaping MoviesResult)
    func getUpcomingMovies(page: Int, completion: @escaping MoviesResult)

}
