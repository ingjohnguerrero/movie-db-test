//
//  GenreModelTests.swift
//  Movie DB TestTests
//
//  Created by John Edwin Guerrero Ayala on 6/9/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import XCTest
@testable import Movie_DB_Test

class GenreModelTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testInit() {
        let genre = Genre(id: 0, name: "Action")
        XCTAssertNotNil(genre, "The init worked")
    }

    func testInitSetsId() {
        let genre = Genre(id: 0, name: "Action")
        XCTAssertEqual(genre.id, 0, "The initialization is working")
    }

    func testInitSetsName() {
        let genre = Genre(id: 0, name: "Action")
        XCTAssertEqual(genre.name, "Action", "The initialization is working")
    }

}
