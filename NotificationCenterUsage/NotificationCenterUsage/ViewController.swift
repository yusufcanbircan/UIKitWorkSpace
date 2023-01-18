//
//  ViewController.swift
//  NotificationCenterUsage
//
//  Created by Yusuf Can Bircan on 18.01.2023.
//

import UIKit

extension Notification.Name {
    static let notificationName = Notification.Name("myBroadcast")
}

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(does(notification: )),
                                               name: .notificationName,
                                               object: nil)
    }
    
    @objc func does(notification: NSNotification) {
        let message = notification.userInfo?["message"]
        let date = notification.userInfo?["date"]
        let object = notification.userInfo?["object"] as! Contacts
        
        label.text = "\(object.name!) - \(message!) - \(date!)"
        
    }

    @IBAction func goButton(_ sender: Any) {
    }
    
}

