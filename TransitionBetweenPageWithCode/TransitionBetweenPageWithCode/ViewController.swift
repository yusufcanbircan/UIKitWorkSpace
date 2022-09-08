//
//  ViewController.swift
//  TransitionBetweenPageWithCode
//
//  Created by Yusuf Can Bircan on 8.09.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        
        let vc = ViewController2()
        vc.modalPresentationStyle = .automatic
        vc.modalTransitionStyle = .coverVertical
        present(vc, animated: true, completion: nil)
    }
    
}

