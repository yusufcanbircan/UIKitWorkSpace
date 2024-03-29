//
//  ViewController.swift
//  presentModallySegueWithCode
//
//  Created by Yusuf Can Bircan on 10.09.2022.
//

import UIKit

class ViewControllerA: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sendButton(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc = storyboard.instantiateViewController(withIdentifier: "pageB") as! ViewControllerB
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .coverVertical
        
        
        vc.message = textField.text!
        
        let person = Person(name: "yusuf", id: 19)
        
        vc.person = person
        
        
        
        // with present modally
        //self.present(vc, animated: true, completion: nil)
        
        // with navigation show segue
        self.navigationController?.pushViewController(vc, animated: true)
        
        
        
    }
    
}

