//
//  ViewController.swift
//  navigationBarUsage
//
//  Created by Yusuf Can Bircan on 13.09.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Code"
        self.navigationItem.prompt = "With"
        
        self.navigationItem.largeTitleDisplayMode = .automatic
    }


}

