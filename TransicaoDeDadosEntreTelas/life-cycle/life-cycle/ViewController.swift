//
//  ViewController.swift
//  life-cycle
//
//  Created by Ronaldo Ribeiro on 11/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var lastNameLabel: UILabel!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(#function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(#function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print(#function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print(#function)
    }

    @IBAction func tappedGoSreen02Button(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Tela02VC", bundle: nil).instantiateViewController(withIdentifier: "Tela02VC") as? Tela02VC
        
        vc?.name = "\(nameTextField.text ?? "") \(lastNameTextField.text ?? "")"
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
    

}

