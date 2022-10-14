//
//  AddViewController.swift
//  sampleContactApp
//
//  Created by Yusuf Can Bircan on 14.10.2022.
//

import UIKit

class AddViewController: UIViewController {
    
    let context = appDelegate.persistentContainer.viewContext
    
    @IBOutlet weak var addNameTextField: UITextField!
    @IBOutlet weak var addNumberTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addButtonTapped(_ sender: Any) {
        
        if let name = addNameTextField.text, let number = addNumberTextField.text {
            
            let person = Contact(context: context)
            
            person.person_name = name
            person.person_number = number
            
            appDelegate.saveContext()
        }
        
    }
}
