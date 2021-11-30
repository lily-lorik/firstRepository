//
//  HeightViewController.swift
//  fitApp
//
//  Created by Лагода Лілія on 25.11.2021.
//  Copyright © 2021 Лагода Лілія. All rights reserved.
//

import UIKit

class HeightViewController: UIViewController {

    @IBOutlet weak var heightPicker: UIPickerView!
    
    let pickerData: [Int] = Array(120...200)
        
        override func viewDidLoad() {
            super.viewDidLoad()

            self.heightPicker.dataSource = self
            self.heightPicker.delegate = self
        }
    }

extension HeightViewController: UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
        
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 81
    }
        
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        UserManager.shared.user!.currentHeight? = pickerData[row]
    }
}

extension HeightViewController: UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(pickerData[row])"
    }
}
