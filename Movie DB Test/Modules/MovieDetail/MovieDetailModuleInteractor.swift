//
//  MovieDetailModuleInteractor.swift
//  Movie DB Test
//
//  Created by John Edwin Guerrero Ayala on 6/9/19.
//  Copyright (c) 2019 John Edwin Guerrero Ayala. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import Foundation

final class MovieDetailModuleInteractor {
    let movieService = AlamofireMovieService(context: NonPersistentApiContext(environment: ApiEnvironment.production))
}

// MARK: - Extensions -

extension MovieDetailModuleInteractor: MovieDetailModuleInteractorInterface {
    func getMovieDetails(for movieId: Int, completion: @escaping MovieServiceResult) {
        movieService.getMovie(id: movieId) { (movieResponse, responseError) in
            completion(movieResponse, responseError)
        }
    }

}
