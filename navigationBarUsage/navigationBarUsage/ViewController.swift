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
        
        // adding an image to title
        /*
         let image = UIImage(named: "image")
         
         self.navigationItem.titleview = UIImageView(image: image)
         
         */
    }

    @IBAction func segmentedTapped(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            print("first tapped")
            
        case 1:
            print("second tapped")
            
        default:
            break
        }
    }
    
}

