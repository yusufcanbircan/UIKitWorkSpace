//
//  ViewController.swift
//  imageViewUsage
//
//  Created by Yusuf Can Bircan on 22.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func image1(_ sender: Any) {
        imageView.image = UIImage(named: "image1")
    }
    
    
    @IBAction func image2(_ sender: Any) {
        imageView.image = UIImage(named: "image2")
    }
    
}

