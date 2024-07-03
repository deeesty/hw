//
//  SecondViewController.swift
//  SecondHomework
//
//  Created by Наиль on 03.07.2024.
//

import UIKit

class SecondViewController: UIViewController {
    var name: String?

    let adminProfile = ["admin", "09.04.1994"]
    let userProfile = ["user", "18.07.1996"]
    
    @IBOutlet weak var profileInfo: UILabel!
    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var dateOfBirthLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if name==adminProfile[0]{
            nameLabel.text = adminProfile[0]
            dateOfBirthLabel.text = adminProfile[1]
        }
        else{
            nameLabel.text = userProfile[0]
            dateOfBirthLabel.text = userProfile[1]
        }
    }

}

