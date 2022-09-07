//
//  ViewController.swift
//  viewController
//
//  Created by Yusuf Can Bircan on 7.09.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    
    
    @IBOutlet var labels: [UILabel]!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        label.text = "Hello"
        
        
    }
    
    
    @IBAction func button(_ sender: Any) {
        
        label.text = "has been touched"
        
    }
    
    

}

