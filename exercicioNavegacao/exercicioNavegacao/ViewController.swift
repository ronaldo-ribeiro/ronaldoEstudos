//
//  ViewController.swift
//  exercicioNavegacao
//
//  Created by Ronaldo Ribeiro on 06/10/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }
   
    @IBAction func tappedButton(_ sender: UIButton) {
        performSegue(withIdentifier: "buttonToScreen02", sender: nil)
    }
    


}

