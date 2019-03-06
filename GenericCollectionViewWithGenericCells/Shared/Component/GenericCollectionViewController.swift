//
//  GenericCollectionViewController.swift
//  GenericCollectionViewWithGenericCells
//
//  Created by De La Cruz, Eduardo on 06/03/2019.
//  Copyright © 2019 De La Cruz, Eduardo. All rights reserved.
//

import UIKit

class GenericCollectionViewController<T: DescriptiveProtocol>: UICollectionViewController {
    
    var didSelect: (T) -> () = { _ in }
    private var source: [[T]] = [[T]]()
    var viewsForSection: [UIView]?
    
    init(source: [[T]], title: String, sectionHeaderViews: [UIView]? = nil) {
        self.source = source
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 100, height: 100)
        layout.scrollDirection = .vertical
        super.init(collectionViewLayout: layout)
        self.title = title
        self.viewsForSection = sectionHeaderViews
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life cicle

    override func viewDidLoad() {
        super.viewDidLoad()
        register()
    }
    
    private func register() {
        for item in source {
            Set(item.compactMap({$0.descriptor.reuseIdentifier})).forEach({
                collectionView.register(UINib(nibName: $0, bundle: nil), forCellWithReuseIdentifier: $0)
            })
        }
    }

    // MARK: - UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return source.count
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return source[section].count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let descriptor = source[indexPath.section][indexPath.row].descriptor
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: descriptor.reuseIdentifier, for: indexPath)
        descriptor.configure(cell)
        return cell
    }

    // MARK: UICollectionViewDelegate
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let item = source[indexPath.section][indexPath.row]
        didSelect(item)
    }
}
