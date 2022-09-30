//
//  ViewController.swift
//  timePickerUsage
//
//  Created by Yusuf Can Bircan on 30.09.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timeTextField: UITextField!
    
    var timePicker: UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timePicker = UIDatePicker()
        timePicker?.datePickerMode = .time
        timeTextField.inputView = timePicker
        
        timePicker?.addTarget(self, action: #selector(showTime(timePicker:)), for: .valueChanged)
        
        
        
        
    }
    
    @objc func showTime(timePicker: UIDatePicker) {
        
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = "hh:mm"
        
        let formattedTime = dateFormatter.string(from: timePicker.date)
        
        timeTextField.text = formattedTime
        
        view.endEditing(true)
    }


}

