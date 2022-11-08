//
//  CustomCollectionViewCell.swift
//  PrimeiroProjetoCollectionView2
//
//  Created by Ronaldo Ribeiro on 07/11/22.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var carImageView: UIImageView!
    
    
    
    static let identifier: String = "CustomCollectionViewCell"
    
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
