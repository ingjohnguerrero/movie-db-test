//
//  Contants.swift
//  Movie DB Test
//
//  Created by John Edwin Guerrero Ayala on 6/10/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import Foundation

struct Constants {
    struct API {
        static let AuthorizationHeader = "Authorization"
        static let URLBase = URL(string: "https://api.themoviedb.org/3")!
        static let ApiKey = "b56c41fd645593b31df96ee185296c4c"
        static let Language = "en-US"
        static let Region = "US"
        static let baseParameters = [
            "api_key" : "b56c41fd645593b31df96ee185296c4c" as Any,
            "language" : "en-US" as Any,
            "region" : "US" as Any
        ]
        static let GenrePath = "genre/movie/list"
    }

}
