//
//  ProductTableViewCell.swift
//  fitApp
//
//  Created by Лагода Лілія on 23.11.2021.
//  Copyright © 2021 Лагода Лілія. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var dishNameLabel: UILabel!
    @IBOutlet weak var dishWeightLabel: UILabel!
    @IBOutlet weak var dishCaloriesLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        selectionStyle = .none
    }
    
    func fill(with model: Product) {
        dishNameLabel.text = model.name
        dishWeightLabel.text = "\(model.weight ?? 0)"
        dishCaloriesLabel.text = "\(model.calories ?? 0)"
    }
    
}
