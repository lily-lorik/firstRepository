//
//  ViewController.swift
//  ToDo List
//
//  Created by Лагода Лілія on 24.10.2021.
//  Copyright © 2021 Лагода Лілія. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var confirmEnterButton: UIButton!
    
    var resultLabel: UILabel!
    
    let rightEmail: String = "test@gmail.com"
    let rightPassword: String = "1234qwer5"
    
    @IBAction func loginAction(_ sender: Any){
        print("loginAction")
        if let email = emailField.text,
        let password = passwordField.text{

          if email.contains("@") {
            if password.count >= 8 {
              if email == rightEmail {
                if password == rightPassword {
                  resultLabel.text = "Success"
                } else{
                  resultLabel.text = "Autentification failed. Wrong password"
                }
              } else{
                  resultLabel.text = "Autentification failed. Wrong email"
              }
            } else{
                  resultLabel.text = "Password must have at least  8 symbols"
              }
            }else{
                  resultLabel.text = "The Email adress must have @"
              }
        }else {
                resultLabel.text = "Fill in fields"
              }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        resultLabel = UILabel.init()
        resultLabel.text = "Result label"
        resultLabel.frame = CGRect.init(x:50, y:50, width: 50, height: 20)
        resultLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.init(item: resultLabel!,
                                attribute: .bottom,
                                relatedBy: .equal,
                                toItem: confirmEnterButton,
                                attribute: .top,
                                multiplier: 1,
                                constant: -20).isActive = true
        
        NSLayoutConstraint.init(item: resultLabel!,
                            attribute: .centerX,
                            relatedBy: .equal,
                            toItem: view,
                            attribute: .centerX,
                            multiplier: 1,
                            constant: 0).isActive = true
        view.addSubview(resultLabel)
        // Do any additional setup after loading the view.
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
