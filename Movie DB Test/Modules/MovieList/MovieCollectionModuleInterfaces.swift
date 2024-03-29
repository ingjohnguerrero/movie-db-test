//
//  MovieCollectionModuleInterfaces.swift
//  Movie DB Test
//
//  Created by John Edwin Guerrero Ayala on 6/8/19.
//  Copyright (c) 2019 John Edwin Guerrero Ayala. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

enum HomeNavigationOption {
    case home
    case details(Int)
}

typealias MoviesServiceResult = (_ apiMovieResponse: ApiMovie?, _ error: Error?) -> Void

protocol MovieCollectionModuleWireframeInterface: WireframeInterface {
}

protocol MovieCollectionModuleViewInterface: ViewInterface {
    func startLoading()
    func finishLoading()
    func setMoviesList(movieArray:[Movie])
    func showErrorView()
    func showEmptyView()
}

protocol MovieCollectionModulePresenterInterface: PresenterInterface {
    func getMovieList(for movieCategoryType: MovieCategoryType)
}

protocol MovieCollectionModuleFormatterInterface: FormatterInterface {
}

protocol MovieCollectionModuleInteractorInterface: InteractorInterface {
    func getMovieList(for movieCategoryType: MovieCategoryType, completion: @escaping MoviesServiceResult)
}
