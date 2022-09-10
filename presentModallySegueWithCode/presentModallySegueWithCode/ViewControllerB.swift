//
//  ViewControllerB.swift
//  presentModallySegueWithCode
//
//  Created by Yusuf Can Bircan on 10.09.2022.
//

import UIKit

class ViewControllerB: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    
    var message: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = message!
        
    }
    
}
