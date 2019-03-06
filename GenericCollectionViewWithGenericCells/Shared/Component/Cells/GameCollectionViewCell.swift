//
//  GameCollectionViewCell.swift
//  GenericCollectionViewWithGenericCells
//
//  Created by De La Cruz, Eduardo on 06/03/2019.
//  Copyright © 2019 De La Cruz, Eduardo. All rights reserved.
//

import UIKit

final class GameCollectionViewCell: UICollectionViewCell {
    
    func config(model: GameModel) {
        gameNameLabel.text = model.gameName
        gameReleaseDateLabel.text = model.gameReleaseDate
        gameImageView.image = UIImage(named: model.gameImage)
    }
}
