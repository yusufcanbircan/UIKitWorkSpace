//
//  ViewController.swift
//  sqliteUsage
//
//  Created by Yusuf Can Bircan on 20.10.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        copyDatabase()
    }
    
    func copyDatabase() {
        let bundlePath = Bundle.main.path(forResource: "contactsFirst", ofType: ".sqlite")
        
        let destinationPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        
        let fileManager = FileManager.default
        
        let copyDestination = URL(fileURLWithPath: destinationPath).appendingPathExtension("contactsFirst.sqlite")
        
        if fileManager.fileExists(atPath: copyDestination.path) {
            print("file exist")
        } else {
            do {
                try fileManager.copyItem(atPath: bundlePath!, toPath: copyDestination.path)
            } catch {
                print(error)
            }
        }
    }
}
