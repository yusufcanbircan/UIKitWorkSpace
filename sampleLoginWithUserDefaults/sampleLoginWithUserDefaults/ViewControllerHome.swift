//
//  ViewControllerHome.swift
//  sampleLoginWithUserDefaults
//
//  Created by Yusuf Can Bircan on 8.10.2022.
//

import UIKit

class ViewControllerHome: UIViewController {
    
    let def = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true
    }

    @IBAction func logOutButton(_ sender: Any) {
        
        def.removeObject(forKey: "username")
        def.removeObject(forKey: "password")
        
        exit(-1)
        
    }
    
}
