//
//  ViewController.swift
//  toolbarUsage
//
//  Created by Yusuf Can Bircan on 15.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func backwardButtonTapped(_ sender: Any) {
        label.text = "Previous Song."
    }
    
    
    @IBAction func playButtonTapped(_ sender: Any) {
        label.text = "Playing..."
    }
    
    
    @IBAction func forwardButtonTapped(_ sender: Any) {
        label.text = "Next Song."
    }
    

}

