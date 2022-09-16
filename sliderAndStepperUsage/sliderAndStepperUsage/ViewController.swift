//
//  ViewController.swift
//  sliderAndStepperUsage
//
//  Created by Yusuf Can Bircan on 16.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var stepperLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func sliderAction(_ sender: UISlider) {
        sliderLabel.text = String(Int(sender.value))
    }
    
    @IBAction func stepperAction(_ sender: UIStepper) {
        stepperLabel.text = String(Int(sender.value))
    }
    
}

