//
//  Product.swift
//  fitApp
//
//  Created by Лагода Лілія on 18.11.2021.
//  Copyright © 2021 Лагода Лілія. All rights reserved.
//

import Foundation

class Product{
    var name: String?
    var weight: Double?
    var calories: Int?
    
    init(name: String?, weight: Double?, calories: Int?) {
        self.name = name
        self.weight = weight
        self.calories = calories
    }
}
