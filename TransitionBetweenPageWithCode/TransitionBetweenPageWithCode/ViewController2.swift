//
//  ViewController2.swift
//  TransitionBetweenPageWithCode
//
//  Created by Yusuf Can Bircan on 8.09.2022.
//

import UIKit

class ViewController2: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func dismissButton(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
}
