//
//  TaskViewController.swift
//  ToDo List 2.0
//
//  Created by Лагода Лілія on 26.10.2021.
//  Copyright © 2021 Лагода Лілія. All rights reserved.
//

import UIKit

class TaskViewController: BaseViewController, UITextFieldDelegate, UITextViewDelegate {

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var detailsTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleTextField.delegate = self
        detailsTextView.delegate = self
        
        let tapGesture = UITapGestureRecognizer.init(target: self, action: #selector(hideKeyboard))
        view.isUserInteractionEnabled = true
        view.addGestureRecognizer(tapGesture)
        
        let editTextView = UITapGestureRecognizer.init(target: self, action: #selector(hideKeyboard))
        detailsTextView.isUserInteractionEnabled = true
        detailsTextView.addGestureRecognizer(editTextView)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return true
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        textView.isEditable = false
    }
    
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
    
    @objc func editTextView(){
        detailsTextView.isEditable = true
        detailsTextView.becomeFirstResponder()
    }

}
