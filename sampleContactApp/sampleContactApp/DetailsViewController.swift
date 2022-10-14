//
//  DetailsViewController.swift
//  sampleContactApp
//
//  Created by Yusuf Can Bircan on 14.10.2022.
//

import UIKit

class DetailsViewController: UIViewController {
    
    let context = appDelegate.persistentContainer.viewContext
    
    @IBOutlet weak var detailsNameLabel: UILabel!
    @IBOutlet weak var detailsNumberLabel: UILabel!
    
    var person:Contact?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        if let person {
            detailsNameLabel.text = person.person_name
            detailsNumberLabel.text = person.person_number
        }
    }

}
