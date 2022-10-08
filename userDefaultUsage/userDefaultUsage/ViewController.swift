//
//  ViewController.swift
//  userDefaultUsage
//
//  Created by Yusuf Can Bircan on 8.10.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let def = UserDefaults.standard
        
        
        def.set("ali", forKey: "name")
        def.set(15, forKey: "old")
        def.set(1.71, forKey: "height")
        def.set(true, forKey: "marriage")
        def.set(["yusuf", "cansu", "mehmet"], forKey: "friends")
        def.set(["16":"Bursa","68": "Aksaray"], forKey: "cities")
        
        print(def.string(forKey: "name") ?? "yok")
        print(def.integer(forKey: "old"))
        print(def.double(forKey: "height"))
        print(def.bool(forKey: "marriage"))
        
        
    }


}

