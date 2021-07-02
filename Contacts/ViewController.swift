//
//  ViewController.swift
//  Contacts
//
//  Created by Alina Bikkinina on 02.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nicknameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    
    let nickname = "Fun"
    let password = "Start"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func signInAction(_ sender: Any) {
        guard let nickname = nicknameTextField.text,
              let password = passwordTextField.text
        else { return }
         
        if nickname == self.nickname, password == self.password {
            guard let tableViewController = storyboard?.instantiateViewController(withIdentifier: "TableViewController") as? TableViewController else { return }
            navigationController?.pushViewController(tableViewController, animated: true)
        } else { print("nickname = ", nickname)
            print("password = ", password)
        }
    }
    
}

