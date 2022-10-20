//
//  Tela03VC.swift
//  life-cycle
//
//  Created by Ronaldo Ribeiro on 18/10/22.
//

import UIKit

class Tela03VC: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    var name: String = ""
    var lastName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "\(name) \(lastName)"

        // Do any additional setup after loading the view.
    }
    

}
