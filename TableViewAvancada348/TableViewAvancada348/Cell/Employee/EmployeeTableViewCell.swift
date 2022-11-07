//
//  EmployeeTableViewCell.swift
//  TableViewAvancada348
//
//  Created by Ronaldo Ribeiro on 27/10/22.
//

import UIKit

class EmployeeTableViewCell: UITableViewCell {

    @IBOutlet weak var profileImagemView: UIImageView!
    
    @IBOutlet weak var nameEmployeeLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var professionLabel: UILabel!
    
    @IBOutlet weak var wageLabel: UILabel!
    
    static let identifier: String = "EmployeeTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: EmployeeTableViewCell.identifier, bundle: nil)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    func setupCell(profile: Employee) {
        nameEmployeeLabel.text = profile.name
        ageLabel.text = profile.age
        professionLabel.text = profile.profession
        wageLabel.text = profile.salary
        profileImagemView.image = profile.imageUser
    }
    
}
