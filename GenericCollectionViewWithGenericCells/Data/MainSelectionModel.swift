//
//  MainSelectionModel.swift
//  GenericCollectionViewWithGenericCells
//
//  Created by De La Cruz, Eduardo on 06/03/2019.
//  Copyright © 2019 De La Cruz, Eduardo. All rights reserved.
//

import Foundation

struct MainSelectionModel: DescriptiveProtocol {
    var title: String
    var image: String
    var descriptor: CellDescriptor {
        let cellDescriptor = CellDescriptor { (cell: MainSelectionCollectionViewCell) in
            cell.config(model: self)
        }
        return cellDescriptor
    }
}
