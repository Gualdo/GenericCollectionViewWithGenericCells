//
//  CellDescriptor.swift
//  GenericCollectionViewWithGenericCells
//
//  Created by De La Cruz, Eduardo on 06/03/2019.
//  Copyright © 2019 De La Cruz, Eduardo. All rights reserved.
//

import UIKit

struct CellDescriptor {
    let cellClass: UICollectionViewCell.Type
    let reuseIdentifier: String
    let configure: (UICollectionViewCell) -> ()
    
    init<T: UICollectionViewCell>(configure: @escaping (T) -> ()) {
        self.cellClass = T.self
        self.reuseIdentifier = String(describing: T.self)
        self.configure = { cell in
            configure(cell as! T)
        }
    }
}
