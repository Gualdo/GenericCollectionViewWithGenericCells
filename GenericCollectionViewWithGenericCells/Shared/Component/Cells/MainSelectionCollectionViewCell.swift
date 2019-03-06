//
//  MainSelectionCollectionViewCell.swift
//  GenericCollectionViewWithGenericCells
//
//  Created by De La Cruz, Eduardo on 06/03/2019.
//  Copyright © 2019 De La Cruz, Eduardo. All rights reserved.
//

import UIKit

class MainSelectionCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var mainSelectionTitleLabel: UILabel!
    @IBOutlet weak var mainSelectionImageView: UIImageView!
    
    func config(model: MainSelectionModel) {
        mainSelectionTitleLabel.text = model.title
        mainSelectionImageView.image = UIImage(named: model.image)
    }
}
