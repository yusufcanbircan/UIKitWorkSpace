//
//  DetailViewController.swift
//  dataTransferViaProtocols
//
//  Created by Yusuf Can Bircan on 25.01.2023.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var textField: UITextField!
    
    var protocolDelegate: DetailsVCToViewControllerProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func button(_ sender: Any) {
        
        if let str = textField.text {
            protocolDelegate?.takeName(name: str)
        }
    }
    
}
