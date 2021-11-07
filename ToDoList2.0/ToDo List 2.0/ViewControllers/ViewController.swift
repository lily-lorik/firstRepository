//
//  ViewController.swift
//  ToDo List 2.0
//
//  Created by Лагода Лілія on 25.10.2021.
//  Copyright © 2021 Лагода Лілія. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {
    
    @IBOutlet weak var toDoListLabel: UILabel!
    @IBOutlet weak var emailTextLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    var resultLabel: UILabel!
    
    let expectedEmail: String = "test@gmail.com"
    let expectedPassword: String = "12341234"
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        
        self.backgroundColor = .blue
        
        resultLabel = UILabel.init()
        resultLabel.text = "ResultLabel"
        resultLabel.frame = CGRect.init(x: 50, y: 50, width: 50, height: 20)
        view.addSubview(resultLabel)
        
        resultLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.init(item: resultLabel!,
                                attribute: .bottom,
                                relatedBy: .equal,
                                toItem: view,
                                attribute: .top,
                                multiplier: 1,
                                constant: 0).isActive = true
        
        NSLayoutConstraint.init(item: resultLabel!,
                                attribute: .centerX,
                                relatedBy: .equal,
                                toItem: view,
                                attribute: .centerX,
                                multiplier: 1,
                                constant: 0).isActive = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier != "fromLoginToTaskList"{
            return true
        }
        
        return LoginCredentials(email: emailTextField.text,
                                password: passwordTextField.text).validate()
    }
    
   


}
