//
//  NameTableViewCell.swift
//  PrimeiroProjetoTableView
//
//  Created by Ronaldo Ribeiro on 20/10/22.
//

import UIKit

/*
 Criar a célula
 Criar o identifier
 Adicionar identifier na xib
 */



class NameTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier: String = "NameTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    func setupCell(name: String) {
        nameLabel.text = name
        
    }

    
}
