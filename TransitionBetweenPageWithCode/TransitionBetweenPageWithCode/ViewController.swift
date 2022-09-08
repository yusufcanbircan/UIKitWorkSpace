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
        
        let storyboard = UIStoryboard(name:"Main", bundle: nil)
        
        let vc = storyboard.instantiateViewController(withIdentifier: "page2") as! ViewController2
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .coverVertical
        self.present(vc, animated: true)
        
    }
    
}

