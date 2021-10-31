//
//  LoginCredentials.swift
//  ToDo List 2.0
//
//  Created by Лагода Лілія on 31.10.2021.
//  Copyright © 2021 Лагода Лілія. All rights reserved.
//

import Foundation

class LoginCredentials: Credentials {
    let expectedEmail: String = "test@gmail.com"
    let expectedPassword: String = "12345678"
    
    override func validate() -> Bool {
        let isValid = super.validate()
        return isValid ?
        (self.email == expectedEmail && self.password == expectedPassword) : false
    }
}
