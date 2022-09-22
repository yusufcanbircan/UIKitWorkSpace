//
//  ViewController.swift
//  activityIndicatorUsage
//
//  Created by Yusuf Can Bircan on 22.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        activityIndicator.isHidden = true
    }
    
    @IBAction func startButton(_ sender: Any) {
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
        
    }
    
    @IBAction func stopButton(_ sender: Any) {
        activityIndicator.isHidden = true
        activityIndicator.stopAnimating()
    }
    
}

