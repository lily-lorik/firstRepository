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
    @IBOutlet weak var eatenProductsTable: UITableView!
    @IBOutlet weak var totalCaloriesLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = UserManager.shared.user!.plan!.products[indexPath.row]
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return UserManager.shared.user!.plan!.products.count
    }
}
