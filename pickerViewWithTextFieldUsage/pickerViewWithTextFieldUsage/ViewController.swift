//
//  ViewController.swift
//  pickerViewWithTextFieldUsage
//
//  Created by Yusuf Can Bircan on 1.10.2022.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var textField: UITextField!
    
    var pickerView: UIPickerView?
    
    var countries:[String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries = ["Turkiye", "Germany", "England", "Usa", "Palestine", "France"]
        
        pickerViewShower()
        toolbarItemShower()
        
    }
    
    func pickerViewShower() {
        
        pickerView = UIPickerView()
        pickerView?.delegate = self
        pickerView?.dataSource = self
        
        textField.inputView = pickerView
        
    }
    
    func toolbarItemShower() {
        
        let toolbar = UIToolbar()
        toolbar.tintColor = UIColor.red
        toolbar.sizeToFit()
        
        let okeyButton = UIBarButtonItem(title: "Okey", style: .plain, target: self, action: #selector(self.okeyTapped))
        
        let space = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(self.cancelTapped))
        
        toolbar.setItems([cancelButton, space,okeyButton], animated: true)
        
        textField.inputAccessoryView = toolbar
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return countries.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return countries[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        textField.text = countries[row]
    }
    
    @objc func okeyTapped() {
        view.endEditing(true)
    }
    
    @objc func cancelTapped() {
        textField.text = ""
        textField.placeholder = "Country..."
        view.endEditing(true)
    }

}

