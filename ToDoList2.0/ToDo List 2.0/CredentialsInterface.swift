//
//  CredentialsInterface.swift
//  ToDo List 2.0
//
//  Created by Лагода Лілія on 31.10.2021.
//  Copyright © 2021 Лагода Лілія. All rights reserved.
//

import Foundation

protocol CredentialsInterface {
    var email: String? { get set }
    var password: String? { get set }
    
    func validate() -> Bool
}
