//
//  ViewController.swift
//  SampleApp
//
//  Created by ITC Infotech on 05/07/17.
//  Copyright © 2018 Rahul Patil. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITextFieldDelegate {
    
    let textField_Date = UITextField()
    var datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // customize textfield
        textField_Date.frame = CGRect(x: 40, y: 120, width: 200, height: 35)
        textField_Date.placeholder = "Click here to set date."
        textField_Date.textAlignment = .center
        
        self.textField_Date.delegate = self
        
        self.view.addSubview(textField_Date)
    }
    
    func pickUpDate(_ textField : UITextField){
        
        // DatePicker
        self.datePicker.backgroundColor = UIColor.white
        self.datePicker.datePickerMode = UIDatePickerMode.date
        textField.inputView = self.datePicker
        
        // ToolBar
        let toolBar = UIToolbar()
        toolBar.barStyle = .default
        toolBar.isTranslucent = true
        toolBar.tintColor = UIColor(red: 92/255, green: 216/255, blue: 255/255, alpha: 1)
        toolBar.sizeToFit()
        
        // Adding Button ToolBar
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(ViewController.doneClick))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(ViewController.cancelClick))
        toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        textField.inputAccessoryView = toolBar
    }
    
    @objc func doneClick() {
        let dateFormatter1 = DateFormatter()
        dateFormatter1.dateStyle = .medium
        dateFormatter1.timeStyle = .none
        textField_Date.text = dateFormatter1.string(from: datePicker.date)
        textField_Date.resignFirstResponder()
    }
    
    @objc func cancelClick() {
        textField_Date.resignFirstResponder()
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.pickUpDate(self.textField_Date)
    }
}























