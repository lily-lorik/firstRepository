//
//  UserModel.swift
//  fitApp
//
//  Created by Лагода Лілія on 17.11.2021.
//  Copyright © 2021 Лагода Лілія. All rights reserved.
//

import Foundation

class User{
    var name: String?
    var phoneNumber: String?
    var currentWeight: Double?
    var currentHeight: Double?
    var calories: Int?
    var isGetWeight: Bool?
    var period: Int?
    var plan: PlanModel?
    
    
    init(name: String?, phoneNumber: String?, currentWeight: Double?, currentHeight: Double?, calories: Int?, isGetWeight: Bool?, period: Int?) {
        self.name = name
        self.phoneNumber = phoneNumber
        self.currentWeight = currentWeight
        self.currentHeight = currentHeight
        self.calories = calories
        self.isGetWeight = isGetWeight
        self.period = period
    }
}
