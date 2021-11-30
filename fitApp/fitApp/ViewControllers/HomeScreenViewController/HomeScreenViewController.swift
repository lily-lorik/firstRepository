//
//  HomeScreenViewController.swift
//  fitApp
//
//  Created by Лагода Лілія on 21.11.2021.
//  Copyright © 2021 Лагода Лілія. All rights reserved.
//

import UIKit

class HomeScreenViewController: UIViewController {

    @IBOutlet weak var planProductsTable: UITableView!
    @IBOutlet weak var totalCaloriesLabel: UILabel!
    
    var products = UserManager.shared.user!.plan!.products
    var listOfEatenProducts: [Product] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        prepareTableView()
        planProductsTable.isEditing = true
        
        totalCaloriesLabel.text = "Total Calories: \(self.calculateTotalCalories())"
    }
    
    func prepareTableView(){
        planProductsTable.delegate = self
        planProductsTable.dataSource = self
        
        planProductsTable.register(.init(nibName: "ProductTableViewCell", bundle: nil), forCellReuseIdentifier: "ProductTableViewCell")
    }
    
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
    if let vc = segue.destination as? AddDishesViewController {
        vc.completion = { (product) in
            self.listOfEatenProducts.append(product)
            self.planProductsTable.reloadData()
        }
        }
    }
    
    func calculateTotalCalories() -> Int {
        return listOfEatenProducts.map({($0.calories!)}).reduce(0, +)
    }
}

extension HomeScreenViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return products.count
        } else {
            return listOfEatenProducts.count
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Your meal plan"
        } else {
            return "Todays meal"
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell", for: indexPath) as!
        ProductTableViewCell
        cell.fill(with: products[indexPath.row])
    return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
