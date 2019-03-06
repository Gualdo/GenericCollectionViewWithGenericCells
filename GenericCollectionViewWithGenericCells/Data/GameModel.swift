//
//  GameModel.swift
//  GenericCollectionViewWithGenericCells
//
//  Created by De La Cruz, Eduardo on 06/03/2019.
//  Copyright © 2019 De La Cruz, Eduardo. All rights reserved.
//

import Foundation

struct GameModel: DescriptiveProtocol {
    var gameName: String
    var gameReleaseDate: String
    var gameImage: String
    var descriptor: CellDescriptor {
        let cellDescriptor = CellDescriptor { (cell: GameCollectionViewCell) in
            cell.config(model: self)
        }
        
        return cellDescriptor
    }
}
