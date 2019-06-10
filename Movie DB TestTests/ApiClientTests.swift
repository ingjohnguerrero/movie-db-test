//
//  ApiClientTests.swift
//  Movie DB TestTests
//
//  Created by John Edwin Guerrero Ayala on 6/10/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import XCTest

@testable import Movie_DB_Test

class ApiClientTests: XCTestCase {

    var apiMovieService : MovieService?

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let environtment = ApiEnvironment.production
        let context = NonPersistentApiContext(environment: environtment)
        apiMovieService = AlamofireMovieService(context: context)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        apiMovieService = nil
    }

    func testServiceInit() {
        XCTAssertNotNil(apiMovieService, "The instance is working")
    }

    func testGetGenres() {
        let genresExpectation = expectation(description: "genres array response expected")
        var genresArray = [Genre]()
        apiMovieService?.getMovieGenres(completion: { (genresResponse, responseError) in
            if let error = responseError {
                XCTFail("Error in genres API: \(String(describing: error))")
                genresExpectation.fulfill()
            }
            debugPrint(genresResponse as Any)

            genresArray = genresResponse

            genresExpectation.fulfill()
        })

        waitForExpectations(timeout: 1) { (_) in
            XCTAssertNotEqual(0, genresArray.count)
        }
    }

    func testGetTopRatedMovies() {
        let topRatedExpectation = expectation(description: "top rated movies array response expected")
        var moviesArray = [Movie]()
        apiMovieService?.getTopRatedMovies(page: 2, completion: { (moviesResponseArray, _, responseError) in
            if let error = responseError {
                XCTFail("Error in top rated movies API: \(String(describing: error))")
                topRatedExpectation.fulfill()
            }
            debugPrint(moviesResponseArray as Any)

            moviesArray = moviesResponseArray

            topRatedExpectation.fulfill()
        })

        waitForExpectations(timeout: 1) { (_) in
            XCTAssertNotEqual(0, moviesArray.count)
        }
    }

    func testGetPopularMovies() {
        let popularExpectation = expectation(description: "popular movies array response expected")
        var moviesArray = [Movie]()
        apiMovieService?.getPopularMovies(page: 2, completion: { (moviesResponseArray, _, responseError) in
            if let error = responseError {
                XCTFail("Error in popular movies API: \(String(describing: error))")
                popularExpectation.fulfill()
            }
            debugPrint(moviesResponseArray as Any)

            moviesArray = moviesResponseArray

            popularExpectation.fulfill()
        })

        waitForExpectations(timeout: 1) { (_) in
            XCTAssertNotEqual(0, moviesArray.count)
        }
    }

    func testGetUpcomingMovies() {
        let upcomingExpectation = expectation(description: "upcoming movies array response expected")
        var moviesArray = [Movie]()
        apiMovieService?.getPopularMovies(page: 2, completion: { (moviesResponseArray, _, responseError) in
            if let error = responseError {
                XCTFail("Error in upcoming movies API: \(String(describing: error))")
                upcomingExpectation.fulfill()
            }
            debugPrint(moviesResponseArray as Any)
            
            moviesArray = moviesResponseArray
            
            upcomingExpectation.fulfill()
        })
        
        waitForExpectations(timeout: 1) { (_) in
            XCTAssertNotEqual(0, moviesArray.count)
        }
    }

}
