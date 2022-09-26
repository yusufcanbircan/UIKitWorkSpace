//
//  ViewController.swift
//  videoViewUsage
//
//  Created by Yusuf Can Bircan on 26.09.2022.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Play(_ sender: Any) {
        
        if let path = Bundle.main.path(forResource: "record", ofType: "mov"){
            let video = AVPlayer(url: URL(fileURLWithPath: path))
            
            let playerController = AVPlayerViewController()
            playerController.player = video
            
            present(playerController, animated: true){
                video.play()
            }
        }
        
    }
    
}

