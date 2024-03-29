//
//  MovieCollectionModuleViewController.swift
//  Movie DB Test
//
//  Created by John Edwin Guerrero Ayala on 6/8/19.
//  Copyright (c) 2019 John Edwin Guerrero Ayala. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit
import MaterialComponents.MaterialTabs
import MaterialComponents.MaterialTabs_ColorThemer
import MaterialComponents.MaterialTabs_TypographyThemer

final class MovieCollectionModuleViewController: UIViewController {

    @IBOutlet weak var movieCollectionView: UICollectionView!
    @IBOutlet weak var tabsContainerView: UIView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!

    // MARK: - Public properties -
    var presenter: MovieCollectionModulePresenterInterface!

    // MARK: - Private properties -
    private var tabBar: MDCTabBar!
    private let categoriesArray = ["Top rated", "Popular", "Up coming"]
    private var moviesArray = [Movie]()

    // MARK: - Lifecycle -

    override func viewDidLoad() {
        super.viewDidLoad()
        if presenter == nil {
            initPresenter()
        }
        setTabBar()
        registerCellPrototypes()
        presenter.getMovieList(for: .topRated)
    }

    fileprivate func initPresenter() {
        _ = MovieCollectionModuleWireframe(viewControllerInstance: self)
    }

    // MARK: - Material components -

}

// MARK: - Extensions -

extension MovieCollectionModuleViewController: MovieCollectionModuleViewInterface {
    func startLoading() {
        activityIndicator?.startAnimating()
        movieCollectionView.isHidden = true
        activityIndicator?.isHidden = false
    }

    func finishLoading() {
        activityIndicator?.stopAnimating()
        activityIndicator?.isHidden = true
    }

    func setMoviesList(movieArray: [Movie]) {
        self.moviesArray = movieArray
        movieCollectionView.isHidden = false
        movieCollectionView.reloadData()
    }

    func showErrorView() {

    }

    func showEmptyView() {
        movieCollectionView.isHidden = true
    }

}

extension MovieCollectionModuleViewController: UICollectionViewDelegate, UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailWireframe = MovieDetailModuleWireframe(movieId: moviesArray[indexPath.row].id)
        self.presentWireframe(detailWireframe)
    }

    func registerCellPrototypes() {
        movieCollectionView.register(UINib(nibName: "MovieCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "MovieCollectionViewCell" )
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return moviesArray.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MovieCollectionViewCell", for: indexPath) as! MovieCollectionViewCell
        cell.setData(movie: moviesArray[indexPath.row])
        return cell
    }

}

extension MovieCollectionModuleViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewWidth = collectionView.frame.size.width

        // Calculate the cell size based upon the cell prototype dimensions
        let cellSpacing:CGFloat = 5.0

        let estimatedWidthForCell = (collectionViewWidth / 2) - cellSpacing

        let estimatedHeightForCell = ((355/215) * estimatedWidthForCell)

        let cellSize = CGSize(width: estimatedWidthForCell, height: estimatedHeightForCell)

        return cellSize
    }
}

extension MovieCollectionModuleViewController: MDCTabBarDelegate {
    func tabBar(_ tabBar: MDCTabBar, didSelect item: UITabBarItem) {
        print("Selected tab with index: \(item.tag)")
        presenter.getMovieList(for: MovieCategoryType(rawValue: item.tag)!)
    }

    /// Set up MDCTabBar in order to be used in the view

    private func setTabBar() {
        if tabBar == nil {
            tabBar = MDCTabBar()
            tabBar.alignment = .center
            tabBar.delegate = self
            tabBar.autoresizingMask = [.flexibleWidth, .flexibleBottomMargin]
            tabBar.sizeToFit()
            tabBar.displaysUppercaseTitles = false
            tabBar.frame = tabsContainerView.bounds
            tabsContainerView.addSubview(tabBar)
            DispatchQueue.main.async {
                self.tabBar.setNeedsLayout()
                self.tabBar.layoutIfNeeded()
                self.tabBar.layoutSubviews()
            }

            let colorScheme = MDCSemanticColorScheme()

            colorScheme.primaryColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
            colorScheme.onPrimaryColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
            colorScheme.primaryColorVariant = #colorLiteral(red: 0.1960784314, green: 0.2117647059, blue: 0.2, alpha: 1)
            colorScheme.secondaryColor = colorScheme.primaryColor
            colorScheme.surfaceColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            colorScheme.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)

            MDCTabBarColorThemer.applySemanticColorScheme(colorScheme, toTabs: tabBar)
            MDCTabBarColorThemer.applySurfaceVariant(withColorScheme: colorScheme, toTabs: tabBar)

            let typographyScheme = MDCTypographyScheme()

            MDCTabBarTypographyThemer.applyTypographyScheme(typographyScheme, to: tabBar)
        }

        tabBar.items = [UITabBarItem]()
        tabBar.itemAppearance = .titles

        for(index, categoryTitle) in categoriesArray.enumerated() {
            let tabBarItem = UITabBarItem(title: categoryTitle, image: nil, tag: index)
            tabBar.items.append(tabBarItem)
        }
    }
}
