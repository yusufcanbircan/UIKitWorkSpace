//
//  ViewController.swift
//  BackgroundModesUsage-AudioPlayer
//
//  Created by Yusuf Can Bircan on 18.01.2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            
            let bundlePath = Bundle.main.path(forResource: "music", ofType: ".mp3")
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: bundlePath!))
            audioPlayer.prepareToPlay()
            
        } catch {
            print(error.localizedDescription)
        }
    }


    @IBAction func playButton(_ sender: Any) {
        audioPlayer.play()
    }
    
    @IBAction func pauseButton(_ sender: Any) {
        audioPlayer.stop()
    }
    
}

