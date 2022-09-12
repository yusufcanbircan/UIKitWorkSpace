//
//  ViewControllerB.swift
//  generallyUsedSegue
//
//  Created by Yusuf Can Bircan on 12.09.2022.
//

import UIKit

class ViewControllerB: UIViewController {

    
    @IBOutlet weak var labelB: UILabel!
    
    var messageB: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelB.text = messageB!
    }
    

}
