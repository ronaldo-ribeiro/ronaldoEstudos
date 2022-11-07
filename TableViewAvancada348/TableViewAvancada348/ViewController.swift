//
//  ViewController.swift
//  TableViewAvancada348
//
//  Created by Ronaldo Ribeiro on 27/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let employeeList: [Employee] = Employee(name: "Ronaldo", age: "32", profession: "iOS Dev", salary: "15.000 Euros", imageUser: UIImage(named: "perfil"), isEnableHeart: true)
    
//    let profile: [User] = [
//        User(name: "Ronaldo", image: UIImage(named: "perfil") ?? UIImage()),
//        User(name: "Neto", image: UIImage(named: "perfil") ?? UIImage())
//    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }

    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(ProfileTableViewCell.nib(), forCellReuseIdentifier: ProfileTableViewCell.identifier)
        tableView.register(EmployeeTableViewCell.nib(), forCellReuseIdentifier: EmployeeTableViewCell.identifier)
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profile.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ProfileTableViewCell.identifier, for: indexPath) as? ProfileTableViewCell
        cell?.setupCell(profile: profile[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
    
}
