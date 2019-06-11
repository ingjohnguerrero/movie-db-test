//
//  OnlineSearchModulePresenter.swift
//  Movie DB Test
//
//  Created by John Edwin Guerrero Ayala on 6/10/19.
//  Copyright (c) 2019 John Edwin Guerrero Ayala. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class OnlineSearchModulePresenter {

    // MARK: - Private properties -

    private unowned let view: OnlineSearchModuleViewInterface
    private let interactor: OnlineSearchModuleInteractorInterface
    private let wireframe: OnlineSearchModuleWireframeInterface

    // MARK: - Lifecycle -

    init(view: OnlineSearchModuleViewInterface, interactor: OnlineSearchModuleInteractorInterface, wireframe: OnlineSearchModuleWireframeInterface) {
        self.view = view
        self.interactor = interactor
        self.wireframe = wireframe
    }
}

// MARK: - Extensions -

extension OnlineSearchModulePresenter: OnlineSearchModulePresenterInterface {
    func searchByTitle(term: String) {
        interactor.searchByTitle(term: term) { (apiMovieResponse, _) in
            guard let movieResponse = apiMovieResponse else {
                self.view.showErrorView()
                self.view.finishLoading()
                return
            }

            if !movieResponse.results.isEmpty {
                self.view.setMoviesList(movieArray: movieResponse.results)
            } else {
                self.view.showEmptyView()
            }

            self.view.finishLoading()
        }
    }
}
