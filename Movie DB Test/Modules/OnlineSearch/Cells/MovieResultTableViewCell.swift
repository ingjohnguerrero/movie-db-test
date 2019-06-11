//
//  MovieResultTableViewCell.swift
//  Movie DB Test
//
//  Created by John Edwin Guerrero Ayala on 6/10/19.
//  Copyright © 2019 John Edwin Guerrero Ayala. All rights reserved.
//

import UIKit

class MovieResultTableViewCell: UITableViewCell {

    @IBOutlet weak var posterImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!

    fileprivate var movie: Movie?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setData(movie: Movie) {
        self.movie = movie
        titleLabel.text = movie.title
        releaseDateLabel.text = "Release date: \(movie.releaseDate)"
        posterImage.kf.setImage(
            with: URL(string: movie.posterImageUrl),
            placeholder: UIImage(named: "posterPlaceholder"),
            options: [.transition(.fade(1)), .loadDiskFileSynchronously]
        )
    }

}
