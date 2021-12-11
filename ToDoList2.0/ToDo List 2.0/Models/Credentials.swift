//
//  Credentials.swift
//  ToDo List 2.0
//
//  Created by Лагода Лілія on 27.10.2021.
//  Copyright © 2021 Лагода Лілія. All rights reserved.
//

import Foundation

class Credentials {
    var email: String?
    var password: String?
    
    init(email: String?, password: String?){
        self.email = email
        self.password = password
    }
}
