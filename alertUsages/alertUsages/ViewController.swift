//
//  ViewController.swift
//  alertUsages
//
//  Created by Yusuf Can Bircan on 29.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func simpleAlertTapped(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Alert", message: "This is a simple alert!", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { action in
            print("cancel action tapped")
        }
        alertController.addAction(cancelAction)
        
        let okeyAction = UIAlertAction(title: "Okey", style: .destructive) { action in
            print("okey action tapped")
        }
        alertController.addAction(okeyAction)
        
        self.present(alertController, animated: true)
        
        
    }
    
    @IBAction func customAlertTapped(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Custom Alert", message: "Your Information", preferredStyle: .alert)
        
        alertController.addTextField{ textField in
            textField.placeholder = "E-mail..."
            textField.keyboardType = .emailAddress
        }
        
        alertController.addTextField{ textField in
            textField.placeholder = "Password..."
            textField.isSecureTextEntry = true
        }
        
        let saveAction = UIAlertAction(title: "Save", style: .default) { action in
            let email = (alertController.textFields![0] as UITextField).text!
            let password = (alertController.textFields![1] as UITextField).text!
            
            self.label.text = "\(email) -- \(password)"
        }
        
        alertController.addAction(saveAction)
        
        self.present(alertController, animated: true)
        
        
    }
    
    @IBAction func actionAlertTapped(_ sender: Any) {
        let alertController = UIAlertController(title: "Action Sheet", message: "Your Information", preferredStyle: .actionSheet)
        
        let saveAction = UIAlertAction(title: "Save", style: .destructive) { action in
            
        }
        alertController.addAction(saveAction)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { action in
            
        }
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true)
    }
}

