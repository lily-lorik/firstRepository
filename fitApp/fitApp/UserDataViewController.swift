//
//  UserDataViewController.swift
//  fitApp
//
//  Created by Лагода Лілія on 17.11.2021.
//  Copyright © 2021 Лагода Лілія. All rights reserved.
//

import UIKit

class UserDataViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var currentWeightSlider: UISlider!
    @IBOutlet weak var currentWeightTextLabel: UILabel!
    @IBOutlet weak var currentHeightSlider: UISlider!
    @IBOutlet weak var currentHeightTextLabel: UILabel!
    @IBOutlet weak var currentCaloriesTextField: UITextField!
    @IBOutlet weak var goalSegment: UISegmentedControl!
    @IBOutlet weak var periodSlider: UISlider!
    @IBOutlet weak var periodTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeSliderValueAction(_ sender: Any) {
        guard let sender = sender as? UISlider else {return}
        
        switch sender {
        case currentHeightSlider:
            currentHeightTextLabel.text = "\(Int(sender.value))"
        case currentWeightSlider:
            currentWeightTextLabel.text = "\(Int(sender.value))"
        case periodSlider:
            periodTextLabel.text = "\(Int(sender.value))"
        default:
            currentHeightTextLabel.text = "\(Int(sender.value))"
            currentWeightTextLabel.text = "\(Int(sender.value))"
            periodTextLabel.text = "\(Int(sender.value))"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        UserManager.shared.user = User.init(name: nameTextField.text, phoneNumber: phoneNumberTextField.text, currentWeight: Double(currentWeightTextLabel.text!), currentHeight: Double(currentHeightTextLabel.text!), calories: Int(currentCaloriesTextField.text!), isGetWeight: goalSegment.selectedSegmentIndex == 0 ? true : false, period: Int(periodTextLabel.text!))
    UserManager.shared.choosePlan()
    }
    
}
