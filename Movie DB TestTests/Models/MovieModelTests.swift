//
//  MovieModelTests.swift
//  Movie DB TestTests
//
//  Created by John Edwin Guerrero Ayala on 6/9/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import XCTest

@testable import Movie_DB_Test

class MovieModelTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testMovieInstance() {
        let movie = Movie(
            id: 0,
            title: "My doggy and I",
            releaseDate: "1995-10-20",
            overview: "My awesome movie overview",
            genreIds: [0, 1],
            backdropImagePath: "example.png",
            posterImagePath: "poster.png")
        XCTAssertNotNil(movie, "movie model instanciated")
    }

}
