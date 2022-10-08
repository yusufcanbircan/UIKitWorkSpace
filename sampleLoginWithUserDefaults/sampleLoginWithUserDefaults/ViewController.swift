//
//  ViewController.swift
//  sampleLoginWithUserDefaults
//
//  Created by Yusuf Can Bircan on 8.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let user = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let username = user.string(forKey: "username") ?? "empty"
        let password = user.string(forKey: "password") ?? "empty"
        
        if username != "empty" && password != "empty" {
            performSegue(withIdentifier: "toHome", sender: nil)
        }
    }
    
    @IBAction func signInButton(_ sender: Any) {
        if let usernameText = usernameTextField.text, let passwordText = passwordTextField.text {
            if usernameText == "yusufcanbircan" && passwordText == "123456" {
                user.set(usernameText, forKey: "username")
                user.set(passwordText, forKey: "password")
                
                performSegue(withIdentifier: "toHome", sender: nil)
            } else {
                print("wrong username or password!")
            }
        }
    }
    
}

