//
//  NotificationViewController.swift
//  NotificationCenterUsage
//
//  Created by Yusuf Can Bircan on 18.01.2023.
//

import UIKit

class NotificationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendButton(_ sender: Any) {
        let person = Contacts(name: "Yusuf")
        
        NotificationCenter.default.post(name: .notificationName,
                                        object: nil,
                                        userInfo: ["message":"Hello", "date": Date(), "object": person])
        
        dismiss(animated: true)
    }
    

}
