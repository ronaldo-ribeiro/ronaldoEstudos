//
//  Tela02VC.swift
//  life-cycle
//
//  Created by Ronaldo Ribeiro on 18/10/22.
//

import UIKit

class Tela02VC: UIViewController {

    
    @IBOutlet weak var nameLabel: UILabel!
    
    var name: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
        nameLabel.text = name
    

    }
    

}
