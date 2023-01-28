//
//  ViewController.swift
//  genericTypeUsage
//
//  Created by Yusuf Can Bircan on 28.01.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(isEqual(1, 1))
        
    }
    
    func isEqual<T: Equatable> (_ value1: T, _ value2: T) -> Bool{
        let result = value1 == value2
        return result
    }

}


