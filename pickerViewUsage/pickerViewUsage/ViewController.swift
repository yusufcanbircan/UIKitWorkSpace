//
//  ViewController.swift
//  pickerViewUsage
//
//  Created by Yusuf Can Bircan on 1.10.2022.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    var countries: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries = ["Turkiye", "Germany", "England", "Usa", "Palestine", "France"]
        
        pickerView.dataSource = self
        pickerView.delegate = self
        
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
        label.text = countries[row]
    }
}

