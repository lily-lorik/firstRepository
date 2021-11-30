//
//  WeightViewController.swift
//  fitApp
//
//  Created by Лагода Лілія on 25.11.2021.
//  Copyright © 2021 Лагода Лілія. All rights reserved.
//

import UIKit

class WeightViewController: UIViewController {

    @IBOutlet weak var weightPicker: UIPickerView!
    
    let pickerData: [Int] = Array(30...150)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.weightPicker.dataSource = self
        self.weightPicker.delegate = self
    }
}

extension WeightViewController: UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 121
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        UserManager.shared.user?.currentWeight! = pickerData[row]
    }
}

extension WeightViewController: UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(pickerData[row])"
    }
}
