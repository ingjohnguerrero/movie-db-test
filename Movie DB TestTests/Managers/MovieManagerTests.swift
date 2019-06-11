//
//  MovieManagerTests.swift
//  Movie DB TestTests
//
//  Created by John Edwin Guerrero Ayala on 6/9/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import XCTest
@testable import Movie_DB_Test

class MovieManagerTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testMovieListInteractorInit() {
        let movieManager = MovieCollectionModuleInteractor()
        XCTAssertNotNil(movieManager)
    }

}
