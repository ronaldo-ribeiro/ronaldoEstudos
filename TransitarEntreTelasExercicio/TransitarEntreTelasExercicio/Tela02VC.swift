//
//  Tela02VC.swift
//  TransitarEntreTelasExercicio
//
//  Created by Ronaldo Ribeiro on 18/10/22.
//

import UIKit

class Tela02VC: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var lastnameLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var professionLabel: UILabel!
    
    var ronaldo: Pessoa?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = ronaldo?.nome
        lastnameLabel.text = ronaldo?.sobrenome
        ageLabel.text = ronaldo?.idade
        professionLabel.text = ronaldo?.profissao
        
    }
    

}
