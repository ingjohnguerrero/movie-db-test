//
//  MovieCollectionViewCell.swift
//  Movie DB Test
//
//  Created by John Edwin Guerrero Ayala on 6/8/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import UIKit
import Kingfisher

class MovieCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var posterImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!

    private var movie: Movie?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setData(movie: Movie) {
        self.movie = movie
        titleLabel.text = movie.title
        posterImage.kf.setImage(
            with: URL(string: movie.posterImageUrl),
            placeholder: UIImage(named: "posterPlaceholder"),
            options: [.transition(.fade(1)), .loadDiskFileSynchronously]
        )
    }

    override func prepareForReuse() {
        //posterImage = nil
    }
}
