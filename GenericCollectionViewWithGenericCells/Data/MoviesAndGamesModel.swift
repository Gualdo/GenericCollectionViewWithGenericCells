//
//  MoviesAndGamesModel.swift
//  GenericCollectionViewWithGenericCells
//
//  Created by De La Cruz, Eduardo on 06/03/2019.
//  Copyright © 2019 De La Cruz, Eduardo. All rights reserved.
//

import Foundation

struct MoviesAndGamesModel: DescriptiveProtocol {
    var name: String
    var releaseDate: String
    var image: String
    var actors: [String]?
    var descriptor: CellDescriptor {
        if let actors = actors {
            let cellDescriptor = CellDescriptor { (cell: MovieCollectionViewCell) in
                cell.config(model: MovieModel(title: self.name, releaseYear: self.releaseDate, image: self.image, artistsArray: actors) )
            }
            return cellDescriptor
        } else {
            let cellDescriptor = CellDescriptor { (cell: GameCollectionViewCell) in
                cell.config(model: GameModel(gameName: self.name, gameReleaseDate: self.releaseDate, gameImage: self.image))
            }
            return cellDescriptor
        }
    }
    
    init(name: String, releaseDate: String, image: String, actors: [String]? = nil) {
        self.name = name
        self.releaseDate = releaseDate
        self.image = image
        self.actors = actors
    }
}
