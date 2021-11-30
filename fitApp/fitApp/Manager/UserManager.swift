//
//  UserManager.swift
//  fitApp
//
//  Created by Лагода Лілія on 18.11.2021.
//  Copyright © 2021 Лагода Лілія. All rights reserved.
//

import Foundation

class UserManager {
    static let shared = UserManager()
    
    var user: User?
    
    var getWeightPlan: PlanModel = PlanModel.init(planType: "get Weight")
    var loseWeightPlan: PlanModel = PlanModel.init(planType: "lose Weight")
    var tropicalDiet: PlanModel = PlanModel.init(planType: "tropical Diet")
    var chocolateDiet: PlanModel = PlanModel.init(planType: "Chocolate diet")
    var vegetableDiet: PlanModel = PlanModel.init(planType: "vegetable Diet")
    
    func choosePlan(){
        guard let user = user else {return}
        let isNormalWeight: Bool = user.currentWeight! <= user.currentHeight! - 90 && user.currentWeight! >= user.currentHeight! - 120
        
        if isNormalWeight{
            user.plan = user.isGetWeight! ? getWeightPlan: loseWeightPlan
        }else{
            if user.currentWeight! <= user.currentHeight! - 120{
                user.plan = getWeightPlan
            } else if user.currentWeight! >= user.currentHeight! - 90{
                user.plan = loseWeightPlan
            }
        }
        calculate()
    }
    
    func calculate() {
        guard let user = user else {return}
        let daysOfDiet = user.period! * 30
        let caloriesInKilogram = 7716
        if user.isGetWeight! {
            let caloriesMustGet = (Int(user.currentWeight! - (user.currentHeight! - 120)) * caloriesInKilogram) / daysOfDiet
            let caloriesPerDay = user.calories! + caloriesMustGet
        } else {
            let caloriesToLose = (Int((user.currentHeight! - 90) - user.currentWeight!) * caloriesInKilogram) / daysOfDiet
            let caloriesPerDay = user.calories! - caloriesToLose
        }
    }
}
