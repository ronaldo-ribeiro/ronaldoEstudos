//
//  ViewController.swift
//  primeiroProjetoTabBar
//
//  Created by Ronaldo Ribeiro on 10/11/22.
//

import UIKit

class Tela01: UIViewController {
    
    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var editPictureButton: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var addButton: UIButton!
    
    @IBOutlet weak var tableView: UITableView!
    
    var data: [DataUser] = []
    let imagePicker: UIImagePickerController = UIImagePickerController()
    var alert: AlertController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alert = AlertController(controller: self)
        configElements()
        configTableView()
        configImagePicker()
    }
    
    func configImagePicker() {
        imagePicker.delegate = self
    }
    
    func configElements() {
        view.backgroundColor = .lightGray
        nameLabel.text = "Nome:"
        profileImageView.contentMode = .scaleAspectFill
        profileImageView.image = UIImage(systemName: "person.circle.fill")
        profileImageView.tintColor = .black
        profileImageView.clipsToBounds = true
        profileImageView.layer.cornerRadius = profileImageView.frame.height / 2
        nameTextField.placeholder = "Digite seu nome:"
    }
    
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UserTableViewCell.nib(), forCellReuseIdentifier: UserTableViewCell.identifier)
        
    }
    
    @IBAction func tappededitPictureButton(_ sender: UIButton) {
        
        self.alert?.chooseImage(completion: { option in
            switch option {
            case .camera:
                if UIImagePickerController.isSourceTypeAvailable(.camera) {
                    self.imagePicker.sourceType = .camera
                } else {
                    self.imagePicker.sourceType = .photoLibrary
                }
                self.present(self.imagePicker, animated: true)
            case .library:
                self.imagePicker.sourceType = .photoLibrary
                self.present(self.imagePicker, animated: true)
            case .cancel:
                break
            }
        })
        
    }
        
        @IBAction func tappedAddButton(_ sender: UIButton) {
            if nameTextField.text == "" {
                self.alert?.alertInformation(title: "Atenção", message: "Por favor, informe o nome!")
            }
            data.append(DataUser(name: nameTextField.text ?? "", image: profileImageView.image ?? UIImage()))
            nameTextField.text = ""
            profileImageView.image = UIImage(systemName: "person.circle.fill")
            tableView.reloadData()
        }
        
    }
    
    extension Tela01: UITableViewDataSource, UITableViewDelegate {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return data.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: UserTableViewCell.identifier, for: indexPath) as? UserTableViewCell
            cell?.setupCell(data: data[indexPath.row])
            return cell ?? UITableViewCell()
        }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 140
        }
        
    }
    
    extension Tela01: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
                self.profileImageView.image = image
            }
            picker.dismiss(animated: true)
        }
    }
    
