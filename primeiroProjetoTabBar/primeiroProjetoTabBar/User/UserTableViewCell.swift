//
//  UserTableViewCell.swift
//  primeiroProjetoTabBar
//
//  Created by Ronaldo Ribeiro on 10/11/22.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    @IBOutlet weak var userImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier: String = "UserTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    public func setupCell(data: DataUser) {
        nameLabel.text = data.name
        userImageView.image = data.image
    }
    
}
