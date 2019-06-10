//
//  Movie.swift
//  Movie DB Test
//
//  Created by John Edwin Guerrero Ayala on 6/9/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import Foundation

struct Movie: Codable {
    var id: Int
    var title: String
    var releaseDate: String
    var overview: String
    var genreIds: [Int]
    var backdropImagePath: String
    var posterImagePath: String

    var posterImageUrl: String {
        get {
            return "https://image.tmdb.org/t/p/w500/\(posterImagePath)"
        }
    }

    var backdropImageUrl: String {
        get {
            return "https://image.tmdb.org/t/p/w500/\(backdropImagePath)"
        }
    }

    init(id: Int,
         title: String,
         releaseDate: String,
         overview: String,
         genreIds: [Int],
         backdropImagePath: String,
         posterImagePath: String) {

        self.id = id
        self.title = title
        self.releaseDate = releaseDate
        self.overview = overview
        self.genreIds = genreIds
        self.backdropImagePath = backdropImagePath
        self.posterImagePath = posterImagePath
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case title
        case releaseDate = "release_date"
        case overview
        case genreIds = "genre_ids"
        case backdropImagePath = "backdrop_path"
        case posterImagePath = "poster_path"
    }
}
