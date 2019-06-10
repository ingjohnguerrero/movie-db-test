//
//  ApiEnvironment.swift
//  Movie DB Test
//
//  Created by John Edwin Guerrero Ayala on 6/10/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import Foundation

enum ApiEnvironment: String { case

    production = "https://api.themoviedb.org/3"

    var baseUrl: String {
        return rawValue
    }
}
