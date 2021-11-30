//
//  AddDishesViewController.swift
//  fitApp
//
//  Created by Лагода Лілія on 21.11.2021.
//  Copyright © 2021 Лагода Лілія. All rights reserved.
//

import UIKit

class AddDishesViewController: UIViewController {

    var completion: ((Product) -> ())?
    
    var products: [Product] = UserManager.shared.user!.plan!.products
    
    @IBOutlet weak var addDishesTable: UITableView!
    
    override func viewDidLoad() {
            super.viewDidLoad()
            
            prepareTableView()
        }
        
        func prepareTableView(){
            addDishesTable.delegate = self
            addDishesTable.dataSource = self
            
            addDishesTable.register(.init(nibName: "ProductTableViewCell", bundle: nil), forCellReuseIdentifier: "ProductTableViewCell")
        }
    }


    extension AddDishesViewController: UITableViewDataSource, UITableViewDelegate {

        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return products.count
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
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            completion?(products[indexPath.row])
            self.dismiss(animated: true, completion: nil)
        }
    }
