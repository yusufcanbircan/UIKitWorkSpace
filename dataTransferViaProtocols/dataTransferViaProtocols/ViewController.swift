//
//  ViewController.swift
//  dataTransferViaProtocols
//
//  Created by Yusuf Can Bircan on 25.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            let destinationVc = segue.destination as! DetailViewController
            destinationVc.protocolDelegate = self
        }
    }

    @IBAction func button(_ sender: Any) {
        performSegue(withIdentifier: "toDetail", sender: nil)
    }
    
}

extension ViewController: DetailsVCToViewControllerProtocol {
    func takeName(name: String) {
        label.text = name
    }
}

