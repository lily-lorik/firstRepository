//
//  CredentialController.swift
//  ToDo List 2.0
//
//  Created by Лагода Лілія on 10.12.2021.
//  Copyright © 2021 Лагода Лілія. All rights reserved.
//

import Foundation

class CredentialController {
    
    var credentials: Credentials
    let expectedCredentials: Credentials = .init(email: "test123@gmail.com", password: "2938475665")
    
    init(credentials: Credentials) {
        self.credentials = credentials
    }
    
    func validate() throws {
        if let email = credentials.email,
            let password = credentials.password {
            if email.contains("@") {
                if password.count >= 8 {
                    print("Succesful login")
                } else {
                    print("Autentification failed. Password must have at least  8 symbols")
                    throw CredetialsError.shortPassword
                }
            } else{
                print("Autentification failed. Wrong email")
                throw CredetialsError.wrongEmail
            }
        } else {
            print("Fill in fields")
            throw CredetialsError.emptyFields
        }
    }
    
    func checkCredentials() throws {
        if credentials.email == expectedCredentials.email && credentials.password == credentials.password {
            
        } else {throw CredetialsError.wrongCredentials}
    }
}
