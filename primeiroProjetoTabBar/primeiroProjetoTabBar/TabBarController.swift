//
//  TabBarController.swift
//  primeiroProjetoTabBar
//
//  Created by Ronaldo Ribeiro on 10/11/22.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configItens()
        configTabBar()
    }
    
    func configItens() {
        guard let items = tabBar.items else { return }
        items[0].title = "Tela 01"
        items[0].image = UIImage(systemName: "person")
        
        items[1].title = "Tela 02"
        items[1].image = UIImage(systemName: "phone.fill")
        
        items[2].title = "Tela 03"
        items[2].image = UIImage(systemName: "trash.fill")
    }

    func configTabBar() {
        tabBar.layer.borderWidth = 0.5
        tabBar.layer.borderColor = UIColor.black.cgColor
        tabBar.backgroundColor = .white
    }
}
