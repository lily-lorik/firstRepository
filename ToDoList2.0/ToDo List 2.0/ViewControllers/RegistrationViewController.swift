//
//  RegistrationViewController.swift
//  ToDo List 2.0
//
//  Created by Лагода Лілія on 26.10.2021.
//  Copyright © 2021 Лагода Лілія. All rights reserved.
//

import UIKit

class RegistrationViewController: BaseViewController {

    @IBOutlet weak var registrtionTextLabel: UILabel!
    @IBOutlet weak var emailTextLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var registrationButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return Credentials(email: emailTextField.text,
            password:  passwordTextField.text).validate()
    }
    
    @IBAction func registrationAction(_ sender: Any) {
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
