//
//  CarTableViewCell.swift
//  tableVicewCollectionView
//
//  Created by Ronaldo Ribeiro on 07/11/22.
//

import UIKit

class CarTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    static let identifier: String = "CarTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    var data: [String] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        configCollectionView()
    }
    
    func configCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.estimatedItemSize = .zero
        collectionView.collectionViewLayout = layout
        collectionView.register(CarCollectionViewCell.nib(), forCellWithReuseIdentifier: CarCollectionViewCell.identifier)
    }
    
    func setupCell(name: [String], title: String) {
        self.data = name
        self.titleLabel.text = title
    }
    
}

extension CarTableViewCell: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 300)
    }
    
}

extension CarTableViewCell: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CarCollectionViewCell.identifier, for: indexPath) as? CarCollectionViewCell
        cell?.setupCell(nameImage: data[indexPath.row])
        return cell ?? UICollectionViewCell()
    }
    
    
}
