//
//  ViewController.swift
//  TransitarEntreTelasExercicio
//
//  Created by Ronaldo Ribeiro on 18/10/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var lastnameTextField: UITextField!
    
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBOutlet weak var professionTextField: UITextField!
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedScreen02Button(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Tela02VC", bundle: nil).instantiateViewController(withIdentifier: "Tela02VC") as? Tela02VC
        
        let ronaldo = Pessoa(nome: nameTextField.text ?? "", sobrenome: lastnameTextField.text ?? "", idade: ageTextField.text ?? "", profissao: professionTextField.text ?? "")
        
        vc?.ronaldo = ronaldo
        
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
    

}

