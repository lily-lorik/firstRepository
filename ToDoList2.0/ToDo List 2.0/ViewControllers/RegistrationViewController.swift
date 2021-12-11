//
//  RegistrationViewController.swift
//  ToDo List 2.0
//
//  Created by Лагода Лілія on 26.10.2021.
//  Copyright © 2021 Лагода Лілія. All rights reserved.
//

import UIKit

class RegistrationViewController: BaseViewController, UITextFieldDelegate {

    @IBOutlet weak var registrtionTextLabel: UILabel!
    @IBOutlet weak var emailTextLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var registrationButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emailTextField.delegate = self
        passwordTextField.delegate = self
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        let credentialController = CredentialController(credentials: Credentials(email: emailTextField.text, password: passwordTextField.text))
        
        do{
            try credentialController.validate()
            try credentialController.checkCredentials()
            return true
        } catch {
            registrtionTextLabel.text = (error as! CredetialsError).description
            return false
        }
    }
    
    @IBAction func registrationAction(_ sender: Any) {
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return true
    }

}
