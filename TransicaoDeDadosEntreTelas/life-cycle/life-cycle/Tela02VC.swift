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
    var lastName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
        nameLabel.text = name
    

    }
    
    @IBAction func tappedGoSreen03Button(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Tela03VC", bundle: nil).instantiateViewController(withIdentifier: "Tela03VC") as? Tela03VC
        
        vc?.name = name
        vc?.lastName = lastName
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
}
