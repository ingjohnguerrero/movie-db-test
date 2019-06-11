//
//  MovieDetailViewTests.swift
//  Movie DB TestTests
//
//  Created by John Edwin Guerrero Ayala on 6/9/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import XCTest

@testable import Movie_DB_Test

class MovieDetailViewTests: XCTestCase {

    var moduleWireframe: MovieDetailModuleWireframe!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        // Put setup code here. This method is called before the invocation of each test method in the class.
        moduleWireframe = MovieDetailModuleWireframe(movieId: 0)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_viewInstance() {
        XCTAssertNotNil(moduleWireframe.viewController, "The view is loading!")
    }

    func test_presenterInstance() {
        let presenter = (moduleWireframe.viewController as! MovieDetailModuleViewController).presenter
        XCTAssertNotNil(presenter, "The presenter is loading!")
    }

}
