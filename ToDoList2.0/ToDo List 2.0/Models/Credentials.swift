//
//  Credentials.swift
//  ToDo List 2.0
//
//  Created by Лагода Лілія on 27.10.2021.
//  Copyright © 2021 Лагода Лілія. All rights reserved.
//

import Foundation

class Credentials: CredentialsInterface{
    var email: String?
    var password: String?
    
    init(email: String?, password: String?){
        self.email = email
        self.password = password
    }
    
    func validate() -> Bool {
        if let email = self.email,
            let password = self.password {
            if email.contains("@") {
                if password.count >= 8 {
                    print("Succesful login")
                    return true
                } else {
                    print("Autentification failed. Password must have at least  8 symbols")
                }
            } else{
                print("Autentification failed. Wrong email")
            }
        } else {
            print("Fill in fields")
        }
        return false
    }
}
