//
//  CarCollectionViewCell.swift
//  tableVicewCollectionView
//
//  Created by Ronaldo Ribeiro on 08/11/22.
//

import UIKit

class CarCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var carImageView: UIImageView!
    
    static let identifier: String = "CarCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        carImageView.contentMode = .scaleAspectFill
    }

    func setupCell(nameImage: String) {
        carImageView.image = UIImage(named: nameImage)
    }
}
