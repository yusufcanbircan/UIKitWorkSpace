//
//  ViewController.swift
//  switchSegmentedUsage
//
//  Created by Yusuf Can Bircan on 16.09.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func switchButton(_ sender: UISwitch) {
        
        if sender.isOn {
            label.text = "Switch is on"
        } else {
            label.text = "Switch is off"
        }
        
    }
    
    @IBAction func segmentedButton(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            label.text = "Segmented first tapped"
        }
        else if sender.selectedSegmentIndex == 1 {
            label.text = "Segmented second tapped"
        }
        
    }
}

