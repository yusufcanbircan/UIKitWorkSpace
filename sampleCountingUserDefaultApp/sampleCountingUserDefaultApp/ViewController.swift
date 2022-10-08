//
//  ViewController.swift
//  sampleCountingUserDefaultApp
//
//  Created by Yusuf Can Bircan on 8.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var countLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let def = UserDefaults.standard
        
        var counter = def.integer(forKey: "count")
        
        counter += 1
        
        def.set(counter, forKey: "count")
        
        countLabel.text = "Counter : \(counter)"
    }


}

