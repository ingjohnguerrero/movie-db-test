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
//        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
//        sut = storyboard.instantiateViewController(withIdentifier: "MovieDetailModuleViewController") as? MovieDetailModuleViewController
//        sut.loadViewIfNeeded()
        moduleWireframe = MovieDetailModuleWireframe()
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

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
