//
//  ViewController.swift
//  TimerUsage
//
//  Created by Yusuf Can Bircan on 19.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var timer: Timer?
    var timerCounter: Int = 0
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    @IBAction func startButton(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeCount), userInfo: nil, repeats: true)
    }
    
    @objc func timeCount() {
        timerCounter += 1
        
        if timerCounter > 5 {
            timer?.invalidate()
            label.text = "Egg boiled!"
            slider.value = 0.0
            timerCounter = 0
        } else {
            slider.value = Float(timerCounter)
            label.text = "Boiling..."
        }
    }
}

