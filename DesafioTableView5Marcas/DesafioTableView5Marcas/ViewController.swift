//
//  ViewController.swift
//  DesafioTableView5Marcas
//
//  Created by Ronaldo Ribeiro on 25/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
//    var listBrands: [String] = ["BMW", "Renault", "Honda", "Citroen", "Kia"]
    
    var data: [CarBrands] = [
        CarBrands(brand: "BMW", image: UIImage(named: "bmw") ?? UIImage()),
        CarBrands(brand: "Renault", image: UIImage(named: "renault") ?? UIImage()),
        CarBrands(brand: "Honda", image: UIImage(named: "honda") ?? UIImage()),
        CarBrands(brand: "Citroen", image: UIImage(named: "citroen") ?? UIImage()),
        CarBrands(brand: "Kia", image: UIImage(named: "kia") ?? UIImage()),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }

    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CarBrandsTableViewCell.nib(), forCellReuseIdentifier: CarBrandsTableViewCell.identifier)
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CarBrandsTableViewCell.identifier, for: indexPath) as? CarBrandsTableViewCell
        cell?.setupCell(data: data[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("A marca selecionada foi: \(data[indexPath.row])")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    
}
