//
//  ViewController.swift
//  datePickerUsage
//
//  Created by Yusuf Can Bircan on 30.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateTextField: UITextField!
    
    var datePicker: UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker = UIDatePicker()
        
        datePicker?.datePickerMode = .date
        dateTextField.inputView = datePicker
        
        datePicker?.addTarget(self, action: #selector(showDate(datePicker:)), for: .valueChanged)
        
        
        // close after an empty area tap
        let emptyTapped = UITapGestureRecognizer(target: self, action: #selector(closeAfterTapped))
        
        view.addGestureRecognizer(emptyTapped)
        
        
    }
    
    @objc func showDate(datePicker: UIDatePicker) {
        
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = "dd-MM-yyyy"
        
        let formattedDate = dateFormatter.string(from: datePicker.date)
        
        dateTextField.text = formattedDate
        
        //close after choosing
        //view.endEditing(true)
    }
    
    @objc func closeAfterTapped() {
        view.endEditing(true)
    }
   
}

