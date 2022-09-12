//
//  ViewController.swift
//  generallyUsedSegue
//
//  Created by Yusuf Can Bircan on 12.09.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func sendB(_ sender: Any) {
        let message = textField.text!
        
        performSegue(withIdentifier: "aTob", sender: message)
    }
    
    @IBAction func sendC(_ sender: Any) {
        let message = textField.text!
        
        performSegue(withIdentifier: "aToc", sender: message)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "aTob" {
            
            if let text = sender as? String {
                let vc = segue.destination as! ViewControllerB
                vc.modalPresentationStyle = .fullScreen
                vc.modalTransitionStyle = .coverVertical
                
                vc.messageB = text
            }
            
        }
        
        if segue.identifier == "aToc" {
            
            if let text = sender as? String {
                let vc = segue.destination as! ViewControllerC
                
                vc.messageC = text
            }
            
        }
    }
    
}

