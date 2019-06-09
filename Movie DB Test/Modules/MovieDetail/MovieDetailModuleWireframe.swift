//
//  MovieDetailModuleWireframe.swift
//  Movie DB Test
//
//  Created by John Edwin Guerrero Ayala on 6/9/19.
//  Copyright (c) 2019 John Edwin Guerrero Ayala. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class MovieDetailModuleWireframe: BaseWireframe {

    // MARK: - Private properties -

    private let storyboard = UIStoryboard(name: "Main", bundle: nil)

    // MARK: - Module setup -

    init() {
        let moduleViewController = storyboard.instantiateViewController(ofType: MovieDetailModuleViewController.self)
        super.init(viewController: moduleViewController)

        let formatter = MovieDetailModuleFormatter()
        let interactor = MovieDetailModuleInteractor()
        let presenter = MovieDetailModulePresenter(view: moduleViewController, formatter: formatter, interactor: interactor, wireframe: self)
        moduleViewController.presenter = presenter
    }

}

// MARK: - Extensions -

extension MovieDetailModuleWireframe: MovieDetailModuleWireframeInterface {
    func navigate(to option: DetailsNavigationOption) {
        switch option {
        case .back:
            _closeDetailView()
        }

    }

    private func _closeDetailView() {
        self.viewController.dismiss(animated: true, completion: {

        })
    }

}