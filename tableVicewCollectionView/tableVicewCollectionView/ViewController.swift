//
//  ViewController.swift
//  tableVicewCollectionView
//
//  Created by Ronaldo Ribeiro on 07/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var carList: [String] = ["car1", "car2", "car3", "car4", "car5", "car6"]
    var bikeList: [String] = ["car5","car6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }

    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CarTableViewCell.nib(), forCellReuseIdentifier: CarTableViewCell.identifier)
    }

}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: CarTableViewCell.identifier, for: indexPath) as? CarTableViewCell
            cell?.setupCell(name: carList, title: "Carro")
            return cell ?? UITableViewCell()
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: CarTableViewCell.identifier, for: indexPath) as? CarTableViewCell
            cell?.setupCell(name: bikeList, title: "Motocicleta")
            return cell ?? UITableViewCell()
        }
    }

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 230
    }
}
