//
//  MovieCollectionViewCell.swift
//  GenericCollectionViewWithGenericCells
//
//  Created by De La Cruz, Eduardo on 06/03/2019.
//  Copyright © 2019 De La Cruz, Eduardo. All rights reserved.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    func config(model: MovieModel) {
        movieTitleLabel.text = model.title
        movieReleaseYear.text = model.releaseYear
        movieImageView.image = UIImage(named: model.image)
        
        for view in movieArtistsStackView.subviews {
            movieArtistsStackView.removeArrangedSubview(view)
            view.removeFromSuperview()
        }
        
        for artist in model.artistsArray {
            let artistLabel = UILabel()
            artistLabel.text = artist
            movieArtistsStackView.addArrangedSubview(artistLabel)
        }
    }
}
