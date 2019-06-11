//
//  ApiGenres.swift
//  Movie DB Test
//
//  Created by John Edwin Guerrero Ayala on 6/10/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import UIKit

class ApiGenres: Codable {
    var genres:[Genre]

    private enum CodingKeys: String, CodingKey {
        case genres
    }

}
