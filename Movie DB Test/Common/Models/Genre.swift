//
//  Genre.swift
//  Movie DB Test
//
//  Created by John Edwin Guerrero Ayala on 6/9/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import Foundation

struct Genre: Codable {
    let id: Int
    let name: String

    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case name
    }
}
