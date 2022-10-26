//
//  CarBrandsTableViewCell.swift
//  DesafioTableView5Marcas
//
//  Created by Ronaldo Ribeiro on 25/10/22.
//

import UIKit

class CarBrandsTableViewCell: UITableViewCell {

    @IBOutlet weak var carBrandImageView: UIImageView!
    @IBOutlet weak var brandLabel: UILabel!
    
    static let identifier: String = "CarBrandsTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    func setupCell(data: CarBrands) {
        brandLabel.text = data.brand
        carBrandImageView.image = data.image
    }
}
