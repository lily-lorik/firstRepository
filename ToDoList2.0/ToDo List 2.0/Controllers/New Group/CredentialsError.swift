//
//  CredentialsError.swift
//  ToDo List 2.0
//
//  Created by Лагода Лілія on 10.12.2021.
//  Copyright © 2021 Лагода Лілія. All rights reserved.
//

import Foundation

enum CredetialsError: Error {
    case wrongEmail
    case shortPassword
    case emptyFields
    case wrongCredentials
    
    var description: String{
        switch self{
        case .wrongEmail:
            return "You've entered wrong email"
        case .emptyFields:
            return "Fill in the fields"
        case .shortPassword:
            return "Your password is too short. Write at lest 8 characters"
        case .wrongCredentials:
            return "Wrong Credentials"
        }
    }
}
