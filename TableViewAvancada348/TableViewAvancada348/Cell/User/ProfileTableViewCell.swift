//
//  ProfileTableViewCell.swift
//  TableViewAvancada348
//
//  Created by Ronaldo Ribeiro on 27/10/22.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    
    static let identifier: String = "ProfileTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: ProfileTableViewCell.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    func setupCell(profile: User) {
        nameLabel.text = profile.name
        profileImageView.image = profile.image
    }

    
}
