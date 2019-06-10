//
//  ApiMovie.swift
//  Movie DB Test
//
//  Created by John Edwin Guerrero Ayala on 6/10/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import Foundation

class ApiMovie: Codable {

    var page:Int = 0
    var totalResults:Int = 0
    var totalPages:Int = 0
    var results:[Movie] = []

    enum CodingKeys: String, CodingKey {
        case page
        case totalResults = "total_results"
        case totalPages = "total_pages"
        case results
    }

}
