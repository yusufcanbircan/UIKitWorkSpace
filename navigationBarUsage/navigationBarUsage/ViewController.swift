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
        // custom navigation controller
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor.blue
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.navigationBar.barStyle = .black
        
        navigationController?.navigationBar.isTranslucent = true
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        
        
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

