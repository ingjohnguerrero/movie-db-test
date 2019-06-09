//
//  MovieCollectionViewTests.swift
//  Movie DB TestTests
//
//  Created by John Edwin Guerrero Ayala on 6/8/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import XCTest

@testable import Movie_DB_Test

class MovieCollectionViewTests: XCTestCase {

    var viewController: MovieCollectionModuleViewController!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        viewController = storyboard.instantiateViewController(withIdentifier: "movieCollectionViewController") as? MovieCollectionModuleViewController
        viewController.loadViewIfNeeded()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        viewController = nil
    }

    func test_ViewInstance() {
        XCTAssertNotNil(viewController, "The view is working")
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
