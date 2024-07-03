//
//  ViewController.swift
//  SecondHomework
//
//  Created by Наиль on 03.07.2024.
//

import UIKit

let usersDataBase = [(username: "admin", password: "admin"), (username: "user", password: "user")]

class ViewController: UIViewController {
    
    func accessibilityCheck(){
        let warning = UIAlertController(title: "Неверное имя пользователя или пароль", message: "Попробуйте ввести данные заново", preferredStyle: .alert)
        warning.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        self.present(warning, animated: true)
    }
    
    func access(username: String?, password: String?) -> String? {
        for usr in usersDataBase{
            if usr.username==username && usr.password==password{
                return usr.username
            }
        }
        return nil
    }
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func logging(_ sender: UIButton){
        let accessed = access(username: usernameTextField.text, password: passwordTextField.text)
        if accessed == nil{
            accessibilityCheck()
        }
        else{
            performSegue(withIdentifier: "profileView", sender: self)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "profileView" {
            guard let dest = segue.destination as? SecondViewController else { return }
            dest.name = usernameTextField.text
        }
    }


}

