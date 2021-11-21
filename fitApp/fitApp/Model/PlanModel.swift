//
//  PlanModel.swift
//  fitApp
//
//  Created by Лагода Лілія on 18.11.2021.
//  Copyright © 2021 Лагода Лілія. All rights reserved.
//

import Foundation

class PlanModel {
    var products: [Product] = []
    var planType: String
    
    init(planType: String) {
        self.planType = planType
    }
    
    func createPlan(){
        switch planType {
        case "get Weight":
            products = [
            .init(name: "Banana", weight: 50.0, calories: 80),
            .init(name: "Salo", weight: 50.0, calories: 150),
            .init(name: "Fried Egg", weight: 50.0, calories: 120),
            .init(name: "Mayonese", weight: 10, calories: 50),
            .init(name: "Bread", weight: 50.0, calories: 98),
            .init(name: "Potato", weight: 200.0, calories: 500),
            .init(name: "Sugar", weight: 40.0, calories: 80),
            .init(name: "Pork", weight: 300.0, calories: 500),
            .init(name: "Chips", weight: 100, calories: 230),
            .init(name: "Pizza", weight: 200, calories: 400),
            .init(name: "Nuggets", weight: 100, calories: 250)]
        case "tropical Diet":
            products = [
            .init(name: "Banana", weight: 50.0, calories: 80),
            .init(name: "Mango", weight: 50.0, calories: 150),
            .init(name: "Pineapple", weight: 50.0, calories: 120),
            .init(name: "Coconut", weight: 10, calories: 50),
            .init(name: "Grapefruit", weight: 50.0, calories: 98),
            .init(name: "Dragon fruit", weight: 200.0, calories: 500),
            .init(name: "Avocado", weight: 40.0, calories: 80),
            .init(name: "Melon", weight: 300.0, calories: 500),
            .init(name: "Passion fruit", weight: 100, calories: 230),
            .init(name: "Papaya", weight: 200, calories: 400),
            .init(name: "Starfruit", weight: 100, calories: 250)]
        case "Chocolate diet":
            products = [.init(name: "Chocolate", weight: 50.0, calories: 275)]
        case "vegetable Diet":
            products = [
            .init(name: "Tomato", weight: 50.0, calories: 80),
            .init(name: "Cucumber", weight: 50.0, calories: 150),
            .init(name: "Cabbage", weight: 50.0, calories: 120),
            .init(name: "Bolgarian pepper", weight: 10, calories: 50),
            .init(name: "Carrot", weight: 50.0, calories: 98),
            .init(name: "Potato", weight: 200.0, calories: 500),
            .init(name: "Salad", weight: 40.0, calories: 80),
            .init(name: "Broccoli", weight: 300.0, calories: 500),
            .init(name: "Garlic", weight: 100, calories: 230),
            .init(name: "Cocoa bob", weight: 200, calories: 400),
            .init(name: "Beetroot", weight: 100, calories: 250)]
        case "lose Weight":
            products = [
            .init(name: "Apple", weight: 100.0, calories: 52),
            .init(name: "Salad", weight: 150.0, calories: 40),
            .init(name: "Boiled Egg", weight: 50.0, calories: 80),
            .init(name: "Coconut oil", weight: 10, calories: 10),
            .init(name: "Nuts", weight: 50.0, calories: 98),
            .init(name: "Oat meal", weight: 200.0, calories: 350),
            .init(name: "Cheese", weight: 40.0, calories: 60),
            .init(name: "Fish", weight: 100.0, calories: 200),
            .init(name: "Cucumber", weight: 50, calories: 30),
            .init(name: "Linen seeds", weight: 20, calories: 50),
            .init(name: "Cottage cheese", weight: 100, calories: 250)]
        default:
            return
        }
    }
}
