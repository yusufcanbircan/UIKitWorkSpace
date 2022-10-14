//
//  UpdateViewController.swift
//  sampleContactApp
//
//  Created by Yusuf Can Bircan on 14.10.2022.
//

import UIKit

class UpdateViewController: UIViewController {
    
    let context = appDelegate.persistentContainer.viewContext
    
    @IBOutlet weak var updateNameTextField: UITextField!
    @IBOutlet weak var updateNumberTextField: UITextField!
    
    var person:Contact?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let person {
            updateNameTextField.text = person.person_name
            updateNumberTextField.text = person.person_number
        }
    }

    @IBAction func updateButtonTapped(_ sender: Any) {
        
        if let person, let name = updateNameTextField, let number = updateNumberTextField {
            person.person_name = name.text
            person.person_number = number.text
            
            appDelegate.saveContext()
            
        }
    }
    
    
}
